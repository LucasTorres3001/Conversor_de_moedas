<%@page import="conversoes.moedas.Converter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <%
            try{
                
                Converter conv = new Converter();

                String option = request.getParameter("opcao");
                String quantia_txt = request.getParameter("valor");
                double quantia = Double.parseDouble(quantia_txt);

                conv.setOption(option);
                conv.setValorReal(quantia);

                out.print(conv.convertendo());
            }
            catch(Exception e){
                out.print("<h3>Error :/ ... " + e.getMessage() + "</h3>");
            }
        %>
    </body>
</html>
