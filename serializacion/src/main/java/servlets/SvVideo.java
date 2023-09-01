package servlets;

import com.umariana.mundo.Video;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {

    ArrayList<Video> misVideos = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // aqui vienen los datos por GET

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idVideo = request.getParameter("idVideo");
        int idVideoN = Integer.parseInt(idVideo);
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anio = request.getParameter("anio");
        String genero = request.getParameter("genero");
        String url = request.getParameter("url");
        String letra = request.getParameter("letra");

        Video miVideo = new Video(idVideoN, titulo, autor, anio, genero, url, letra);
        misVideos.add(miVideo);
        
        //agregar ArrayList al objeto de solicitud como atributo
        request.setAttribute("misVideos", misVideos);
        
        //redireccionar a la pagina del destino
        request.getRequestDispatcher("listarVideo.jsp").forward(request, response);

        
        /**for (Video v : misVideos) {
            System.out.println("idVideo: " + v.getIdVideo() );
            System.out.println("Titulo: " + v.getTitulo());
            System.out.println("Autor: " + v.getAutor());
            System.out.println("Anio: " + v.getAnio());
            System.out.println("Genero: " + v.getGenero());
            System.out.println("Url: " + v.getUrl());
            System.out.println("Letra: " + v.getLetra());
        }**/

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
