<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.producto"%>
<%
    if(session.getAttribute("listapro")== null){
    ArrayList<producto> lisaux =new ArrayList<producto>();
    session.setAttribute("listapro",lisaux);
    }
    ArrayList<producto> lista=(ArrayList<producto>)session.getAttribute("listapro");
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de productos</h1>
        <a href="MainServlet?op=nuevo">nuevo registro
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th></th>
                    <th></th>
                    
                </tr>
                <%
                    if(lista != null){
                    for(producto item : lista){
                    
                    
                    
                    %>
                <tr>
                    <td><%=item.getId() %></td>
                    <td><%=item.getDescripcion() %><</td>
                    <td><%=item.getCantidad() %></td>
                    <td><%=item.getPrecio() %></td>
                    <td><%=item.getCategoria() %></td>
                    <td>
                        <a href="MainServlet?op=editar&id=<%=item.getId() %>">editar</a>
                        
                    </td>
                    <td>
                        <a href="MainServlet?op=eliminar&id=<%=item.getId() %>"
                           onclick="return(confirm("Esta seguro de eliminar??"))"
                           >eliminar</a>
                        
                        
                    </td>
                </tr>
                <%
                    }
                    }
                    %>
            </table>
    </body>
</html>
