package com.sainjo.gooodhavi.sns;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sainjo.gooodhavi.SiteOption;
import com.sainjo.gooodhavi.member.Member;

@Service
public class SNSDAO {
	private int allMsgCount;

	@Autowired
	private SqlSession ss;

	@Autowired
	private SiteOption so;

	public SNSDAO() {

	}

	public void countAllMsg() {
		allMsgCount = ss.getMapper(SNSMapper.class).getAllMsgCount();
	}

	public void deleteMsg(SNSMsg sm, HttpServletRequest req) {
		try {
			if (ss.getMapper(SNSMapper.class).deleteMsg(sm) == 1) {
				req.setAttribute("r", "글삭제성공");
				allMsgCount--;
			} else {
				req.setAttribute("r", "글삭제실패");
			}
		} catch (Exception e) {
			req.setAttribute("r", "글삭제실패");
		}
	}

	public void deleteReply(SNSReply sr, HttpServletRequest req) {
		try {
			if (ss.getMapper(SNSMapper.class).deleteReply(sr) == 1) {
				req.setAttribute("r", "댓글삭제성공");
			} else {
				req.setAttribute("r", "댓글삭제실패");
			}
		} catch (Exception e) {
			req.setAttribute("r", "댓글삭제실패");
		}
	}

	public void getMsg(int page, HttpServletRequest req) {
		req.setAttribute("curPage", page);

		String search = (String) req.getSession().getAttribute("search"); // 검색어
		int msgCount = 0;
		if (search == null) { // 전체조회
			msgCount = allMsgCount;
			search = "";
		} else { // 검색
			SNSSelector sSel2 = new SNSSelector(search, 0, 0);
			msgCount = ss.getMapper(SNSMapper.class).getSearchMsgCount(sSel2);
		}
		int allPageCount = (int) Math.ceil((double) msgCount / so.getSnsMsgPerPage());
		req.setAttribute("allPageCount", allPageCount);

		int start = (page - 1) * so.getSnsMsgPerPage() + 1;
		int end = (page == allPageCount) ? msgCount : start + so.getSnsMsgPerPage() - 1;

		SNSSelector sSel = new SNSSelector(search, start, end);
		List<SNSMsg> snsMsgs = ss.getMapper(SNSMapper.class).getMsg(sSel);

		for (SNSMsg snsMsg : snsMsgs) {
			snsMsg.setReply(ss.getMapper(SNSMapper.class).getReply(snsMsg));
		}
		req.setAttribute("msgs", snsMsgs);
	}

	public void searchClear(HttpServletRequest req) {
		req.getSession().setAttribute("search", null);
	}

	public void searchMsg(HttpServletRequest req) {
		String search = req.getParameter("search");
		req.getSession().setAttribute("search", search);
	}

	public void updateMsg(SNSMsg sm, HttpServletRequest req) {
		try {
			if (ss.getMapper(SNSMapper.class).updateMsg(sm) == 1) {
				req.setAttribute("r", "글수정성공");
			} else {
				req.setAttribute("r", "글수정실패");
			}
		} catch (Exception e) {
			req.setAttribute("r", "글수정실패");
		}
	}

	public void writeMsg(SNSMsg sm, HttpServletRequest req) {
		try {
			String token = req.getParameter("token");

			String st2 = (String) req.getSession().getAttribute("st");

			if (st2 != null && token.equals(st2)) {
				req.setAttribute("r", "글쓰기실패(새로고침)");
				return;
			}

			Member m = (Member) req.getSession().getAttribute("loginMember");
			sm.setH_nickname(m.getH_nickname());
			// ta에서 줄바꿈 : \r\n
			// 웹사이트에서 줄바꿈 : <br>
			String contents = sm.getHs_contents();
			contents = contents.replace("\r\n", "<br>");
			sm.setHs_contents(contents);

			if (ss.getMapper(SNSMapper.class).writeMsg(sm) == 1) {
				req.setAttribute("r", "글쓰기성공");
				req.getSession().setAttribute("st", token);
				allMsgCount++;
			} else {
				req.setAttribute("r", "글쓰기실패");
			}
		} catch (Exception e) {
			req.setAttribute("r", "글쓰기실패");
			e.printStackTrace();
		}
	}

	public void writeReply(SNSReply sr, HttpServletRequest req) {
		try {
			String token = req.getParameter("token");
			
			String st2 = (String) req.getSession().getAttribute("st");
			
			if (st2 != null && token.equals(st2)) {
				req.setAttribute("r", "댓글쓰기실패(새로고침)");
				return;
			}

			Member m = (Member) req.getSession().getAttribute("loginMember");
			sr.setHsr_nickname(m.getH_nickname());
			if (ss.getMapper(SNSMapper.class).writeReply(sr) == 1) {
				req.setAttribute("r", "댓글쓰기성공");
				req.getSession().setAttribute("st", token);
			} else {
				req.setAttribute("r", "댓글쓰기실패");
			}
		} catch (Exception e) {
			req.setAttribute("r", "댓글쓰기실패");
			e.printStackTrace();
		}
	}
}
