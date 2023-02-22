package com.cetpa;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class StudentDao {
	static Session session;
	static Transaction t;

	static {
		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		session = factory.openSession();
		t = session.getTransaction();
	}
	public static void saveRecord(Student s)
	{
		t.begin();
		session.save(s);
		t.commit();
	}
	public static Student getRecord(int sid)
	{
		Student s=session.get(Student.class, sid);
		return s;
	}
	public static void updateRecord(Student stu)
	{
		t.begin();
		Student p1=session.get(Student.class, stu.getSid());
		p1.setFirstname(stu.getFirstname());
		p1.setLastname(stu.getLastname());
		p1.setAge(stu.getAge());;
		p1.setAddress(stu.getAddress());
	}
	public static boolean delete(int id)
	{
		Student st=session.get(Student.class, id);
		if(st==null)
		{
			return false;
		}
		t.begin();
		session.delete(st);
		t.commit();
		return true;
	}
}
