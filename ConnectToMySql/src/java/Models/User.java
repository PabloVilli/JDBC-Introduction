/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author PCHP
 */
public class User {

    private String user, pass, msj;

    public User() {
        this.user = "";
        this.pass = "";
    }

    public User(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }

    public String getUser() {
        return this.user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public String getPass() {
        return this.pass;
    }
    
    public void setPass(String pass){
        this.pass = user;
    }
}