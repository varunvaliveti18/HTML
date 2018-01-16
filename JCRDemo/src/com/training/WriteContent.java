package com.training;

import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.core.TransientRepository;

public class WriteContent {

	public static void main(String[] args) throws LoginException, RepositoryException {
		Repository repo = new TransientRepository();
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root = sess.getRootNode();
		Node courses = root.addNode("courses");
		Node java = courses.addNode("java");
		Node jee = courses.addNode("jee");
		java.setProperty("what is java", "java is an OOP language");
		java.setProperty("Features of java", "Functional Programming, Streams, Inheritance, Ploymorphism");
		java.setProperty("data-types","int-4 bytes,byte-1byte,double-4bytes");
		jee.setProperty("Life Cycle of Servlet",
				"init() and destroy() fires only once and service() can be fired everytime for the request");
		jee.setProperty("Implicit Objects",
				"application,session,request,response,config,page,pageContext,exception,out");
		sess.save();
		System.out.println("Content Published");
		sess.logout();

	}

}
