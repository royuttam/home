<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<!--<xsl:include href="bookPublication.xsl"/>-->





    
   <xsl:param name="sortBy" />

   <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />

   <xsl:key name="division" match="publication" use="@*[name() = $sortBy]" />

   <xsl:template match="publications">
      <html>
        <style>
          h2 { color: maroon; }
          h3 { color: red; } 
        </style>

         <link rel="stylesheet" type="text/css" href="styles/main.css" />
   <h1>List of publications</h1>
   <h2>Text Books (2)</h2>


<table border="0"  border-spacing="10px">
<tr>
  <td >
  <a href="https://global.oup.com/academic/product/web-technologies-9780198066224?cc=in&amp;lang=en&amp;" ><img src="images/wt.jpg"/></a>
  </td>
  <td style="width:10px"></td>
  <td valign="top">
<a target="_blank" href="https://global.oup.com/academic/product/web-technologies-9780198066224?cc=in&amp;lang=en&amp;">
    Web Technologies</a>, <a target="_blank" href="https://india.oup.com/product/web-technologies-9780198066224">Oxford University Press</a>, New Delhi, India| 736 Pages | 227 figures
  | ISBN: 9780198066224 | First edition published in October 2010 | Eighth impression 2014 | More than 25,000 copies sold.
  
<br/><br/>
Web Technologies is a textbook specially designed for undergraduate and postgraduate students of Computer Science, Information Technology, and Computer Applications (BE-BTech-BCA-MCA).<br/><br/>
The book provides a comprehensive coverage of the complete range of topics taught in this course. The text is supported by numerous illustrations, examples, program codes, and screenshots.
   </td>
</tr>
<tr>
<td colspan="3">
Divided into four parts, the book first introduces the basic concepts such as HTTP, Java Network Programming, HTML, and Cascading Style Sheets (CSS). The second part focuses on XML and related concepts such as Namespaces, DTD, Schema, XPath, XQuery, and XML Transformation. The third part deals with client-side web technologies such as JavaScript, Applets, AJAX. The primary server-side web technologies such as CGI, Servlets, and JSP are covered in the last part.<br/><br/>
With its lucid presentation and inclusion of numerous real-world examples and codes, the book will be equally useful for web professionals.<br/><br/><br/>
</td>
</tr>

<tr>
<td>
  <a href="https://global.oup.com/academic/product/advanced-java-programming-9780199455508?lang=en&amp;cc=gb" ><img src="images/ajp.jpg"/></a>
</td>
<td></td>
<td valign="top">
<a target="_blank" href="https://global.oup.com/academic/product/advanced-java-programming-9780199455508?lang=en&amp;cc=gb">Advanced Java Programming</a>,
<a target="_blank" href="https://india.oup.com/product/advanced-java-programming-9780199455508?">Oxford University Press</a>, New Delhi, India| 880 Pages | 217 figures
| ISBN: 9780199455508 | First published in March 2015 <br/><br/>
Advanced Java Programming is a textbook specially designed for undergraduate and postgraduate students of courses in Computer Science Engineering, Information Technology, and Computer Applications.<br/><br/>
Divided into three parts, the book provides exhaustive coverage of topics taught in advanced Java and other related subjects. It first introduces important language features such as Reflection, JNI, template, AWT and Swing, and Security. The second part primarily focuses on core network programming concepts-sockets, RMI, mail, and XML-RPC.
</td>
</tr>
<tr>
  <td colspan="3">
 State-of-the-art concepts such as SOAP, Applet, Servlet, JSP, JDBC, Hibernate, JMS, J2EE, JNDI, CORBA, and JSF have been discussed in the last part.
  </td>
</tr>
</table>

   <h2>Reference Books (3)</h2>


<table border="0"  border-spacing="10px">


<tr>
  <td >
  <a href="https://www.lap-publishing.com/" ><img src="images/cl.jpg"/></a>
  </td>
</tr>
<tr>
<td colspan="1">
<a target="_blank" href="https://www.lap-publishing.com/">
    Caching and Load Balancing in Middleware-based Object Systems</a>, <a target="_blank" href="https://www.lap-publishing.com/">LAMBERT Academic Publishing</a>, Heinrich-B&#246;cking-Stra&#223;e 6, 66121 Saarbr&#252;cken, Germany| 221 Pages | 54 figures
  | ISBN: 978-3-659-95609-6 | First edition published in November 2016.<br/><br/>
  In this book, I have presented a unified object caching architecture and implementation based on CORBA that can be used to cache different types of remote objects with a little modification of existing code. This approach is based on applications specific cache consistency policy, per process caching, object graph based data shipping and replication management. I have applied this architecture on applications with different types of system requirements and have made a performance comparison among them. I have demonstrated that the proposed architecture of caching results in improved performance for applications that exhibit a reasonable amount of read operations. I have then provided a 3-tier on-demand, adaptive, transparent load balancing architecture for state-full CORBA object caching system and implemented it. The proposed architecture uses a combination of interceptor and object wrapper to intercept requests at various points with minimum overhead that improves efficiency significantly. Instead of a centralized load balancer, balancing of load is performed entirely in distributed manner, which introduces the system as a fault-tolerant one.
<br/><br/>
</td>
</tr>

<tr>
<td>
  <a href="https://global.oup.com/academic/product/advanced-java-programming-9780199455508?lang=en&amp;cc=gb" ><img src="images/protein.jpg"/></a>
</td>
</tr>
<tr>
  <td colspan="1">
<a target="_blank" href="https://www.lap-publishing.com/">Protein Structure Prediction...</a>,
<a target="_blank" href="https://www.lap-publishing.com/">LAMBERT Academic Publishing</a>, Heinrich-B&#246;cking-Stra&#223;e 6, 66121 Saarbr&#252;cken, Germany| 206 Pages | 217 figures


| ISBN: 978-3-330-00156-5 | First published in March 2015 <br/><br/>

Computational Drug Design is important as it reduces conventional
research deadline and cost. Here we have considered structure based drug
design where we have identified a protein target and performed
optimization study to find a molecule or ligand that suitably fits in the
target pocket. Different docking strategies are considered to make it more
efficient with evolutionary algorithms. Our algorithm assumes a variable
length tree structure which represents a drug molecule and arranges
essential functional groups in different positions of that drug. Once the
geometry of the drug is obtained, its docking energy is minimized. We
have also considered several intermolecular forces for more accuracy.
Results show that PSO performs better than the earlier methods. We have
prepared a set of molecules having energy less than a threshold value. All
these molecules are the potential drugs for a particular protein. These set
of molecules will help the biologists or pharmacists to choose the best drug
for a particular disease with very less effort. We have also incorporated
different tool based study and do performance analysis of AutoDock &amp;
AutoDock Vina.  

</td>
</tr>


<tr>
  <td >
  <a href="https://www.lap-publishing.com/" ><img src="images/doc.jpg"/></a>
  </td>
</tr>

<tr>
<td colspan="1">
<a target="_blank" href="https://www.lap-publishing.com/">
    Distributed Object Caching In CORBA</a>, <a target="_blank" href="https://www.lap-publishing.com/">LAMBERT Academic Publishing</a>, Heinrich-B&#246;cking-Stra&#223;e 6, 66121 Saarbr&#252;cken, Germany| 90 Pages | 
  | ISBN: 978-3-330-02060-3 | First edition published in Jan 18, 2017.<br/><br/>
  This book provides a middleware-based unified object caching framework. The framework can seamlessly be used to cache different types of object graphs(such as standalone, simple and complex). Different types of caching policies (such as read-only, weak-consistency and strong-consistency) may also be customized based on the application scenario. The framework used Java’s Serialization procedure for object caching.
<br/><br/>

</td>
</tr>

</table>




<h3>Upcoming titles<br/></h3>
<ol>
  <li>"Object Oriented Programming with C++" | Published:Not decided yet | 600 pages(approx) | Expected To be published in 2016</li><br/>
  <li>"Linux Shell and Kernel Programming" | Published:Not decided yet | 1000 pages(approx) | Expected To be published in 2017</li><br/>

</ol>


<h3>Book Chapters<br/></h3>
<ol>
  <li>Uttam Kumar Roy, "Source-Initiated Routing to Support Large-Scale Pseudo-Linear ZigBee Networks", J.K. Mandal et al. (eds.), Proceedings of the First International Conference on Intelligent Computing and Communication , Advances in Intelligent Systems and Computing, Vol. 458, ISBN: 978-981-10-2034-6, pp 645-653, DOI 10.1007/978-981-10-2035-3_65, Chapter 65, Springer Singapore 2017 </li><br/>
  <li>Uttam Kumar Roy, "Introspecting Effect of Packet Size on End-to-end Network Delay", J.K. Mandal et al. (eds.), Proceedings of the First International Conference on Intelligent Computing and Communication , Advances in Intelligent Systems and Computing, Vol. 458, ISBN: 978-981-10-2034-6, pp 127-135, DOI 10.1007/978-981-10-2035-3_14, Chapter 66, Springer Singapore 2017 </li><br/>
</ol>




   <h2>Journal/Conference Papers (<xsl:value-of select="count(publication)"/>)</h2>
<!--         <a href="publications_yearwise.html">Year Wise</a> | 
         <a href="publications_areawise.html">Area Wise</a> |
         <a href="publications_categorywise.html">Category Wise</a>-->

         <a href="publication.jsp?sortBy=year">Year Wise</a> | 
         <a href="publication.jsp?sortBy=area">Area Wise</a> |
         <a href="publication.jsp?sortBy=category">Category Wise</a>

         <ol>
            <xsl:apply-templates select="publication[generate-id(.)=generate-id(key('division',@*[name() = $sortBy])[1])]">
               <xsl:sort select="@*[name() = $sortBy]" data-type="numeric" order="descending" />
            </xsl:apply-templates>	
         </ol>
      </html>
   </xsl:template>
   <xsl:template match="publication">
      <h3 style="color:red">
         <xsl:value-of select="@*[name() = $sortBy]" />
         (<xsl:value-of select="count(key('division', @*[name() = $sortBy]))" />)
      </h3>
      <xsl:for-each select="key('division', @*[name() = $sortBy])">
         <li>
            <xsl:for-each select="./author">
               <xsl:choose>
                  <xsl:when test=".='Uttam Kumar Roy'">
                     <span class="author1">
                        <xsl:value-of select="." />,
                     </span>
                  </xsl:when>
                  <xsl:otherwise>
                     <span class="author">
                        <xsl:value-of select="." />,
                     </span>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
            <span class="title">"<xsl:value-of select="./title" />", </span>
            <span class="conf">
               <xsl:value-of select="./publisher" />,
            </span>
            <a href="{./file}">
               <xsl:value-of select="actionUrl" />
               .pdf
            </a>
         </li>
         <br />
      </xsl:for-each>
   </xsl:template>
</xsl:transform>