/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author Dnyaneshwar
 */
public class LoginClient {
    private int loginid;
    private  String user;
     private  String pass;

    /**
     * @return the loginid
     */
    public int getLoginid() {
        return loginid;
    }

    /**
     * @param loginid the loginid to set
     */
    public void setLoginid(int loginid) {
        this.loginid = loginid;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }
    
}
