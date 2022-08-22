package kr.co.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import kr.co.vo.BoardVO;

public class BoardDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// 게시글 작성
	public int write(BoardVO bVO) throws Exception{
		return sqlSession.insert("bMap.insert", bVO);
	}
	
	// 게시판 리스트
	public List<BoardVO> list() throws Exception{
		return sqlSession.selectList("bMap.list");
	}
	
	// 게시물 조회
	public BoardVO read(int bno) throws Exception{
		return sqlSession.selectOne("bMap.read", bno);
	}
	
	// 게시물 수정
	public int update(BoardVO bVO) throws Exception{
		return sqlSession.update("bMap.update", bVO);
	}
	
	// 게시물 삭제
	public int delete(int bno) throws Exception{
		return sqlSession.delete("bMap.delete", bno);
	}
}
