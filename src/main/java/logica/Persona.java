
package logica;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import java.io.Serializable;


@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
public class Persona implements Serializable {
   
   @Id
   //Esto es para que la id sea secuencial una con otra 1, 2, 3, ect (IDENTITY)
   @GeneratedValue(strategy=GenerationType.IDENTITY)
   private int documento;
   private String nombre;
   private int telefono;
   private String correo;

    public Persona() {
    }

    public Persona(int documento, String nombre, int telefono, String correo) {
        this.documento = documento;
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
    }

    public int getDocumento() {
        return documento;
    }

    public void setDocumento(int documento) {
        this.documento = documento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
   
   

    
}