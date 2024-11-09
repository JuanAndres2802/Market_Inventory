
package logica;


import jakarta.persistence.PersistenceException;
import java.util.List;
import persistencia.controladoraPersist;

public class Controladora {
   
    controladoraPersist controlPer = new controladoraPersist();
    
    public void crearCliente(int documento, String nombre, String correo,int telefono , String direccion ) {
    // Validación de datos
    if (documento <= 0 || nombre.isEmpty() || correo.isEmpty() || telefono <= 0 || direccion.isEmpty() ) {
        throw new IllegalArgumentException("Datos de cliente inválidos");
    }

    Cliente cliente1 = new Cliente();
    
        cliente1.setDocumento(documento);
        cliente1.setNombre(nombre);
        cliente1.setCorreo(correo);
        cliente1.setTelefono(telefono);
        cliente1.setDireccion(direccion);
        
        
        
            try {
                controlPer.crearCliente(cliente1);
            } catch (PersistenceException ex) {
                throw new RuntimeException("Error al crear el cliente", ex);
            }
        
}
    
    public List<Cliente> mostrarClientes() {
        return controlPer.mostrarClientes();
    }

    public void borrarCliente(int documento) {
        controlPer.borrarCliente(documento);
    
}

    public Cliente traerCliente(int documento) {
        //Nos retorna lo que hace el metodo en la controladora de la persistencia
       return controlPer.traerCliente(documento);
    }

    public void editarCliente(Cliente cliente1) {
        //Llamamos al persistencia con el metodo creado
        controlPer.editarCliente(cliente1);
    }
     
}

