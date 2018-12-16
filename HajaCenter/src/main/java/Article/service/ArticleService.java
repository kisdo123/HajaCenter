package Article.service;

import java.util.List;

import Article.DTO.Article;

public interface ArticleService {
	// 글쓰기
	public void write(Article article);

	// 목록보기
	public List<Article> viewlist();

	// 내용보기
	public Article viewcontent(int articleId);

	// 글수정
	public void updateArticle(Article article);

	// 글삭제
	public void deleteArticle(Article article);

	// 10개 목록보기
	public List<Article> viewlistlimit10();
}
