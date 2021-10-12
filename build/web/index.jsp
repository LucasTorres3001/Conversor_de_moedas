<%@page import="classe.acessorio.Acessorio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <main>
            <header>
                <h1>Conversões de moedas</h1>
            </header>
            <section>
                <form action="index2.jsp" name="Form" method="POST" id="formulario" target="Msg">
                    <fieldset>
                        <legend>Dados</legend>
                        <p>
                            <input type="radio" name="opcao" id="Opcao" value="Dolar" title="Dólar americano"><label for="Opcao">Dólar americano</label>
                            <input type="radio" name="opcao" id="Opc" value="Euro" title="Euro"><label for="Opc">Euro</label>
                            <input type="radio" name="opcao" id="Op" value="Libra" title="Libra"><label for="Op">Libra esterlina</label>
                        </p>
                        <fieldset>
                            <p>
                                <label for="real">Digite o valor em reais: R$</label>
                                <input type="text" name="valor" id="real" size="9" maxlength="9" placeholder="Valor em reais" title="Valor em reais" required="">
                            </p>
                        </fieldset>
                    </fieldset>
                    <br>
                    <button type="submit" name="botao" id="botao" value="Ver" title="Clique aqui">Mostrar o valor da conversão</button>
                </form>
                <br>
                <iframe name="Msg" id="mostrar" height="144" width="676" title="Msg"></iframe>
            </section>
            <footer>
                <center>
                    <%
                        out.print(Acessorio.dataHourAuthor());
                    %>
                </center>
            </footer>
        </main>
    </body>
</html>
