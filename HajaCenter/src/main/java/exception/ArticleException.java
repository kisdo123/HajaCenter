package exception;

//비밀번호 변경할 때 사용자가 없을 때 발생하는 예외
public class ArticleException extends RuntimeException {

	public ArticleException(String message) {
		super(message);
	}
		
}
