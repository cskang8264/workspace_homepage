package com.mingo.smartStore.goods;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class menuDAO {
	
	private JdbcTemplate jdbcTemplateObject;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	public int getRowCount() {
		String sqlStatement = "select count(*) from offers";
		return jdbcTemplateObject.queryForObject(sqlStatement, Integer.class);
	}

}
