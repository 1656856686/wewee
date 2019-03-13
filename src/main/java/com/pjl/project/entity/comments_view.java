package com.pjl.project.entity;

public class comments_view {

    private  Integer cm_id;
    private  String  cm_content;
    private  String ps_name;
    private  Double ps_money;
    private  Integer ps_type;
    private  Integer ps_id;
    private  String ps_address;
    private Integer us_id;
    private String us_name;
    private String us_phone;
    private Double us_money;


    public comments_view(Integer cm_id, String cm_content, String ps_name, Double ps_money, Integer ps_type, Integer ps_id, String ps_address, Integer us_id, String us_name, String us_phone, Double us_money) {
        this.cm_id = cm_id;
        this.cm_content = cm_content;
        this.ps_name = ps_name;
        this.ps_money = ps_money;
        this.ps_type = ps_type;
        this.ps_id = ps_id;
        this.ps_address = ps_address;
        this.us_id = us_id;
        this.us_name = us_name;
        this.us_phone = us_phone;
        this.us_money = us_money;
    }
    public comments_view(){
        super();
    }

    public Integer getCm_id() {
        return cm_id;
    }

    public void setCm_id(Integer cm_id) {
        this.cm_id = cm_id;
    }

    public String getCm_content() {
        return cm_content;
    }

    public void setCm_content(String cm_content) {
        this.cm_content = cm_content;
    }

    public String getPs_name() {
        return ps_name;
    }

    public void setPs_name(String ps_name) {
        this.ps_name = ps_name;
    }

    public Double getPs_money() {
        return ps_money;
    }

    public void setPs_money(Double ps_money) {
        this.ps_money = ps_money;
    }

    public Integer getPs_type() {
        return ps_type;
    }

    public void setPs_type(Integer ps_type) {
        this.ps_type = ps_type;
    }

    public Integer getPs_id() {
        return ps_id;
    }

    public void setPs_id(Integer ps_id) {
        this.ps_id = ps_id;
    }

    public String getPs_address() {
        return ps_address;
    }

    public void setPs_address(String ps_address) {
        this.ps_address = ps_address;
    }

    public Integer getUs_id() {
        return us_id;
    }

    public void setUs_id(Integer us_id) {
        this.us_id = us_id;
    }

    public String getUs_name() {
        return us_name;
    }

    public void setUs_name(String us_name) {
        this.us_name = us_name;
    }

    public String getUs_phone() {
        return us_phone;
    }

    public void setUs_phone(String us_phone) {
        this.us_phone = us_phone;
    }

    public Double getUs_money() {
        return us_money;
    }

    public void setUs_money(Double us_money) {
        this.us_money = us_money;
    }

    @Override
    public String toString() {
        return "comments_view{" +
                "cm_id=" + cm_id +
                ", cm_content='" + cm_content + '\'' +
                ", ps_name='" + ps_name + '\'' +
                ", ps_money=" + ps_money +
                ", ps_type=" + ps_type +
                ", ps_id=" + ps_id +
                ", ps_address='" + ps_address + '\'' +
                ", us_id=" + us_id +
                ", us_name='" + us_name + '\'' +
                ", us_phone='" + us_phone + '\'' +
                ", us_money=" + us_money +
                '}';
    }
}
