package org.tp.ssm_tpzy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.MessageMapper;
import org.tp.ssm_tpzy.pojo.Message;
import org.tp.ssm_tpzy.service.MessageService;


@Service("/messageService")
@Transactional
public class MessageServiceImpl implements MessageService {
     
	@Autowired
	private MessageMapper messageMapper;

	@Override
	public List<Message> find(int is_delete) {
		// TODO Auto-generated method stub
		return messageMapper.find(is_delete);
	}

	@Override
	public void add(Message ms) {
		// TODO Auto-generated method stub
		messageMapper.add(ms);
	}

	@Override
	public void update(Message ms) {
		// TODO Auto-generated method stub
		messageMapper.update(ms);
	}


	@Override
	public void delete(Message ms) {
		// TODO Auto-generated method stub
		messageMapper.delete(ms);
	}

	@Override
	public Message findOne(int messId) {
		// TODO Auto-generated method stub
		return messageMapper.findOne(messId);
	}

	@Override
	public List<Message> showGood(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return messageMapper.showGood(map);
	}

	@Override
	public void del(int messId) {
		// TODO Auto-generated method stub
		messageMapper.del(messId);
	}
}
