package com.project.insurance.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class Geyak {
	@JsonProperty
	private Long policyNo;
	
	@JsonProperty
	private String ggName;
	
	@JsonProperty
	private String pggName;
	
	@JsonProperty
	private java.sql.Date bhStartDate;
	
	@JsonProperty
	private java.sql.Date bhEndDate;
	
	@JsonProperty
	private int bhr;
	
	@JsonProperty
	private int napPk;
	
	@JsonProperty
	private String mojipSul;
	
	@JsonProperty
	private String sugumSul;
	
	@JsonProperty
	private java.sql.Date updateDate;
	
	@JsonProperty
	private int updateUser;
	
	@JsonProperty
	private String spcd;
	
	@JsonProperty
	private String spname;
	
	@JsonProperty
	private java.sql.Date createDate;
	
	@JsonProperty
	private String createUser;
}
