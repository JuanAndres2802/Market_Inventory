
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Cliente;
import persistencia.exceptions.NonexistentEntityException;


public class controladoraPersist {
    
    //Creamos las Instancias de las clases JPAcontroller
    ClienteJpaController CliJPA = new ClienteJpaController();
    PersonaJpaController PerJPA = new PersonaJpaController();
    ProductoJpaController ProducJPA = new ProductoJpaController();
    ProveedorJpaController ProvJPA = new ProveedorJpaController();
    UsuarioJpaController UsuJPA = new UsuarioJpaController();
    
    
    //DEBEMOS CREAR EL CONSTRUCTOR PARA TODOS LOS METODOS

    public controladoraPersist() {
    }
    

    public void crearCliente(Cliente cliente1) {
        CliJPA.create(cliente1);
    }

    public List<Cliente> mostrarClientes() {
       
       return CliJPA.findClienteEntities();
    }

    public void borrarCliente(int id) {
        try {
            CliJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(controladoraPersist.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

    public Cliente traerCliente(int id) {
        return CliJPA.findCliente(id);
        
    }

    public void editarCliente(Cliente cliente1) {
        try {
            CliJPA.edit(cliente1);
        } catch (Exception ex) {
            Logger.getLogger(controladoraPersist.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
