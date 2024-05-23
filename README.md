JSP:- JSP is a Server Side Programming technology which is used for creating dynamic webpages.
    - JSP internallu uses Servlet.

Lifecycle of JSP:-
======================
Step-1: Translation Process           - Java code seperated from jsp.
Step-2: Compilation Process           - Java code compilation.
Step-3: Loading Process               - Servlet loaded in the server(memory).
Step-4: Instantiation Process         - Serlet object will be created.
Step-5: Initialization Process        - Servlet object will be initialized.
Step-6: Service Process               - Provide service for the client's request.
Step-7: Destroy Process               - Destroy object from server(memory).

Note- Web contaner is responsible to manage entire lifecycle of JSP.

Common tags using in JSP to write java logic(code)
======================================================
1) ScriptLet TAG:- Allow to declare variable but not method.
  EX: <% int a=20 %>.

3) Declaration TAG:- Allow to declare both variable and method.
   EX: <%!
             int a=20;
             void m1(){
                 println(a);
        %>
   
3) Expression TAG:- Allow to print data on browser.
   EX: <%= "Namaste World" %>


Difference between Servlet and JSP
====================================

Servlet                                                           JSP
-----------------------------------------------------------------------------------------------------------------------------------
1) Servlet is complete java technology                        - It allows to write java and html code together.
2) It increase code complexity while writing html code.       - To writing java code and html code together is easy in JSP.
3) It doesn't support TAGs                                    - JSP supports TAGS.
4) Servlet is faster in performance.                          - It is slower.
5) It supports all type of request.                           - It supports only http request.
6) It doesn't have implicit objects.                          - It has implicit objects(such as request, response, out, config, application, pageContext, exception etc)


Above notes is enough for cracking any JSP interview.

   
