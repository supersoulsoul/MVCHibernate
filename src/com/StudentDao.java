package com;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class StudentDao {
	public Session getSession() {
		SessionFactory sf = new AnnotationConfiguration().configure()
				.buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

	public void insert(Student stu) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.save(stu);
		tx.commit();
	}

	public String find(String name) {
		Session s = getSession();
		Transaction ts = s.beginTransaction();
		String hql = "FROM Student s WHERE s.name = ?";
		List<Student> list = s.createQuery(hql).setParameter(0, name).list();
		return list.toString();
	}
}
