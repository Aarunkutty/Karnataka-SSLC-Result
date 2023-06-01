package dataAccessObject;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dataTransferObject.SSLC_Students;

public class StudentMarksDAO {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("student");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void insert(SSLC_Students obj) {
		entityTransaction.begin();
		entityManager.persist(obj);
		entityTransaction.commit();
	}

	public List<SSLC_Students> fetchall() {

		Query query = entityManager.createQuery("select data from SSLC_Students data");
		List<SSLC_Students> list = query.getResultList();
		return list;
	}

	public void update(SSLC_Students dto) {
		entityTransaction.begin();
		entityManager.merge(dto);
		entityTransaction.commit();
	}

	public SSLC_Students fetch(int registerNo) {

		SSLC_Students dto = entityManager.find(SSLC_Students.class, registerNo);
		return dto;
	}

	public String delete(int registerNo) {
		SSLC_Students dto = entityManager.find(SSLC_Students.class, registerNo);
		if (dto != null) {
			entityTransaction.begin();
			entityManager.remove(dto);
			entityTransaction.commit();
			return "Data Removed";
		} else {
			return "No Record Present at the primary key";
		}
	}

}
