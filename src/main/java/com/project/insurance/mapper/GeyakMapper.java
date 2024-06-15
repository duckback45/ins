package com.project.insurance.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.project.insurance.model.Geyak;

@Mapper
public interface GeyakMapper {
	List<Geyak> getListGeyak();
}
