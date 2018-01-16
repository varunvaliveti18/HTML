package com.training;

import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.PropertyIterator;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;

public class ReadContent {

	public static void main(String[] args) throws LoginException, RepositoryException {
		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node pk = sess.getNode("/film/Tollywood/Agnyathavaasi");
		PropertyIterator it = pk.getProperties();
		Property prop =null;
		while(it.hasNext()){
			prop = (Property)it.next();
			System.out.println(prop.getName() + "--->" + prop.getString());
			
		}
		sess.logout();

	}

}
