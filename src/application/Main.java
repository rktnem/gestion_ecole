package application;

import helper.Helper;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {

	@Override
	public void start(Stage primaryStage) throws Exception {
		Helper helper = new Helper();
		
		
		// TODO Auto-generated method stub
		try {
			Parent root = FXMLLoader.load(getClass().getResource("/view/root/root.fxml"));               
			Scene scene = new Scene(root);
			
			// Initialize all stylesheet
			helper.loadStylesheet("/style/partials/sidebar.css", scene);
			helper.loadStylesheet("/style/home/home.css", scene);
			helper.loadStylesheet("/style/student/student.css", scene);
			
			primaryStage.setScene(scene);
			primaryStage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		launch(args);
	}


}
