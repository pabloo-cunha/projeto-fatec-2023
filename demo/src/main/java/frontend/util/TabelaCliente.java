package frontend.util;

import javafx.scene.control.CheckBox;

public class TabelaCliente {
    private String empresa;
    private String responsavel;
    private CheckBox selecione;
    public TabelaCliente(String empresa, String responsavel) {
        this.empresa = empresa;
        this.responsavel = responsavel;
        this.selecione = new CheckBox();
    }

    public String getempresa() {
        return empresa;
    }

    public String getresponsavel() {
        return responsavel;
    }

    public boolean getSelecione() {
        return selecione.isSelected();
    }

    public void selecionarUsuario() {
        this.selecione.setSelected(true);
    }
}