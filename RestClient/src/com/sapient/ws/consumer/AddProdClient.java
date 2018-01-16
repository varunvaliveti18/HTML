package com.sapient.ws.consumer;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

import com.sun.jersey.api.representation.Form;

public class AddProdClient {

	public static void main(String[] args) {
		ClientConfig cfg = new ClientConfig().register(new JacksonJsonProvider());
		Client client = ClientBuilder.newClient(cfg);
		
		WebTarget target = client.target("http://10.151.60.215:8082/RestWS/rest/add");
				
		
		Invocation.Builder ib = target.request();
		javax.ws.rs.core.Form frm = new javax.ws.rs.core.Form();
		frm.param("pid", "1755");
		frm.param("pname", "nokia 1100");
		frm.param("price", "5500");
		
		Entity entity = Entity.entity(frm, MediaType.APPLICATION_FORM_URLENCODED);
		String res = ib.post(entity,String.class);
		System.out.println(res);

	}

}
