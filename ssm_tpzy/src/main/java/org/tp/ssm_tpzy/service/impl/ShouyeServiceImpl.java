package org.tp.ssm_tpzy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.ShouyeMapper;
import org.tp.ssm_tpzy.pojo.GywmTest;
import org.tp.ssm_tpzy.pojo.HyzxTest;
import org.tp.ssm_tpzy.pojo.Test;
import org.tp.ssm_tpzy.service.ShouyeService;


@Service("/shouyeService")
@Transactional
public class ShouyeServiceImpl implements ShouyeService {
        @Autowired
        private ShouyeMapper shouyeMapper;

		@Override
		public List<Test> findOne(int i) {
			// TODO Auto-generated method stub
			return shouyeMapper.findOne(i);
		}

		@Override
		public Test show(Test t) {
			// TODO Auto-generated method stub
			return shouyeMapper.show(t);
		}

		@Override
		public List<GywmTest> showGywm() {
			// TODO Auto-generated method stub
			return shouyeMapper.showGywm();
		}

		@Override
		public GywmTest showOneGywm(GywmTest gt) {
			// TODO Auto-generated method stub
			return shouyeMapper.showOneGywm(gt);
		}

		@Override
		public List<HyzxTest> news() {
			// TODO Auto-generated method stub
			return shouyeMapper.news();
		}

		@Override
		public HyzxTest newsdetail(HyzxTest gt) {
			// TODO Auto-generated method stub
			return shouyeMapper.newsdetail(gt);
		}

		@Override
		public Test zhigaibian(Map<String, Object> map) {
			// TODO Auto-generated method stub
			return shouyeMapper.zhigaibian(map);
		}



	


}


