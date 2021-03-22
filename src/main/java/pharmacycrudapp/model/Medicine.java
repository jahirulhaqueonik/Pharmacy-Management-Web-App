package pharmacycrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Medicine {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String brandName;
	private String genericName;
	private String weight;
	private String medicineType;
	private String manufacture;
	private String unitPrice;
	private String expDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getGenericName() {
		return genericName;
	}
	public void setGenericName(String genericName) {
		this.genericName = genericName;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getMedicineType() {
		return medicineType;
	}
	public void setMedicineType(String medicineType) {
		this.medicineType = medicineType;
	}
	public String getManufacture() {
		return manufacture;
	}
	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}
	public String getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	public Medicine(int id, String brandName, String genericName, String weight, String medicineType,
			String manufacture, String unitPrice, String expDate) {
		super();
		this.id = id;
		this.brandName = brandName;
		this.genericName = genericName;
		this.weight = weight;
		this.medicineType = medicineType;
		this.manufacture = manufacture;
		this.unitPrice = unitPrice;
		this.expDate = expDate;
	}
	public Medicine() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Medicine [id=" + id + ", brandName=" + brandName + ", genericName=" + genericName + ", weight=" + weight
				+ ", medicineType=" + medicineType + ", manufacture=" + manufacture + ", unitPrice=" + unitPrice
				+ ", expDate=" + expDate + "]";
	}
	
	
	
	

}
