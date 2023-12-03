package edu.ft.bean;

public class Classes {
    private String cname;
    private String cdept;
    private int count;

    public Classes() {
    }

    public Classes(String cname, String cdept, int count) {
        this.cname = cname;
        this.cdept = cdept;
        this.count = count;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCdept() {
        return cdept;
    }

    public void setCdept(String cdept) {
        this.cdept = cdept;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
