import com.ca.enums.Gender
import com.ca.people.Supplier
import com.ca.product.Brand
import com.ca.product.MerchandiseType
import com.ca.address.Country
import com.ca.enums.MerchandiseCategory
import com.ca.product.Tag
import com.ca.warehouse.Warehouse
import com.ca.people.Employee

class BootStrap {

    def init = { servletContext ->
		new Brand(name: "Coach").save()
        new Brand(name: "MK").save()


		
		new Tag(name: "Good").save()
		new Tag(name: "Bad").save()
		new Tag(name: "Neutral").save()
		
		new MerchandiseType(name: "Handbag", category: MerchandiseCategory.Bag).save()
		new MerchandiseType(name: "Wallet", category: MerchandiseCategory.Bag).save()
		
		new Country(name: "China").save()
		new Country(name: "United States").save()
		
		new Warehouse(name: "Malden").save()
		new Warehouse(name: "XinXiang").save()
        new Warehouse(name: "Burlington").save()

        new Supplier(firstName: "Han", lastName: "Zhang", gender: Gender.Female).save()
        new Supplier(firstName: "Yalan", lastName: "Tang", gender: Gender.Female).save()

        new Employee(firstName: "YuRu", gender: Gender.Female).save()


		
    }
    def destroy = {
    }
}
