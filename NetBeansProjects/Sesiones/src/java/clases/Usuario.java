/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Date;

/**
 *
 * @author xubuntu
 */
public class Usuario {
    String name;
    String pass;
    int credit;
    Date date;
    String roll;

    public Usuario() {

    }

    public Usuario(String name, String pass, int credit, Date date, String roll) {
        this.name = name;
        this.pass = pass;
        this.credit = credit;
        this.date = date;
        this.roll = roll;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRoll() {
        return roll;
    }

    public void setRoll(String roll) {
        this.roll = roll;
    }

    @Override
    public String toString() {
        return "Usuario{" + "name=" + name + ", pass=" + pass + ", credit=" + credit + ", date=" + date + ", roll=" + roll + '}';
    }

    
    
    
}
