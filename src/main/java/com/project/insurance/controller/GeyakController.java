package com.project.insurance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.insurance.model.Geyak;
import com.project.insurance.service.GeyakService;

@RestController
@RequestMapping(value = "/geyak")
public class GeyakController {

	@Autowired
	GeyakService geyakservice;

	@GetMapping("")
	public ResponseEntity<List<Geyak>> getListBoard(Geyak geyak) {
		List<Geyak> geyak2 = geyakservice.getListGeyak(geyak);
		return ResponseEntity.ok(geyakservice.getListGeyak(geyak));
	}
}
