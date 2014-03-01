import com.ca.product.Brand
import com.ca.product.MerchandiseType
import com.ca.address.Country
import com.ca.enums.MerchandiseCategory
import com.ca.product.Tag
import com.ca.warehouse.Warehouse

class BootStrap {

    def init = { servletContext ->
		new Brand(name: "Coach").save()
		
		new Tag(name: "good").save()
		
		new Tag(name: "bad").save()
		
		new Tag(name: "neutral").save()
		
		new MerchandiseType(name: "Handbag", category: MerchandiseCategory.Bag).save()
		
		new MerchandiseType(name: "Wallet", category: MerchandiseCategory.Bag).save()
		
		new Country(name: "China").save()
		new Country(name: "United States").save()
		
		new Warehouse(name: "Malden").save()
		new Warehouse(name: "XinXiang").save()
		
    }
    def destroy = {
    }
}
