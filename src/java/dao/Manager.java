/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;

/**
 *
 * @author al-am
 */
public final class Manager {

    private static ArrayList<Contact> contacts = new ArrayList<Contact>();

    private static void init() {
        Contact c1 = new Contact("Owain", "James", "0123456", "Paris");
        Contact c2 = new Contact("Clara", "Kent", "0145687", "Lyon");
        Contact c3 = new Contact("John", "Doe", "123456", "Nice");
        Contact c4 = new Contact("Max", "Boss", "123456", "Paris");

        // ajouter les contacts     
        contacts.add(c1);
        contacts.add(c2);
        contacts.add(c3);
        contacts.add(c4);
    }

    public static ArrayList<Contact> getAllContacts() {
        if (contacts.isEmpty()) {
            init();
        }
        System.out.println(contacts.size());
        return contacts;
    }
}