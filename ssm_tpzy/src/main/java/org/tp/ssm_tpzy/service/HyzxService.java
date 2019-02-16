package org.tp.ssm_tpzy.service;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.HyzxTest;

public interface HyzxService {

	List<HyzxTest> find(int is_delete);

	void add(HyzxTest gt);

	void update(HyzxTest gt);

	HyzxTest showOne(int hyzxTestId);

	void deleteOne(HyzxTest gt);

	List<HyzxTest> show(Map<String, Object> map);

}
