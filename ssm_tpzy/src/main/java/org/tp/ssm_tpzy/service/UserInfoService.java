package org.tp.ssm_tpzy.service;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.UserInfo;

public interface UserInfoService {

	UserInfo login(String loginName, String loginPwd);

	void right(UserInfo u);

	UserInfo yanName(UserInfo hgood);

	UserInfo yanPhone(UserInfo hgood);

	List<UserInfo> findAll(int is_delete);


	UserInfo getOne(int uid);

	void deleteOne(UserInfo ui);

	void update(UserInfo userinfo);

	List<UserInfo> showGood(Map<String, Object> map);


}
