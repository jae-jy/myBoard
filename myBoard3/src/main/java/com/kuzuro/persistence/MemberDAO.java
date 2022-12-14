package com.kuzuro.persistence;

import com.kuzuro.domain.MemberVO;

public interface MemberDAO {

	// 회원 가입
	public void register(MemberVO vo) throws Exception;
	
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;

	// 회원정보 수정
	public void modify(MemberVO vo) throws Exception;
	
	// 회원 탈퇴
	public void withdrawal(MemberVO vo) throws Exception;
	
	// 아이디 중복체크
	public MemberVO idChk(String userId) throws Exception;
	
	// 닉네임 중복체크
	public MemberVO nameChk(String userName) throws Exception;
	
}
