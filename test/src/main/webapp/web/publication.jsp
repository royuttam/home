<%@page import="java.io.*, javax.xml.transform.*,javax.xml.transform.stream.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
try {
String sortBy = request.getParameter("sortBy");
TransformerFactory factory = TransformerFactory.newInstance();
Transformer transformer = factory.newTransformer(new StreamSource(getServletContext().getResourceAsStream("/web/publication2.xsl")));

transformer.setParameter("sortBy", sortBy);

transformer.transform(new StreamSource(getServletContext().getResourceAsStream("/web/publication1.xml")), new StreamResult(out));
}catch(Exception e) {out.println(e);}
%>

