package Article.DAO;

import java.util.List;

import Article.DTO.Article;

public interface ArticleDAO {
	//글쓰기
	public int write(Article article);
	//목록보기
	public List<Article> viewlist();
	//내용보기
	public Article viewcontent(int articleId);
	//글수정
	public int updateArticle(Article article);
	//글삭제
	public int deleteArticle(Article article);
}
