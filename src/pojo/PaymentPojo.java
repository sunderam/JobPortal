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
public class PaymentPojo {
    
    private String paymentid;
     private int totalamount;
      private String paiddate;

    /**
     * @return the paymentid
     */
    public String getPaymentid() {
        return paymentid;
    }

    /**
     * @param paymentid the paymentid to set
     */
    public void setPaymentid(String paymentid) {
        this.paymentid = paymentid;
    }

    /**
     * @return the totalamount
     */
    public int getTotalamount() {
        return totalamount;
    }

    /**
     * @param totalamount the totalamount to set
     */
    public void setTotalamount(int totalamount) {
        this.totalamount = totalamount;
    }

    /**
     * @return the paiddate
     */
    public String getPaiddate() {
        return paiddate;
    }

    /**
     * @param paiddate the paiddate to set
     */
    public void setPaiddate(String paiddate) {
        this.paiddate = paiddate;
    }
                       
}
