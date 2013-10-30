Curso : Perl Avanzado

    Módulo : Objetos en Perl

    Tema : Programación dirigida a objetos tradicional

    Ejercicio 1 )
        Creación de una jerarquía de clases en Perl

    Uso :
        Llamada : perl Alumnos.pl <CentroEducativo> <lista de alumnos separados por coma>
        Ejemplo : perl Alumnos.pl UGR Sergio,Toni,Edu,Nico

    Archivos :
        Módulo :
            Archivo : Alumnos.pm
            Ruta : /home/sergio/Docs/Perl/CursoPerlAvanzado/1/submit/lib/PA/
        Archivo de prueba" :
            Archivo : Alumnos.pl
            Ruta : /home/sergio/Docs/Perl/CursoPerlAvanzado/1/submit/
    Dudas
        1 : ¿ Cómo guardar en un @array todo el contenido de @_?
                El código:
                    my @arr = @_ || die "Muero";
                Al ejecutarlo, muere...

