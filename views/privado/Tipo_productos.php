<?php
require_once('../../core/helpers/privado.php');
PaginaPrivado::headerPrivado('Tipos de productos','TipoProductos');
?>

<div>
    <div class="row">
    <!-- Formulario de búsqueda -->
        <div class="col l10 offset-l1 m10 offset-m1 s12">
            <div class="card-panel z-depth-5 center-align" id="CajaEncabezado">
                <div class="row">
                    <h3>Gestión de tipos de productos</h3>
                        <div class="row">
                            <div class="col l8 offset-l2 m12 s12">
                             <!-- Botón para abrir ventana de nuevo registro -->
                                <a onclick="ModalCrear()" class="btn-medium waves-effect waves-light red btn">Agregar tipo<i class="material-icons left">add</i></a>
                                <!-- <a onclick="" class="btn-medium waves-effect waves-light cyan btn">
                                Generar reporte<i class="material-icons left">content_paste</i></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col l10 offset-l1 m10 offset-m1 s12">
            <div class="card-panel z-depth-5 center-align" id="CajaCuerpo">
                <div class="row">
                    <form method="POST" id="Buscar_tipo_productos" name="Buscar_tipo_productos" autocomplete="off" method="POST" enctype="multipart/form-data" onsubmit="return Validar_Buscar_Tipo_Productos();">
                        <div class="input-field center-align col s10 m8 offset-m2 l7 offset-l2">
                            <i class="material-icons prefix">search</i>
                            <input id="txt_buscar" type="text" name="txt_buscar" minlength="1" maxlength="50" onkeypress="return ValidarEscritura3(event, 'car', this)" autocomplete = "off"  oncopy="return false" oncut="return false" onpaste="return false" oncut="return false" onpaste="return false" required/>
                            <label for="txt_buscar" id="lbBuscar">Buscar tipo de producto</label>
                        </div>
                        <div class="input-field col s1 m1 l1">
                        <button type="submit" class="btn-floating btn-medium waves-effect waves-light red  tooltipped" data-tooltip="Buscar"><i class="material-icons">check</i></button>
                         </div>
                    </form>
                </div>
                <div class="row" id="FilaTabla">
                <!-- Tabla para mostrar los registros existentes -->
                    <table class="responsive-table highlight striped centered"  id="Tabla">
                        <thead>
                            <tr>
                                <th>N°</th>
                                <th>Tipo de producto</th>
                                <th>Promoción</th>
                                <th>Acción</th>
                            </tr>
                        </thead>
                        <tbody id="CuerpoTabla">              
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<!-- Ventana para crear o actualizar un registro -->

<div id="save-modal" class="modal">
    <div class="modal-content">
                <h4 id="modal-title" class="center-align"></h4>
        <form method="POST" id="Tipo_productos" name="Tipo_productos" autocomplete="off" method="POST" enctype="multipart/form-data" onsubmit="return Validar_Tipo_Productos();">
            <input class="hide" type="text" id="id_tipo" name="id_tipo"/>
                <div class="row">
                    <div class="input-field col s12 m6">
                        <i class="material-icons prefix">shop_two</i>
                        <input id="txt_tipo" type="text" name="txt_tipo" class="validate" minlength="2" maxlength="50" onkeypress="return ValidarEscritura3(event, 'car', this)" autocomplete = "off"  oncopy="return false" oncut="return false" onpaste="return false" oncut="return false" onpaste="return false" required/>
                        <label for="txt_tipo">Tipo</label>
                    </div>
                    <div class="input-field col s12 m6">
                        <i class="material-icons prefix">card_giftcard</i>
                        <input id="txt_promocion" type="number" name="txt_promocion" class="validate" min="0" max="50" step="1" onkeypress="return ValidarEscritura(event, 'num', this)"  oncopy="return false" oncut="return false" onpaste="return false" oncut="return false" onpaste="return false" required/>
                        <label for="txt_promocion">Promoción</label>
                    </div>
                </div>
            </div>
            <div class="row center-align">
                <a href="#" class="btn waves-effect grey tooltipped modal-close" data-tooltip="Cancelar"><i class="material-icons">cancel</i></a>
                <button type="submit" class="btn waves-effect blue tooltipped" data-tooltip="Guardar"><i class="material-icons">save</i></button>
            </div>
        </form>
    </div>
</div>


<?php
require_once('../../core/helpers/privado.php');
PaginaPrivado::footerPrivado('TipoProductos');
?>