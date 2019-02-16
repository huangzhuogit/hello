package org.tp.ssm_tpzy.mapper;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.GywmTest;
import org.tp.ssm_tpzy.pojo.HyzxTest;
import org.tp.ssm_tpzy.pojo.Test;

public interface ShouyeMapper {

	List<Test> findOne(int i);

	Test show(Test t);

	List<GywmTest> showGywm();


	GywmTest showOneGywm(GywmTest gt);

	List<HyzxTest> news();


	HyzxTest newsdetail(HyzxTest gt);

	Test zhigaibian(Map<String, Object> map);








}
