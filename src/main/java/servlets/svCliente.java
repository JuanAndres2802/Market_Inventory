
package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import logica.Cliente;
import logica.Controladora;



@WebServlet(name = "svCliente", urlPatterns = {"/svCliente"})
public class svCliente extends HttpServlet {

    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Cliente> ListaClientes = new ArrayList<Cliente>();
        
        ListaClientes = control.mostrarClientes();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("ListaClientes",ListaClientes);
        
        response.sendRedirect("mostrarCliente.jsp");
        
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String documento = request.getParameter("doc");
        String nombre = request.getParameter("nom");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("tel");
        String direccion = request.getParameter("dir");
        
        
        
        
        control.crearCliente(0, nombre, correo, 0, direccion);
       
        response.sendRedirect("index.jsp");
        
    }

            
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
