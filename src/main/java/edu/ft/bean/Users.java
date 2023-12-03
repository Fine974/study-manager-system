package edu.ft.bean;

public class Users {

    private int uid;
    private String uname;
    private String uemail;
    private String upsw;
    private int utype;

    // 构造方法绝对不允许修改，只允许增加
    public Users() {
    }

    public Users(String uname, String upsw) {
        this.uname = uname;
        this.upsw = upsw;
    }

    public Users(String uname, String uemail, String upsw, int utype) {
        this.uname = uname;
        this.uemail = uemail;
        this.upsw = upsw;
        this.utype = utype;
    }

    public Users(int uid, String uname, String uemail, String upsw, int utype) {
        this.uid = uid;
        this.uname = uname;
        this.uemail = uemail;
        this.upsw = upsw;
        this.utype = utype;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getuemail() {
        return uemail;
    }

    public void setuemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUpsw() {
        return upsw;
    }

    public void setUpsw(String upsw) {
        this.upsw = upsw;
    }

    public int getUtype() {
        return utype;
    }

    public void setUtype(int utype) {
        this.utype = utype;
    }
}
