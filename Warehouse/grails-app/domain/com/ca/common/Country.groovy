package com.ca.common

/**
 * Created by Dee on 2/7/14.
 */
public enum Country {
    USA("United States", "美国"), CHINA("China", "中国");
	
    String enName
    String cnName
    private Country(String enName, String cnName) {
        this.enName = enName
        this.cnName = cnName
    }

    public String getEN() {
        return enName
    }
    public String getCN() {
        cnName
    }

    public String toString() {
        enName
    }
}