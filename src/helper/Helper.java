package helper;

import javafx.scene.Scene;

public class Helper {
	
	public void loadStylesheet(String path, Scene scene) {
		
		scene.getStylesheets().add(getClass().getResource(path).toExternalForm());
		
	}
	
}
