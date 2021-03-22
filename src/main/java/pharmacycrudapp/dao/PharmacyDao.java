package pharmacycrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import pharmacycrudapp.model.Medicine;

@Component
public class PharmacyDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//Create
	@Transactional
	public void createMedicine(Medicine medicine)
	{
		this.hibernateTemplate.save(medicine);
	}
	
	//get all products
	public List<Medicine> getMedicines(){
		
		List<Medicine> medicines = this.hibernateTemplate.loadAll(Medicine.class);
		return medicines;
	}
	
	//Delete the single Medicine
	@Transactional
	public void deleteMedicine(int pid)
	{
		Medicine p = this.hibernateTemplate.load(Medicine.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get the single Medicine
	public Medicine getMedicine(int pid)
	{
		return this.hibernateTemplate.get(Medicine.class, pid);
	}
	

}
