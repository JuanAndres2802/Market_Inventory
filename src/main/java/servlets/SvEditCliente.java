
package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import logica.Cliente;
import logica.Controladora;




@WebServlet(name = "SvEditCliente", urlPatterns = {"/SvEditCliente"})
public class SvEditCliente extends HttpServlet {

    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int documento =Integer.parseInt(request.getParameter("id"));
        
        Cliente cliente1 = control.traerCliente(documento);
        
        HttpSession misesion = request.getSession();
        
        misesion.setAttribute("cliente1Edit", cliente1);
        
        response.sendRedirect("editarCliente.jsp");
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String documento = request.getParameter("id");
        String nombre = request.getParameter("nom");
        String direccion = request.getParameter("dir");
        String telefono = request.getParameter("tel");
        
        //Aqui traemos el Usuario original - "getAtribute" hace referencia al nombre
        // del getAtribute del"ediraUsuario.jsp" 
        Cliente cliente1 = (Cliente) request.getSession().getAttribute("cliente1Edit");
        
        //Aqui vamos a modificar los datos
        //cliente1.setDocumento(documento);
        cliente1.setNombre(nombre);
        cliente1.setDireccion(direccion);
        //cliente1.setTelefono(telefono);
        
        //Por ultimo creamos el metodo para editar el usuario en la controladora
        control.editarCliente(cliente1);
        
        //Redireccionamos al servlet SvEditUsuario
        response.sendRedirect("svCliente");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
