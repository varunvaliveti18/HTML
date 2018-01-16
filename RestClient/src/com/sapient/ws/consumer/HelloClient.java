package com.sapient.ws.consumer;

import java.util.Map;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

public class HelloClient {

	public static void main(String[] args) {
	
		ClientConfig cfg = new ClientConfig().register(new JacksonJsonProvider());
		Client client = ClientBuilder.newClient(cfg);
		
		WebTarget target = client.target("http://localhost:8082/RestWS/rest/helloplain").queryParam("name", " varun");
		Invocation.Builder ib = target.request();
		String res = ib.get(String.class);
		System.out.println(res);
		System.out.println("----------------------");
		target = client.target("http://localhost:8082/RestWS/rest/hellohtml").queryParam("name", " varun");
		ib = target.request();
		 res = ib.get(String.class);
		 System.out.println(res);
		 System.out.println("---------------------------------------------");
		 target = client.target("http://localhost:8082/RestWS/rest/hellojson").path(" varun");
		 ib = target.request();
		Map map = ib.get(Map.class);
		 System.out.println(map.get("msg") + " " + map.get("ename"));
	}

}
