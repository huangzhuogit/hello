package org.tp.ssm_tpzy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.GywmTestMapper;
import org.tp.ssm_tpzy.pojo.GywmTest;
import org.tp.ssm_tpzy.service.GywmTestService;

@Service("/gywmService")
@Transactional
public class GywmTestServiceImpl implements GywmTestService {
   @Autowired
   private GywmTestMapper gywmMapper;

		@Override
		public List<GywmTest> find(int is_delete) {
			// TODO Auto-generated method stub
			return gywmMapper.find(is_delete);
		}

		@Override
		public void add(GywmTest gt) {
			// TODO Auto-generated method stub
			gywmMapper.add(gt);
		}
		
		@Override
		public void update(GywmTest gt) {
			// TODO Auto-generated method stub
			gywmMapper.update(gt);
		}
		
		@Override
		public GywmTest showOne(int gywmTestId) {
			// TODO Auto-generated method stub
			return gywmMapper.showOne(gywmTestId);
		}
		
		@Override
		public void deleteOne(GywmTest gt) {
			// TODO Auto-generated method stub
			gywmMapper.deleteOne(gt);
		}
		
		@Override
		public List<GywmTest> show(Map<String, Object> map) {
			// TODO Auto-generated method stub
			return gywmMapper.show(map);
		}
}
