package controller;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.control.Button;
import javafx.scene.layout.BorderPane;

public class RootController implements Initializable {
	
	@FXML
	BorderPane borderPane; 
	
	@FXML
	Button homeSideMenu;
	
	@FXML
	Button studentSideMenu;
	
	@FXML
	Button ecolageSideMenu;
	
	Parent fxml;

	public void home() throws IOException {
		fxml = FXMLLoader.load(getClass().getResource("/view/home/home.fxml"));
		borderPane.setCenter(fxml);
	
		studentSideMenu.getStyleClass().remove("active");
		ecolageSideMenu.getStyleClass().remove("active");
		
		if (!homeSideMenu.getStyleClass().contains("active")) {
			homeSideMenu.getStyleClass().add("active");
		}
	}
	
	public void listStudent() throws IOException {
		fxml = FXMLLoader.load(getClass().getResource("/view/student/listStudent.fxml"));
		borderPane.setCenter(fxml);
		
		homeSideMenu.getStyleClass().remove("active");
		ecolageSideMenu.getStyleClass().remove("active");
		
		if (!studentSideMenu.getStyleClass().contains("active")) {
			studentSideMenu.getStyleClass().add("active");
		}
	}
	
	@Override
	public void initialize(URL arg0, ResourceBundle arg1) {
		// TODO Auto-generated method stub
		homeSideMenu.getStyleClass().add("active");
	}
	
}
