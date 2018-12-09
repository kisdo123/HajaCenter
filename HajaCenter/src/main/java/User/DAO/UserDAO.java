package User.DAO;

import User.DTO.User;

public interface UserDAO {
	public int join(User user);
	public User selectUserById(String id);
	public User selectUserByUserId(int userId);
	public int updateUser(User user);
}


