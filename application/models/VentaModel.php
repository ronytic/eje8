<?php
class VentaModel extends CI_Model
{


    public function insertar($nombre, $nit, $total, $cancelado, $cambio)
    {

        $datos = [
            'nombre' => "$nombre",
            'nit' => "$nit",
            'total' => "$total",
            'cancelado' => "$cancelado",
            'cambio' => "$cambio",
            'fecha' => date("Y-m-d"),
            'hora' => date("H:i:s"),
            'activo' => 1,
        ];


        return $this->db->insert("venta", $datos);
    }

    public function ultimo()
    {
        return $this->db->insert_id();
    }
}
