
package logica;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Proveedor extends Persona {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int empresa;

    public Proveedor() {
    }

    public Proveedor(int empresa) {
        this.empresa = empresa;
    }

    public Proveedor(int empresa, int documento, String nombre, int telefono, String correo) {
        super(documento, nombre, telefono, correo);
        this.empresa = empresa;
    }

    public int getEmpresa() {
        return empresa;
    }

    public void setEmpresa(int empresa) {
        this.empresa = empresa;
    }

    

    
    
}
