package User.service;

import java.util.List;

import User.DTO.User;

public interface UserService {
	
	public void joinUser(User user);
	public User Login(String id, String pw);
}
