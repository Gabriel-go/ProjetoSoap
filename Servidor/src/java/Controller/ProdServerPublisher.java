/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.xml.ws.Endpoint;

/**
 *
 * @author Gabriel
 */
public class ProdServerPublisher {
      public static void main(String[] args)
  {
    Endpoint.publish("http://127.0.0.1:9870/Controller",
    new ProdServerImpl());
  }
    
}
