
<%--
The MIT License (MIT)

Copyright (c) 2008 Kleber Maia de Andrade

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--%>
<%@include file="include/beans.jsp"%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%@page import="iobjects.xml.sql.*"%>

<%
  // nosso FrameBar
  FrameBar frameBar = new FrameBar(facade, "frameBarSystemInformation");
%>

<html>
  <head>
    <title>Informa��es do Sistema</title>
    <link href="<%=facade.getStyle().userInterface()%>" rel="stylesheet" type="text/css">
    <link href="<%=facade.iconURL()%>" rel="shortcut icon" />
    <script src="include/scripts.js" type="text/javascript"></script>
  </head>

  <body style="margin: 0px;" onselectstart="return false;" oncontextmenu="return false;">

  <!-- nossoo FrameBar -->
  <%=frameBar.begin()%>
    <%=frameBar.beginFrameArea()%>
      <!-- frame de identifica��o -->
      <%=frameBar.beginFrame("Informa��es do Sistema", false, false)%>
        As informa��es do sistema s�o ferramentas para sua administra��o.
      <%=frameBar.endFrame()%>
      <!-- frame de informa��es -->
      <%=frameBar.beginFrame("Informa��es", false, false)%>
        <table>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_SESSIONS.url()%>" target="frameInformation" title="Informa��es de sess�es e usu�rios.">Sess�es</a></td>
          </tr>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_LOG.url()%>" target="frameInformation" title="Visualiza o log da aplica��o.">Logs</a></td>
          </tr>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_EXTENSIONS.url()%>" target="frameInformation" title="Informa��es de extens�es de objetos.">Extens�es</a></td>
          </tr>
        </table>
      <%=frameBar.endFrame()%>
      <!-- frame de ferramentas -->
      <%=frameBar.beginFrame("Ferramentas", false, false)%>
        <table>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_SCHEDULE.url()%>" target="frameInformation" title="Informa��es e ferramentas do agendador de tarefas da aplica��o.">Agendador</a></td>
          </tr>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_UPDATER.url()%>" target="frameInformation" title="Informa��es e ferramentas do atualizador da aplica��o.">Atualizador</a></td>
          </tr>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_FILES.url()%>" target="frameInformation" title="Gerenciador de arquivos de sistema">Arquivos de Sistema</a></td>
          </tr>
          <tr>
            <td><a href="<%=Controller.ACTION_SYSTEM_INFORMATION_DATABASES.url()%>" target="frameInformation" title="Gerenciador de bases de dados do sistema">Bancos de dados</a></td>
          </tr>
        </table>
      <%=frameBar.endFrame()%>
    <%=frameBar.endFrameArea()%>

    <%=frameBar.beginClientArea()%>
      <iframe src="<%=Controller.ACTION_SYSTEM_INFORMATION_SESSIONS.url()%>" frameborder="0" name="frameInformation" scrolling="no" style="width:100%; height:100%"></iframe>
    <%=frameBar.endClientArea()%>
  <%=frameBar.end()%>

  </body>
</html>
