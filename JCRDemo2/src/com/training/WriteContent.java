package com.training;

import javax.jcr.Node;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;

public class WriteContent {

	public static void main(String[] args) throws RepositoryException {
		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root = sess.getRootNode();
		Node film = root.addNode("film");
		Node Bwood = film.addNode("Bollywood");
		Node Twood = film.addNode("Tollywood");
		Node padmaavat = Bwood.addNode("Padmaavat");
		padmaavat.setProperty("Review by NDTV", "Epic Drama");
		padmaavat.setProperty("Review by Rediff", "Musical journey well blended with Emotions");
		
		Node pk  = Twood.addNode("Agnyathavaasi");
		pk.setProperty("Review by GreatAndhra", "Big Disappointment");
		pk.setProperty("Review by 123Telugu", "very Boring Fare Throughout");
		
		sess.save();
		sess.logout();
		System.out.println("content published");

	}

}
