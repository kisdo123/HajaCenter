package User.DTO;

import java.time.LocalDateTime;

//User테이블에 있는 회원 정보(데이터)를 담을 클래스
public class User {

	private int userId;
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String team;
	private String birth;
	private LocalDateTime jdate;

	public User() {
	}

	public User(int userId, String name, String id, String pw, String phone, String team, String birth,
			LocalDateTime jdate) {
		this.userId = userId;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.team = team;
		this.birth = birth;
		this.jdate = jdate;
	}

	public User(String name, String id, String pw, String phone, String team, String birth) {
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phone;
		this.team = team;
		this.birth = birth;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public LocalDateTime getJdate() {
		return jdate;
	}

	public void setJdate(LocalDateTime jdate) {
		this.jdate = jdate;
	}
}
