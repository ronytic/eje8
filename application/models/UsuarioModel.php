<?php

class UsuarioModel extends CI_Model
{

    //////
    ////
    //

    function seleccionar($usuario, $contrasena)
    {
        $this->db->select('*');
        $this->db->where('activo', 1);
        $this->db->where('usuario', $usuario);
        $this->db->where('contrasena', sha1($contrasena));

        $query = $this->db->get('usuario');

        return $query->result();
    }
}
