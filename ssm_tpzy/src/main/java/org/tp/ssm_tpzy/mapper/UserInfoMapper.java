package org.tp.ssm_tpzy.mapper;

import java.util.List;
import java.util.Map;

import org.tp.ssm_tpzy.pojo.UserInfo;

public interface UserInfoMapper {

	UserInfo login(UserInfo u);

	void right(UserInfo u);

	UserInfo yanName(UserInfo hgood);

	UserInfo yanPhone(UserInfo hgood);

	List<UserInfo> findAll(int is_delete);


	UserInfo getOne(int uid);

	void deleteOne(UserInfo ui);

	void update(UserInfo userinfo);

	List<UserInfo> showGood(Map<String, Object> map);





}
