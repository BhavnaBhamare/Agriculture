package com.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.pojo.Addcrop;
import com.pojo.Addfertilizer;
import com.pojo.Addmachinery;
import com.pojo.Admin;
import com.pojo.Registration;

public class BLManager {
	
	SessionFactory sf = new Configuration().configure().buildSessionFactory();

	

	
	public List<Addcrop> searchcrop(){
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Addcrop.class);
	    List<Addcrop> a=cr.list();
	    return a;
			
		}
	public List<Addfertilizer> searchfertilizer(){
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Addfertilizer.class);
	    List<Addfertilizer> a=cr.list();
	    return a;
			
		}
	
	
	public List<Registration> searchfarmer(){
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Registration.class);
	    List<Registration> a=cr.list();
	    return a;
			
		}
	
	public void saveFertilizerUpdate(Addfertilizer a) {
		Session s1=sf.openSession();
		Transaction transaction=s1.beginTransaction();
		s1.update(a);
		transaction.commit();
		 s1.close();
		
	}
	
	public Addfertilizer serachbyid(int fid) {
		Session s1 = sf.openSession();
		Criteria cr = s1.createCriteria(Addfertilizer.class);
		cr.add(Restrictions.eq("id", fid));
		Addfertilizer af=(Addfertilizer)cr.uniqueResult();

		return af;
	}
	
	public List<Addmachinery> searchMachinary(){
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Addmachinery.class);
	    List<Addmachinery> a=cr.list();
	    return a;
			
		}
	
	
	public void saveFertilize(Addfertilizer af) {
		Session s1=sf.openSession();
		Transaction t1=s1.beginTransaction();
		s1.save(af);
		t1.commit();
		s1.close();		
	}

	public void saveMachine(Addmachinery am) {
		
		Session s1=sf.openSession();
		Transaction t1=s1.beginTransaction();
		s1.save(am);
		t1.commit();
		s1.close();
	}
	
	public void saveCrop(Addcrop a) {
		Session s1=sf.openSession();
		Transaction t1=s1.beginTransaction();
		s1.save(a);
		t1.commit();
		s1.close();
		
	}
	
	
	public Registration searchcuname(String username) {
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Registration.class);
		cr.add(Restrictions.eq("username", username));
		Registration r=(Registration) cr.uniqueResult();
		return r;
	}
	
	
	public void saveregistration(Registration r) {
		Session s1=sf.openSession();
		Transaction t1=s1.beginTransaction();
		s1.save(r);
		t1.commit();
		s1.close();
		
	}







	public Registration searchbyEmailPassowrd(String email, String passsword) {
		Session session=sf.openSession();
		Criteria cr=session.createCriteria(Registration.class);
		cr.add(Restrictions.eq("email", email));
		cr.add(Restrictions.eq("passsword", passsword));
		Registration r=(Registration) cr.uniqueResult();
		return r;
	}






	public Registration serachbyemail(String email) {
		Session session=sf.openSession();
		Criteria cr=session.createCriteria(Registration.class);
		cr.add(Restrictions.eq("email", email));
		Registration r=(Registration) cr.uniqueResult();
		return r;
	}

	public void saveFarmerUpdate(Registration r) {
		// TODO Auto-generated method stub
		Session s1=sf.openSession();
		Transaction transaction=s1.beginTransaction();
		s1.update(r);
		transaction.commit();
		 s1.close();
	}
	
	public Registration searchfuname(String username) {
		Session s1=sf.openSession();
		Criteria cr=s1.createCriteria(Registration.class);
		cr.add(Restrictions.eq("username", username));
		Registration r=(Registration) cr.uniqueResult();
		return r;
	}

	public void updateRecord(Admin a) {
		// TODO Auto-generated method stub
		Session s1=sf.openSession();
		Transaction t1=s1.beginTransaction();
		s1.update(a);
		t1.commit();
		s1.close();
		
	}
	


	





}
