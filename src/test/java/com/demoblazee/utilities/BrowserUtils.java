package com.demoblazee.utilities;

import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

public class BrowserUtils {
    public static void sleep(int second) {
        second *= 1000;
        try {
            Thread.sleep(second);
        } catch (InterruptedException e) {
            System.out.println("Something hapend in the sleep method");
        }
    }


    public static List<String> getElementsText(List<WebElement> list) {

        List<String> elemText = new ArrayList<>();
        for (WebElement webElement : list) {
            elemText.add(webElement.getText());
        }
        return elemText;
    }


}
