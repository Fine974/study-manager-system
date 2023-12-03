package edu.ft.bean;

public class Students {
    private int sid;
    private String sname;
    private String sno;
    private String sdept;
    private String cname;
    private int ssex;
    private double grade;

    public Students() {}

    public Students(String sname, String sno, String sdept, String cname, int ssex, double grade) {
        this.sname = sname;
        this.sno = sno;
        this.sdept = sdept;
        this.cname = cname;
        this.ssex = ssex;
        this.grade = grade;
    }

    public Students(int sid, String sname, String sno, String sdept, String cname, int ssex, double grade) {
        this.sid = sid;
        this.sname = sname;
        this.sno = sno;
        this.sdept = sdept;
        this.cname = cname;
        this.ssex = ssex;
        this.grade = grade;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getSdept() {
        return sdept;
    }

    public void setSdept(String sdept) {
        this.sdept = sdept;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getSsex() {
        return ssex;
    }

    public void setSsex(int ssex) {
        this.ssex = ssex;
    }

    public double getGrade() {
        return grade;
    }

    public void setGrade(double grade) {
        this.grade = grade;
    }
}
