<%-- 
    Document   : agregarVideo
    Created on : 29/08/2023, 5:45:58 p. m.
    Author     : Juan Goyes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="agregarVideoInterfaz.css"/>
        <title>Reproductor de música</title>
        
    </head>
    <body>
        <h1>Sistema reproductor de video</h1>
        <form action="SvVideo" method="POST">
            
            <label for="idVideo">idVideo: </label>
            <input type="text" name="idVideo"><br>

            <label for="titulo">Titulo: </label>
            <input type="text" name="titulo"><br>


            <label for="autor">Autor: </label>
            <input type="text" name="autor"><br>

            <label for="anio">Año: </label>
            <input type="text" name="anio"><br>

            <label for="categpria">Categoría: </label>
            <input type="text" name="vategoria"><br>

            <label for="url">URL: </label>
            <input type="text" name="url"><br>

            <label for="letra">Letra:</label>
            <textarea id = "id"  name ="name" rows="5" cols="10"> </textarea><br>

            <input type="submit" value="Agregar video">



        </form>

        <ul>
            <li><a href="index.jsp">Regresar al video</a></li>

        </ul>

    </body>
</html>
