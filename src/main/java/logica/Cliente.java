
package logica;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.io.Serializable;


@Entity
public class Cliente extends Persona implements Serializable {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int idCliente;
    private String UsuarioCliente;
    private String contrasena;
    private String direccion;

    public Cliente() {
    }

    public Cliente(int idCliente, String UsuarioCliente, String contrasena, String direccion) {
        this.idCliente = idCliente;
        this.UsuarioCliente = UsuarioCliente;
        this.contrasena = contrasena;
        this.direccion = direccion;
    }

    public Cliente(int idCliente, String UsuarioCliente, String contrasena, String direccion, int documento, String nombre, int telefono, String correo) {
        super(documento, nombre, telefono, correo);
        this.idCliente = idCliente;
        this.UsuarioCliente = UsuarioCliente;
        this.contrasena = contrasena;
        this.direccion = direccion;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getUsuarioCliente() {
        return UsuarioCliente;
    }

    public void setUsuarioCliente(String UsuarioCliente) {
        this.UsuarioCliente = UsuarioCliente;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    
    
    
}
    