<%@	page language="java" import="pokas.web.api.SMSComponent,java.io.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
</head> 
<body>
<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String type = request.getParameter("type");
	
	
	
	String strDest		= "01092853977";
	String strData		= "[견적요청] 이름 :"+name+"/연락처:"+phone+"/차종:"+type;

	String strCallBack	= "01063592848";
	String strSubject	= "";

	String strSendFlag	= "";

	String strDateYear	= "";
	String strDateMonth	= "";
	String strDateDay	= "";
	String strDateHour	= "";
	String strDateMin	= "";

	String strDate		= "";
	String strMsg		= "";

	request.setCharacterEncoding("UTF-8");

	if (request.getParameter("strTelList") != null)		strDest			= request.getParameter("strTelList").trim();
	if (request.getParameter("strData") != null)		strData			= request.getParameter("strData").trim();
	if (request.getParameter("strCallBack") != null)	strCallBack		= request.getParameter("strCallBack").trim();
	if (request.getParameter("strSubject") != null)		strSubject		= request.getParameter("strSubject").trim();
	if (request.getParameter("chkSendFlag") != null)	strSendFlag		= request.getParameter("chkSendFlag").trim();
	if (request.getParameter("R_YEAR") != null)			strDateYear		= request.getParameter("R_YEAR").trim();
	if (request.getParameter("R_MONTH") != null)		strDateMonth	= request.getParameter("R_MONTH").trim();
	if (request.getParameter("R_DAY") != null)			strDateDay		= request.getParameter("R_DAY").trim();
	if (request.getParameter("R_HOUR") != null)			strDateHour		= request.getParameter("R_HOUR").trim();
	if (request.getParameter("R_MIN") != null)			strDateMin		= request.getParameter("R_MIN").trim();

	if (strSendFlag == "1") {
		strDate = strDateYear + strDateMonth + strDateDay + strDateHour + strDateMin;
	} else {
		strDate = "";
	}

	String strDestList[] = strDest.split(";");
	int nCount = strDestList.length;

	SMSComponent smsc = new SMSComponent();
	 
	try {
		smsc.connect();
	} catch(Exception e) {
		strMsg = "SMS Server 연결에 실패했습니다.";
	} //catch


	try {
		strMsg = smsc.SendMsg(strDestList, strCallBack, strSubject, strDate, strData, nCount);
		strMsg = "문자 발송을 완료했습니다.\n" + strMsg;
		strMsg = strMsg.replaceAll("\n", "<br>");
		
	} catch(IOException e) {
		strMsg = "발송할 수 없습니다.";
	}

	smsc.disconnect();
%>
	<script>window.location.href="/Request/Askdone#target";</script>
<%=strMsg%><br>
</body>
</html>