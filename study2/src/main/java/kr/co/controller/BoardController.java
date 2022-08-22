package kr.co.controller;

import java.util.List;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.co.dao.*;
import kr.co.vo.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardDao bDao;
	
	// 게시판 폼보기
	@RequestMapping("/writeView")
	public ModelAndView writeView(ModelAndView mv) throws Exception{
		mv.setViewName("board/writeView");
		return mv;
	}
	
	// 게시판 글 작성
	@RequestMapping("/write")
	public ModelAndView write(ModelAndView mv, BoardVO bVO, RedirectView rv) throws Exception{
		logger.info("write");
		
		bDao.write(bVO);
		rv.setUrl("/board/list");
		mv.setView(rv);
		
		return mv;
	}
	
	// 게시판 리스트 보기
	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mv, BoardVO bVO) throws Exception{
		logger.info("list");
		
		List<BoardVO> list = bDao.list();
		mv.addObject("list", list);
		
		mv.setViewName("board/list");
		return mv;
	}
	
	// 게시물 조회
	@RequestMapping("/read")
	public ModelAndView read(ModelAndView mv, BoardVO bVO) throws Exception{
		logger.info("read");
		
		int bno = bVO.getBno();
		mv.addObject("read", bDao.read(bno));
		
		mv.setViewName("board/readView");
		return mv;
	}
	
	// 게시물 수정
	@RequestMapping("/updateView")
	public ModelAndView updateView(ModelAndView mv, BoardVO bVO) throws Exception{
		logger.info("updateView");
		
		mv.addObject("update", bDao.read(bVO.getBno()));
		mv.setViewName("board/updateView");
		return mv;
	}
	
	// 게시물 수정 처리명령
	@RequestMapping("/update")
	public ModelAndView update(ModelAndView mv, BoardVO bVO, RedirectView rv) throws Exception{
		logger.info("update");
		
		bDao.update(bVO);
		
		rv.setUrl("/board/list");
		mv.setView(rv);
		return mv;
	}
	
	// 게시물 삭제
	@RequestMapping("/delete")
	public ModelAndView delete(ModelAndView mv, BoardVO bVO, RedirectView rv) throws Exception {
		logger.info("delete");
		
		bDao.delete(bVO.getBno());
		
		rv.setUrl("/board/list");
		mv.setView(rv);
		return mv;
	}
}
