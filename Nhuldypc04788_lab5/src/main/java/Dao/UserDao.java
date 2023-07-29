package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.apache.commons.beanutils.BeanUtils;

import Entity.User;
import Util.JPAUtils;

public class UserDao {

	private EntityManager em = JPAUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		super.finalize();
	}

	public List<User> findAll() {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		return query.getResultList();
	}

	public User findAllByRole(Boolean admin) {
		String jpql = "SELECT o FROM User o WHERE o.admin = ?0";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, admin);
		return query.getSingleResult();
	}

	public User findAllByEmail(String email) {
		String jpql = "SELECT o FROM User o WHERE o.email = ?0";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, email);
		return query.getSingleResult();
	}

	public User findAllByKeyword(String keyword) {
		String jpql = "SELECT o FROM User o WHERE o.fullname LIKE ?0";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, keyword);
		return query.getSingleResult();
	}

	public User findOne(String username, String password) {
		String jpql = "SELECT o FROM User o WHERE o.username=?0 AND o.password=?1";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, username);
		query.setParameter(1, password);
		return query.getSingleResult();
	}

	public User findAllById(int id) {
		String jpql = "SELECT o FROM User o WHERE o.id = ?0";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, id);
		return query.getSingleResult();
	}

	public List<User> findPage(int page, int size) {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setFirstResult(page * size);
		query.setMaxResults(size);
		return query.getResultList();
	}

	public User create(User entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		return entity;
	}

	public User update(User entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		return entity;
	}

	public User delete(int id) {
		User entity = this.findAllById(id);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		return entity;
	}
	
}
