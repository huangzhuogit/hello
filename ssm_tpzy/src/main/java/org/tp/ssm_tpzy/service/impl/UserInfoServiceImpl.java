package org.tp.ssm_tpzy.service.impl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.tp.ssm_tpzy.mapper.UserInfoMapper;
import org.tp.ssm_tpzy.pojo.UserInfo;
import org.tp.ssm_tpzy.service.UserInfoService;

@Service("/userinfoService")
@Transactional
public class UserInfoServiceImpl implements UserInfoService {
      @Autowired
      private UserInfoMapper userInfoMapper;

	@Override
	public UserInfo login(String loginName, String loginPwd) {
		// TODO Auto-generated method stub
		UserInfo u=new UserInfo();
		u.setLoginName(loginName);
		u.setLoginPwd(loginPwd);
		
		return userInfoMapper.login(u);
	}

	@Override
	public void right(UserInfo u) {
		// TODO Auto-generated method stub
		userInfoMapper.right(u);
	}

	@Override
	public UserInfo yanName(UserInfo hgood) {
		// TODO Auto-generated method stub
		return userInfoMapper.yanName(hgood);
	}

	@Override
	public UserInfo yanPhone(UserInfo hgood) {
		// TODO Auto-generated method stub
		return userInfoMapper.yanPhone(hgood);
	}

	@Override
	public List<UserInfo> findAll(int is_delete) {
		// TODO Auto-generated method stub
		return userInfoMapper.findAll(is_delete);
	}


	@Override
	public UserInfo getOne(int uid) {
		// TODO Auto-generated method stub
		return userInfoMapper.getOne(uid);
	}

	@Override
	public void deleteOne(UserInfo ui) {
		// TODO Auto-generated method stub
		userInfoMapper.deleteOne(ui);
	}

	@Override
	public void update(UserInfo userinfo) {
		// TODO Auto-generated method stub
		userInfoMapper.update(userinfo);
	}

	@Override
	public List<UserInfo> showGood(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userInfoMapper.showGood(map);
	}

}
