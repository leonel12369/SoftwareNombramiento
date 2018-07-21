
<jsp:include page="Cabezera.jsp"/>
  <!-- contenedor de todo la pagina-->
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <form action="AgregarDocente" method="post">
        <div class="row">
            <div class="x_title margB0 row" >
                <div class="col-md-7" style="text-align:right">
                    <div>
                        <h4 id="txtTitle" class="margB0"><b><u>Informacion Personal</u></b></h4></br>
                    </div>
                </div>
            </div>
            <div class="form-group-sm">
                <div class="col-sm-4">
                    <label>NOMBRE:</label>
                    <input type="text" name="nombre_docente" class="form-control" > </input>
                </div>
                <div class="col-sm-4">
                    <label>APELLIDO:</label>
                    <input type="text" name="apellido_docente" class="form-control" > </input>
                </div>
                <div class="col-sm-3">
                    <label>TELEFONO:</label>
                    <input type="text" name="telefono" class="form-control" > </input>              
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group-sm">
                <div class="col-sm-4">
                    <label>DNI: </label>
                    <input type="text" name="dni_docente" class="form-control"  required>
                </div>
                <div class="col-sm-4">
                    <label>EMAIL:</label>
                    <input type="text" name="email" class="form-control" required>
                </div>
                <div class="col-sm-3">
                    <label>DIRECCION: </label>
                    <input type="text" name="direccion" class="form-control"  required>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group-sm">
                <div class="col-sm-4">
                    <label>FECHA DE NACIMIENTO </label>
                    <input type="date" name="fecha_nacimiento" class="form-control"  required>
                </div>
                <div class="col-sm-4">
                    <label>EDAD: </label>
                    <input type="text" name="edad" class="form-control"  required>
                </div>
                <div class="col-sm-3">
                    <label>CODIGO FACULTAD: </label>
                    <input type="text" name="codigo_facultad" class="form-control" maxlength="2" placeholder="colocar 27"  required>
                </div>
            </div>
        </div></br>
        
        
        <div class="row">
            <div class="x_title margB0 row" >
                <div class="col-md-7" style="text-align:right">
                    <div>
                        <h4 id="txtTitle" class="margB0"><b><u>Datos de plaza de nombramiento a la que psotula</u></b></h4></br>
                    </div>
                </div>
            </div>
            <div class="form-group-sm">
                <div class="col-sm-4">
                    <label>FACULTAD:</label>
                    <input type="text" name="facultad" class="form-control" required> </input>
                </div>
                <div class="col-sm-4">
                    <label>DEPARTAMENTO ACADEMICO:</label>
                    <input type="text" name="nombre_departamento" class="form-control" > </input>
                </div>
                <div class="col-sm-3">
                    <label>AREA:</label>
                    <input type="text" name="area" class="form-control" > </input>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group-sm">
                <div class="col-sm-4">
                    <label>TIPO DE NOMBRAMIENTO:</label>
                    <input type="text" name="tipo_nombramiento" class="form-control" required> </input>
                </div>
                <div class="col-sm-4">
                    <label>REGIMEN DE DEDICACION: </label>
                    <input type="text"  name="regimen_dedicacion"class="form-control"  required>
                </div>
            </div>
        </div>
        
        
        <div class="row">
            <div class="form-group-sm">
                <div class="col-sm-4">
                    <label>ASIGNATURA EN CONDICION DE DICTAR: </label>
                    <div class="col-md-10 col-sm-12 col-xs-12">
                        <input type="text"  name="asignatura"class="form-control">
                    </div>
                </div>
                <div class="col-sm-4">
                    <label>GRADO ACADEMICO QUE POSEE: </label>
                     <div class="col-md-10 col-sm-12 col-xs-12">
                        <input type="text"  name="grado"class="form-control"  >
                    </div>
                </div>
                <div class="col-sm-4">
                    <label>TITULO PROFESIONAL QUE POSEE:</label>
                    <div class="col-md-10 col-sm-12 col-xs-12">
                        <input type="text"  name="titulo"class="form-control" >
                    </div>
                </div>
            </div>
        </div></br>
        <div class="row">
            <div class="col-xs-12">
                <button type="submit" class="btn btn-sm btn-info btn-flat pull-left">ACEPTAR</button>
                <button class="btn btn-sm btn-default btn-flat pull-right"><a href="Contenido.jsp">CANCELAR</button>
            </div>
        </div>
        </form>
    </section>
  </div>
<jsp:include page="PiePagina.jsp"/>