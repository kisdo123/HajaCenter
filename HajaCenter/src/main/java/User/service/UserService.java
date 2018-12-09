package User.service;

import User.DTO.User;

public interface UserService {
	
	public void joinUser(User user);
	public User login(String id, String pw);
	public User updateInput(int Userid);
	public void update(User user);
}
