package Article.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Article.DAO.ArticleDAO;
import Article.DTO.Article;
import exception.ArticleException;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	ArticleDAO articleDAO;
	
	//글쓰기
	@Override
	public void write(Article article) {
		int res = articleDAO.write(article);
		if(res == 0) {
			throw new ArticleException("글쓰기 실패");
		}
	}

	//목록보기
	@Override
	public List<Article> viewlist() {
		List<Article> articles = articleDAO.viewlist();
		return articles;
	}
	
	@Override
	public List<Article> viewlistlimit10() {
		List<Article> articles = articleDAO.viewlistlimit10();
		return articles;
	}

	//내용보기
	@Override
	public Article viewcontent(int articleId) {
		Article article = articleDAO.viewcontent(articleId);
		return article;
	}

	//글수정
	@Override
	public void updateArticle(Article article) {
		int res = articleDAO.updateArticle(article);
		if(res == 0) {
			throw new ArticleException("수정 실패");
		}
	}

	//글삭제
	@Override
	public void deleteArticle(Article article) {
		int res = articleDAO.deleteArticle(article);
		if(res == 0) {
			throw new ArticleException("삭제 실패");
		}
	}

}
