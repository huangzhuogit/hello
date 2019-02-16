package org.tp.ssm_tpzy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.HyzxMapper;
import org.tp.ssm_tpzy.pojo.HyzxTest;
import org.tp.ssm_tpzy.service.HyzxService;

@Service("/hyzxService")
@Transactional
public class HyzxServiceImpl implements HyzxService {
      @Autowired
      private HyzxMapper hyzxMapper;

	@Override
	public List<HyzxTest> find(int is_delete) {
		// TODO Auto-generated method stub
		return hyzxMapper.find(is_delete);
	}

	@Override
	public void add(HyzxTest gt) {
		// TODO Auto-generated method stub
		hyzxMapper.add(gt);
	}

	@Override
	public void update(HyzxTest gt) {
		// TODO Auto-generated method stub
		hyzxMapper.update(gt);
	}

	@Override
	public HyzxTest showOne(int hyzxTestId) {
		// TODO Auto-generated method stub
		return hyzxMapper.showOne(hyzxTestId);
		}

	@Override
	public void deleteOne(HyzxTest gt) {
		// TODO Auto-generated method stub
		hyzxMapper.deleteOne(gt);
	}

	@Override
	public List<HyzxTest> show(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return hyzxMapper.show(map);
	}
      
      
	
}
