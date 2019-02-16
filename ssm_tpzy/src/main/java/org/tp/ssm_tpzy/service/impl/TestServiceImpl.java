package org.tp.ssm_tpzy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.TestMapper;
import org.tp.ssm_tpzy.pojo.Test;
import org.tp.ssm_tpzy.service.TestService;


@Service("/testService")
@Transactional
public class TestServiceImpl implements TestService {
           @Autowired
           public TestMapper testMapper;

		@Override
		public List<Test> findAllByPage(int is_delete) {
			// TODO Auto-generated method stub
			return testMapper.findAllByPage(is_delete);
		}

		@Override
		public void addByUser(Test t) {
			// TODO Auto-generated method stub
			testMapper.addByUser(t);
		}

		@Override
		public Test findOne(Test ts) {
			// TODO Auto-generated method stub
			return testMapper.findOne(ts);
		}

		@Override
		public Test getOne(int id) {
			// TODO Auto-generated method stub
			return testMapper.getOne(id);
		}

		@Override
		public void delete(Test ty) {
			// TODO Auto-generated method stub
			testMapper.delete(ty);
		}

		@Override
		public void update(Test t) {
			// TODO Auto-generated method stub
			testMapper.update(t);
		}

		@Override
		public List<Test> showGood(Map<String, Object> map) {
			// TODO Auto-generated method stub
			return testMapper.showGood(map);
		}
}
