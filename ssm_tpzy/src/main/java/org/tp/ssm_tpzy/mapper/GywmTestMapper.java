package org.tp.ssm_tpzy.mapper;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.GywmTest;

public interface GywmTestMapper {

	List<GywmTest> find(int is_delete);

	void add(GywmTest gt);

	void update(GywmTest gt);
	
	GywmTest showOne(int gywmTestId);

	void deleteOne(GywmTest gt);

	List<GywmTest> show(Map<String, Object> map);

}
