package org.tp.ssm_tpzy.service;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.Message;

public interface MessageService {

	List<Message> find(int is_delete);

	void add(Message ms);

	void update(Message ms);

	void delete(Message ms);

	Message findOne(int messId);

	List<Message> showGood(Map<String, Object> map);

	void del(int messId);

}
