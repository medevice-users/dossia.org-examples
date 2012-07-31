   <%--
   
/*
 * Copyright 2009 Dossia
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
    
   
   --%>
   
<%@page import="org.dossia.oauth.DossiaOAuthClient"%>
<jsp:include page="/banner.jsp" />
<html><head><title>Retrieving a Document From a Document ID</title></head><body>
	
	<form method="POST" action="./retrievingParentDoc.jsp" enctype="multipart/form-data">
		<input type="hidden" name="<%=DossiaOAuthClient.PARAM_API_CALL%>" value="<%=DossiaOAuthClient.DOSSIA_API_CALL_PARENT_DOCUMENT%>"/>
		<input type="hidden" name="<%=DossiaOAuthClient.PARAM_OPERATION%>" value="<%=DossiaOAuthClient.OPERATION_GET%>">
		<input type="hidden" name="<%=DossiaOAuthClient.PARAM_METHOD%>" value="<%=DossiaOAuthClient.METHOD_GET%>"/>
		<br>Record ID: <input type="text" name="recordId"/>
		<br>Document ID: <input type="text" name="documentId"/>
		
		<br><input type="submit" name="submit" value="Get"/>
	</form>
	
	<%@include file="dossiaClient.jsp" %>
</body></html>