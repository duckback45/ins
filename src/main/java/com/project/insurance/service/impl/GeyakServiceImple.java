package com.project.insurance.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.insurance.model.Geyak;
import com.project.insurance.service.GeyakService;

import com.project.insurance.mapper.GeyakMapper;

@Service
public class GeyakServiceImple implements GeyakService {
	
	@Autowired
	GeyakMapper geyakMapper;
	
	@Override
	public List<Geyak> getListGeyak(Geyak geyak) {
		return  geyakMapper.getListGeyak();
	}

}
