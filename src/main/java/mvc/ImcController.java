package mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/mvc/imc")
public class ImcController extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        //Prepara para a execu��o.
        String altString = request.getParameter ( "altura" );
        String pesoString = request.getParameter ( "peso" );
        String sex = request.getParameter ( "sexo" );

        if (altString == "" || pesoString == "" || sex == "")
            request.setAttribute ( "resultado", "Por favor preencha todos os campos!" );
        else {
            altString = altString == null ? "0" : altString;
            float alt = Float.valueOf ( altString );

            pesoString = pesoString == null ? "0" : pesoString;
            float peso = Float.valueOf ( pesoString );

            float imc = peso / alt * alt;

            //Executa "regras de neg�cio".
            ImcModel model = new ImcModel ( imc, sex );
            String resultado = model.resultado ();

            //Passa a v�ri�vel para a p�gina JSP.
            request.setAttribute ( "resultado", resultado );
        }
        //Chama p�gina JSP.
        request.getRequestDispatcher ( "../mvc/ImcView.jsp" ).
                forward ( request, response );

    }
}
