package hunkydory.ui.order;

import hunkydory.dao.OrderDAO;
import hunkydory.model.Order;
import hunkydory.ui.MainScreen;
import javafx.beans.property.SimpleObjectProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Priority;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.time.format.DateTimeFormatter;
import java.util.List;

public class OrderScreen extends VBox {
    private final TableView<Order> tableView;
    private final ObservableList<Order> data;
    private final OrderDAO orderDAO = new OrderDAO();

    public OrderScreen(Stage mainStage) {
        setSpacing(10);
        setPadding(new Insets(10));

        Label title = new Label("Histórico de Pedidos");
        title.setStyle("-fx-font-size: 14px; -fx-font-weight: bold;");
        VBox.setMargin(title, new Insets(0, 0, 5, 0));

        tableView = new TableView<>();
        data = FXCollections.observableArrayList();
        tableView.setItems(data);

        TableColumn<Order, Integer> colID = new TableColumn<>("ID");
        colID.setCellValueFactory(cellData ->
                new SimpleObjectProperty<>(cellData.getValue().getOrderID()));
        colID.setPrefWidth(50);

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        TableColumn<Order, String> colDate = new TableColumn<>("Data do Pedido");
        colDate.setCellValueFactory(cellData ->
                new SimpleObjectProperty<>(cellData.getValue().getOrderDate().format(dtf)));

        TableColumn<Order, String> colStatus = new TableColumn<>("Status");
        colStatus.setCellValueFactory(cellData ->
                new SimpleObjectProperty<>(cellData.getValue().getStatus()));

        TableColumn<Order, Integer> colCustomerID = new TableColumn<>("ID Cliente");
        colCustomerID.setCellValueFactory(cellData ->
                new SimpleObjectProperty<>(cellData.getValue().getCustomerID()));

        //noinspection unchecked
        tableView.getColumns().addAll(colID, colDate, colStatus, colCustomerID);
        tableView.setColumnResizePolicy(TableView.UNCONSTRAINED_RESIZE_POLICY);
        VBox.setVgrow(tableView, Priority.ALWAYS);

        Button btnNew = new Button("Novo Pedido");
        btnNew.setOnAction(e -> openForm(null));

        Button btnEdit = new Button("Editar");
        btnEdit.setOnAction(e -> {
            Order selected = tableView.getSelectionModel().getSelectedItem();
            if (selected != null) {
                openForm(selected);
            } else {
                showAlert("Por favor, selecione um pedido para editar.");
            }
        });

        Button btnDelete = new Button("Excluir");
        btnDelete.setOnAction(e -> {
            Order selected = tableView.getSelectionModel().getSelectedItem();
            if (selected != null) {
                boolean ok = orderDAO.delete(selected.getOrderID());
                if(ok) {
                    showAlert("Pedido excluído.");
                    loadData();
                } else {
                    showAlert("Erro ao excluír pedido");
                }
            } else {
                showAlert("Por favor, selecione um pedido para excluir.");
            }
        });

        Button btnManageItems = new Button("Gerenciar Itens");
        btnManageItems.setOnAction(e -> {
            Order selected = tableView.getSelectionModel().getSelectedItem();
            if(selected != null) {
                OrderItemScreen itemScreen = new OrderItemScreen(selected.getOrderID());
                itemScreen.showAndWait();
            } else {
                showAlert("Por favor, selecione um pedido para editar os itens.");
            }
        });

        Button btnBack = new Button("Voltar");
        btnBack.setOnAction(e -> mainStage.getScene().setRoot(new MainScreen(mainStage)));

        HBox hboxButtons = new HBox(10, btnNew, btnEdit, btnDelete, btnManageItems, btnBack);
        hboxButtons.setAlignment(Pos.CENTER);

        getChildren().addAll(title, tableView, hboxButtons);
        loadData();
    }

    private void loadData() {
        data.clear();
        List<Order> list = orderDAO.listAll();
        data.addAll(list);
    }

    private void openForm(Order order) {
        OrderForm form = new OrderForm(order, orderDAO);
        form.setOnSave(this::loadData);
        form.showAndWait();
    }

    private void showAlert(String msg) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION, msg, ButtonType.OK);
        alert.showAndWait();
    }
}
