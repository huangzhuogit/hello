package org.tp.ssm_tpzy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.TypeMapper;
import org.tp.ssm_tpzy.pojo.Type;
import org.tp.ssm_tpzy.service.TypeService;

@Service("/typeService")
@Transactional
public class TypeServiceImpl implements TypeService {
          @Autowired
          private TypeMapper typeMapper;

		@Override
		public List<Type> showAll(int is_delete) {
			// TODO Auto-generated method stub
			return typeMapper.showAll(is_delete);
		}


		@Override
		public void add(Type ty) {
			// TODO Auto-generated method stub
			typeMapper.add(ty);
		}

		@Override
		public void update(Type ty) {
			// TODO Auto-generated method stub
			typeMapper.update(ty);
		}

		@Override
		public void delete(Type ty) {
			// TODO Auto-generated method stub
			typeMapper.delete(ty);
		}

		@Override
		public Type getOne(int tid) {
			// TODO Auto-generated method stub
			return typeMapper.getOne(tid);
		}


		@Override
		public Type findOne(Type ts) {
			// TODO Auto-generated method stub
			return typeMapper.findOne(ts);
		}


		@Override
		public List<Type> find(Map<String, Object> map) {
			// TODO Auto-generated method stub
			return typeMapper.find(map);
		}


		@Override
		public List<Type> xiala(Map<String, Object> map) {
			// TODO Auto-generated method stub
			return typeMapper.xiala(map);
		}

	
}
