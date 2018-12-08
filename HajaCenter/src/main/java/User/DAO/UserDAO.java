package User.DAO;

import User.DTO.User;

public interface UserDAO {
	public int join(User user);
	public User selectUserById(String id);
}


