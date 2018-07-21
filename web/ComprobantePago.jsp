<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Controlador.Conexion"%>
<%@page import="Controlador.Conexion"%>
<jsp:include page="Cabezera.jsp"/>
  <div class="content-wrapper">
    <!--Contenido Principal -->
    <section class="content">
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">TABLA DE COMPROBANTE DE PAGO</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                <tr role="row"><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Nombres</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Apellidos</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">DNI</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Estado</th></tr>
                </thead>
                <% 
                    try{
                    Conexion cn=new Conexion();
                    Connection con=null;
                    Statement sta=null;
                    ResultSet rs=null;
                    sta=cn.getConexion().createStatement();
                    rs=sta.executeQuery("select nombre_docente, apellido_docente, dni_docente from docente");
                    while(rs.next()){
                %>
                
                <tbody>  
                <tr role="row" class="odd">
                  <td class="sorting_1"><%=rs.getString(1)%></td>
                  <td><%=rs.getString(2)%></td>
                  <td><%=rs.getString(3)%></td>
                  <td><input type="checkbox" value=""></input></td>
                  <%
                    }
                    sta.close();
                    rs.close();
                    con.close();
                    }catch(Exception e){}
                %>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
             <div class="row">
                    <div class="col-xs-12">
                      <button class="btn btn-sm btn-info btn-flat pull-left"><a href="Contenido.jsp">ACEPTAR</button>
                      <button class="btn btn-sm btn-default btn-flat pull-right"><a href="Contenido.jsp">CANCELAR</button>
                    </div>
            </div>         
    </section>
  </div>
<jsp:include page="PiePagina.jsp"/> 