package org.tp.ssm_tpzy.mapper;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.Test;
public interface TestMapper {

	List<Test> findAllByPage(int is_delete);

	void addByUser(Test t);

	Test findOne(Test ts);

	Test getOne(int id);

	void delete(Test ty);

	void update(Test t);

	List<Test> showGood(Map<String, Object> map);

}
