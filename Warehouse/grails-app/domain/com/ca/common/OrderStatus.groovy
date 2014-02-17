package com.ca.common

/**
 * Created by Dee on 2/8/14.
 */
public enum OrderStatus {
    OrderPlaced("Order Placed"), OrderPaid("Paid"), OrderProcessing("Processing"), OrderShipped("Shipped"), OrderCompleted("Order Completed");

    String desc
    private OrderStatus(String desc) {
        this.desc = desc
    }

    public String toString() {
        desc
    }
}