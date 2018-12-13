package Article.DTO;

import org.apache.ibatis.type.Alias;

@Alias("Article")
public class Article {

	private int articleId;
	private int userId;
	private String name;
	private String title;
	private String content;
	private String wdate;
	private String udate;

	public Article() {
	}
	
	public Article(int articleId, int userId,String name, String title, String content, String wdate, String udate) {
		this.articleId = articleId;
		this.userId = userId;
		this.name = name;
		this.title = title;
		this.content = content;
		this.wdate = wdate;
		this.udate = udate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getUdate() {
		return udate;
	}

	public void setUdate(String udate) {
		this.udate = udate;
	}

}
