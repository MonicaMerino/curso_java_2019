package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Generamos pagina web cuando desde el navegador lanzamos una peticion al
 * servlet. Como resultado se envía una respuesta al navegador
 */
@WebServlet("/Saludo")
public class Saludo extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body><center>");
		for (int i = 1; i <= 6; i++) {
			out.println("<h" + i + "> Bienvenido a mi servlet otra vez</h" + i + ">");
		}

		out.println("</center></body>");
		out.println("</html>");
		out.close();
	}

}
