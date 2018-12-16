package Article.DAO;

import java.util.List;

import Annotation.Query;
import Article.DTO.Article;

@Query
public interface ArticleMapper {
	//글쓰기
	int write(Article article);
	//목록보기
	List<Article> viewlist();
	//내용보기
	Article viewcontent(int articleId);
	//글수정
	int updateArticle(Article article);
	//글삭제
	int deleteArticle(Article article);
	//목록10개보기
	List<Article> viewlistlimit10();
}
