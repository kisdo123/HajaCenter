package User.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import User.DAO.UserDAO;
import User.DTO.User;
import exception.UserException;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	// 회원가입
	@Override
	public void joinUser(User user) {
		User testUser = userDAO.selectUserById(user.getId());
		if (testUser != null) {
			throw new UserException("이미 존재하는 유저");
		}
		int res = userDAO.join(user);
		if (res == 0) {
			throw new UserException("회원가입 실패");
		}
	}

	// 로그인
	@Override
	public User login(String id, String pw) {
		User user = userDAO.selectUserById(id);
		if (user.equals("") || user.equals(null)) {
			throw new UserException("유저가 존재하지 않습니다.");
		}

		if (!user.getPw().equals(pw)) {
			throw new UserException("비밀번호 불일치");
		}

		return user;
	}

	// 회원정보 수정을 위한 select
	@Override
	public User updateInput(int userId) {
		if (userId == 0) {
			throw new UserException("로그인 되지 않았습니다.");
		}
		User user = userDAO.selectUserByUserId(userId);
		if (user.equals("") || user.equals(null)) {
			throw new UserException("유저가 존재하지 않습니다.");
		}
		return user;
	}

	@Override
	public void update(User user) {
		int res = userDAO.updateUser(user);
		if (res == 0) {
			throw new UserException("수정 실패");
		}
	}
}
