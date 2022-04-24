package com.rj.bd.framework.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


/**
 * @desc   dao的实现类
 * @author WYH
 * @time   2019-04-17
 */
public class DaoImpl extends HibernateDaoSupport implements IDao {

	/**
	 * 查询列表（不分页）
	 * @param hql语句
	 * @return list
	 */
	public List query(String hql) {

		return super.getHibernateTemplate().find( hql );
	}
	
	
	public Object queryById(Class cla, Serializable id) {
		
		return this.getHibernateTemplate().load( cla, id);
	}

	public void save(Object obj) {
		super.getHibernateTemplate().save( obj );
	}

	public void update(Object obj) {
		super.getHibernateTemplate().update( obj );
	}

	public void delete(Object obj) {
		super.getHibernateTemplate().delete(obj);
	}

	public void delete(Collection c) {
		super.getHibernateTemplate().deleteAll(c);
	}

	public void save(Collection c) {
		super.getHibernateTemplate().saveOrUpdateAll(c);
	}
	public void clear(Object obj) {
		super.getHibernateTemplate().evict(obj);
		
	}
	
	public void merge(Object obj){
		super.getHibernateTemplate().merge(obj);
		
	}

}
