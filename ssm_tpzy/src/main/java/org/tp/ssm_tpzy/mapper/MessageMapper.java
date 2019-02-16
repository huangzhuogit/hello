package org.tp.ssm_tpzy.mapper;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.Message;

public interface MessageMapper {

	List<Message> find(int is_delete);

	void add(Message ms);

	void update(Message ms);

	Message findOne(int messId);

	void delete(Message ms);

	List<Message> showGood(Map<String, Object> map);

	void del(int messId);

}
