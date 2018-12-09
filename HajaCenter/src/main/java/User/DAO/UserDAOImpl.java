package User.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import User.DTO.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private IUserMapper userMapper;
	
	//회원가입
	@Override
	public int join(User user) {
		return userMapper.join(user);
	}

	//id로 user 조회
	@Override
	public User selectUserById(String id) {
		return userMapper.selectUserById(id);
	}

	//회원번호로 user조회
	@Override
	public User selectUserByUserId(int userId) {
		return userMapper.selectUserByUserId(userId);
	}

	@Override
	public int updateUser(User user) {
		return userMapper.updateUser(user);
	}

}
