package com.jikexueyuan.model;

import java.sql.Date;

public class Studentinfo {
  private Long id;
  private String nicheng;
  private String truename;
  private String xingbie;
  private java.sql.Date birthday;
  private String zhuanye;
  private String[] kechengs = {""};
  private String kecheng = "";
  private String[] xingqus = {""};
  private String xingqu = "";
  private String beizhu;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNicheng() {
        return nicheng;
    }

    public void setNicheng(String nicheng) {
        this.nicheng = nicheng;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public String getXingbie() {
        return xingbie;
    }

    public void setXingbie(String xingbie) {
        this.xingbie = xingbie;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getZhuanye() {
        return zhuanye;
    }

    public void setZhuanye(String zhuanye) {
        this.zhuanye = zhuanye;
    }

    public String[] getKechengs() {
        return kechengs;
    }

    public void setKechengs(String[] kechengs) {
        this.kechengs = kechengs;
    }

    public String getKecheng() {
        if (kecheng != null) {
            for (int i = 0; i < k; i++) {
                
            }
        }
    }

    public void setKecheng(String kecheng) {
        this.kecheng = kecheng;
    }

    public String[] getXingqus() {
        return xingqus;
    }

    public void setXingqus(String[] xingqus) {
        this.xingqus = xingqus;
    }

    public String getXingqu() {
        return xingqu;
    }

    public void setXingqu(String xingqu) {
        this.xingqu = xingqu;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }
}
