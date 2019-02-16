package org.tp.ssm_tpzy.mapper;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.Type;

public interface TypeMapper {

	List<Type> showAll(int is_delete);


	void add(Type ty);

	void update(Type ty);


	void delete(Type ty);

	Type getOne(int tid);

	Type findOne(Type ts);


	List<Type> find(Map<String, Object> map);


	List<Type> xiala(Map<String, Object> map);

}
