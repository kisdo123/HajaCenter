package Article.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Article.DTO.Article;

@Repository("articleDAO")
public class ArticleDAOImpl implements ArticleDAO {
	
	@Autowired
	ArticleMapper articleMapper;
	
	@Override
	public int write(Article article) {
		return articleMapper.write(article);
	}

	@Override
	public List<Article> viewlist() {
		return articleMapper.viewlist();
	}

	@Override
	public Article viewcontent(int articleId) {
		return articleMapper.viewcontent(articleId);
	}

	@Override
	public int updateArticle(Article article) {
		return articleMapper.updateArticle(article);
	}

	@Override
	public int deleteArticle(Article article) {
		return articleMapper.deleteArticle(article);
	}

	@Override
	public List<Article> viewlistlimit10() {
		return articleMapper.viewlistlimit10();
	}

}
