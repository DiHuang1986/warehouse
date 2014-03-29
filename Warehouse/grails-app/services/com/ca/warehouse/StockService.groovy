package com.ca.warehouse

import grails.transaction.Transactional

@Transactional
class StockService {

    def inStock(Warehouse warehouse, StockInForm inStock) {
		for( StockInEntry inEntry: inStock.entries ) {
			if(inEntry.quantity > 0) {
				WarehouseEntry storageEntry = warehouse.entries.find() {
					it.merchandise == inEntry.merchandise
				}
				
				if(storageEntry)
					storageEntry.quantity += inEntry.quantity
				else {
					storageEntry = new WarehouseEntry(inEntry) 
					warehouse.entries.add(storageEntry)
					warehouse.save flush: false
				}
			}
		}
	}
	
	def outStock(Warehouse warehouse, StockOutForm outStock) {
		for( StockOutEntry outEntry: outStock.entries ) {

		}
	}
}
