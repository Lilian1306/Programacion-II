/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasepoo1;

import java.util.ArrayList;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author lilyt
 */
public class FrmVehiculo extends JFrame {

    JLabel lblTitulo = new JLabel("Registro de vehiculo");
    JLabel lblMarca = new JLabel("Marca:");
    JLabel lblModelo = new JLabel("Modelo:");
    JLabel lblAnio = new JLabel("Año:");
    JLabel lblPrecio = new JLabel("Precio:");
    JLabel lblMarcaLlanta = new JLabel("Marca Llanta:");
    JLabel lblTamanio = new JLabel("Tamaño:");
    JLabel lblPresion = new JLabel("Presion:");
    JLabel lblColor = new JLabel("Color:");
    
    JTextField txtMarca = new JTextField();
    JTextField txtModelo = new JTextField();
    JTextField txtAnio = new JTextField();
    JTextField txtPrecio = new JTextField();
    JTextField txtMarcaLlanta = new JTextField();
    JTextField txtTamanio = new JTextField();
    JTextField txtPresion = new JTextField();
    JTextField txtColor = new JTextField();

    JButton btnGuardar = new JButton("Guardar");
    
    JButton btnActualizar = new JButton("Actualizar");
    
    JButton btnEliminar = new JButton("Eliminar");
        //int contador = 0;

    JTable tablaVehiculos;
    DefaultTableModel modeloTabla;
    JScrollPane scrollTabla;
    
    int x = 20;
    ArrayList<Vehiculo> Vehiculos = new ArrayList();

    FrmVehiculo() {

        setTitle("Registro de Vehículo");
        setSize(500, 700); // 1. Cambiamos el alto a 600 para que quepa la tabla
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(null);

        lblTitulo.setBounds(150, 20, 200, 30);
        add(lblTitulo);

        lblMarca.setBounds(50, 70, 100, 30);
        add(lblMarca);
        txtMarca.setBounds(150, 70, 200, 30);
        add(txtMarca);

        lblModelo.setBounds(50, 110, 100, 30);
        add(lblModelo);
        txtModelo.setBounds(150, 110, 200, 30);
        add(txtModelo);

        lblAnio.setBounds(50, 150, 100, 30);
        add(lblAnio);
        txtAnio.setBounds(150, 150, 200, 30);
        add(txtAnio);

        lblPrecio.setBounds(50, 190, 100, 30);
        add(lblPrecio);
        txtPrecio.setBounds(150, 190, 200, 30);
        add(txtPrecio);

        lblMarcaLlanta.setBounds(50, 230, 100, 30);
        add(lblMarcaLlanta);
        txtMarcaLlanta.setBounds(150, 230, 200, 30);
        add(txtMarcaLlanta);

        lblTamanio.setBounds(50, 270, 100, 30);
        add(lblTamanio);
        txtTamanio.setBounds(150, 270, 200, 30);
        add(txtTamanio);

        lblPresion.setBounds(50, 310, 100, 30);
        add(lblPresion);
        txtPresion.setBounds(150, 310, 200, 30);
        add(txtPresion);
        
        txtColor.setBounds(155, 240, 200, 30);
        add(txtColor);
        
        lblColor.setBounds(50, 240, 100, 30);
        add(lblColor);

        btnGuardar.setBounds(120, 355, 120, 35);
        add(btnGuardar);
        
        btnActualizar.setBounds(260, 355, 120, 35);
        add(btnActualizar);
        
        btnEliminar.setBounds(390, 355, 120, 35);
        add(btnEliminar);
        
        
        Conexion c = new Conexion();
        Vehiculos = c.mostrarVehiculos();
        
        modeloTabla = new DefaultTableModel();
        
        modeloTabla.addColumn("id");
        modeloTabla.addColumn("Marca");
        modeloTabla.addColumn("Modelo");
        modeloTabla.addColumn("anho");
        modeloTabla.addColumn("color");
        modeloTabla.addColumn("precio");
        
        tablaVehiculos = new JTable(modeloTabla);
            
        scrollTabla = new JScrollPane(tablaVehiculos);
            
        scrollTabla.setBounds(30, 400, 420, 180);
        add(scrollTabla);
        

        recorremosVehiculos();
        System.out.println("ya tengo mis vehiculos " + Vehiculos.size());
            
        this.btnGuardar.addActionListener(e-> {
            funcionbtn();
        });
            
        this.btnActualizar.addActionListener(e-> {
            funcionActualizar();
        });
        
        this.btnEliminar.addActionListener(e -> {
            funcionEliminar();
        });
            
        this.tablaVehiculos.getSelectionModel().addListSelectionListener(e -> {
            // Esto evita que el evento se dispare dos veces por clic
            if (!e.getValueIsAdjusting() && tablaVehiculos.getSelectedRow() != -1) {
                funcionfila();
            }
        });
    }

    // --- AQUÍ CREAMOS EL MÉTODO NUEVO ---
    private void recorremosVehiculos() {
        for(int i = 0; i < Vehiculos.size(); i++){
            Vehiculo carro = Vehiculos.get(i);
            this.modeloTabla.addRow(new Object[]{
                carro.getId(),
                carro.getMarca(), 
                carro.getModelo(), 
                carro.getAnio(),
                carro.color,
                carro.GetPrecio()
            });
        }
    }

    public void funcionbtn() {
        String marca = this.txtMarca.getText();
        String modelo = this.txtModelo.getText();
        int anio = Integer.parseInt(this.txtAnio.getText());
        double precio = Double.parseDouble(this.txtPrecio.getText());
        String color = this.txtColor.getText();
        
        int id = Vehiculos.size() + 1;
        Vehiculo carro = new Vehiculo(id, marca, modelo, anio, precio, color);

        this.modeloTabla.addRow(new Object[]{
            carro.getId(),
            carro.getMarca(), 
            carro.getModelo(), 
            carro.getAnio(),
            carro.color,
            carro.GetPrecio()
        });
        
        this.Vehiculos.add(carro);
        
        Conexion c = new Conexion();
        c.insertarVehiculo(id, marca, modelo, anio, precio, color);

        JOptionPane.showMessageDialog(this, "vehiculo guardado");

        this.txtMarca.setText("");
        this.txtModelo.setText("");
        this.txtAnio.setText("");
        this.txtPrecio.setText("");
        this.txtColor.setText("");
    }
    
    private void funcionfila() {
        int fila = this.tablaVehiculos.getSelectedRow();
        Vehiculo c = this.Vehiculos.get(fila);
        
        this.txtMarca.setText(c.getMarca());
        this.txtModelo.setText(c.getModelo());
        this.txtAnio.setText(String.valueOf(c.getAnio()));
        this.txtPrecio.setText(String.valueOf(c.GetPrecio()));
        this.txtColor.setText(c.color);
    }
        
    public void funcionActualizar() {
        int fila = tablaVehiculos.getSelectedRow();
        
        if (fila == -1) {
            JOptionPane.showMessageDialog(this, "Por favor, seleccione un vehículo de la tabla primero.");
            return;
        }

        Vehiculo vehiculoSeleccionado = Vehiculos.get(fila);
        int id = vehiculoSeleccionado.getId(); 

        String marca = this.txtMarca.getText();
        String modelo = this.txtModelo.getText();
        int anio = Integer.parseInt(this.txtAnio.getText());
        double precio = Double.parseDouble(this.txtPrecio.getText());
        String color = this.txtColor.getText();

        Conexion c = new Conexion();
        c.actualizarVehiculo(id, marca, modelo, anio, precio, color);

        vehiculoSeleccionado.marca = marca;
        vehiculoSeleccionado.modelo = modelo;
        vehiculoSeleccionado.setAnio(anio);
        vehiculoSeleccionado.SetPrecio(precio);
        vehiculoSeleccionado.color = color;

        modeloTabla.setValueAt(marca, fila, 1);
        modeloTabla.setValueAt(modelo, fila, 2);
        modeloTabla.setValueAt(anio, fila, 3);
        modeloTabla.setValueAt(color, fila, 4);
        modeloTabla.setValueAt(precio, fila, 5);

        JOptionPane.showMessageDialog(this, "Vehículo actualizado correctamente");
        
        tablaVehiculos.clearSelection();
    }
    
    public void funcionEliminar() {
     int fila = tablaVehiculos.getSelectedRow();

     if (fila == -1) {
         JOptionPane.showMessageDialog(this, "Por favor, seleccione un vehículo de la tabla para eliminar.");
         return;
     }

     // Obtener el ID
     Vehiculo vehiculoSeleccionado = Vehiculos.get(fila);
     int id = vehiculoSeleccionado.getId(); 

     // Eliminar de Oracle
     Conexion c = new Conexion();
     c.eliminarVehiculo(id);

     // Eliminar de nuestro ArrayList y de la tabla visual
     Vehiculos.remove(fila);
     modeloTabla.removeRow(fila);

     JOptionPane.showMessageDialog(this, "Vehículo eliminado correctamente");

     // Limpiar los textfields
     this.txtMarca.setText("");
     this.txtModelo.setText("");
     this.txtAnio.setText("");
     this.txtPrecio.setText("");
     this.txtColor.setText("");
     tablaVehiculos.clearSelection();
 }
}