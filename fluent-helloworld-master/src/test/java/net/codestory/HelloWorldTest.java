package net.codestory;

import net.codestory.http.*;
import net.codestory.simplelenium.*;

import org.junit.*;

public class HelloWorldTest extends SeleniumTest {
  private WebServer webServer = new WebServer().startOnRandomPort();

  @Override
  public String getDefaultBaseUrl() {
    return "http://localhost:" + webServer.port();
  }

  @Test
  public void display_hello_world() {
    goTo("/");

    find(".jumbotron h1").should().contain("Hello, world!");
    find(".jumbotron p").should().contain("This is a very basic sample of web application");
  }
}
