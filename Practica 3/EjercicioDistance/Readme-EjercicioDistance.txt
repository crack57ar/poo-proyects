Instrucciones:
1- Levantar Pharo
2- Boton derecho sobre el desktop, elegir "Tools"
3- Elegir "File Browser"
4- Ubicar el archivo "EjerciciosPoo-Distance.st" en el panel superior derecho
5- Seleccionarlo y presionar el boton "filein"
6- Esperar a que se carge el codigo
7- Abrir un Browser e ir a la categoria "EjerciciosPoo-Distance". Ahi veran una clase
   llamada "DistanceTest". Esta clase es subclase de TestCase que forma parte del
   framework de testing unitario denominado SUnit. Cada metodo de esta clase que 
   empiece con "test" representa un test que puede ser ejecutado.
8- Para correr los test:
   1- Boton derecho sobre el test, la categoria o la clase, opcion "Run test"
   2- Boton derecho sobre el desktop, opcion "Test Runner", luego busquen la categoria y la clase de test, etc.
   3- Instalar paquete "TDDFacilities" de SqueakSource (leer libro de pharo sobre como hacerlo) para poder ejecutar los test 
      presionando Ctrl+T directamente en el code panel
9- Hacer que todos los test de DistanceTest funcionen!!!!

Objetivo:
La idea de este ejercicio es que hagan correr todos los test escritos en la clase
DistanceTest obteniendo asi un modelo de objetos que conforme con los test provistos.
En este caso los test juegan el papel de "Definicion de Requerimientos", pero no solo
eso sino que tambien les permite a ustedes ir desarrollando la solucion de manera 
iterativa e incremental, y a medida que lo van haciendo, verificar que no hayan 
metido la pata en algun cambio.
Los test estan organizados en categorias que empiezan con un numero, por ejemplo
"1 - Test equality", "2 - Test xxxx", etc. Se debe seguir el orden de las categorias
para resolver los test. 
A su vez los test tambien estan numerados, por ejemplo "test01Accessing", 
"test02EqualSameUnit", etc.
Los test estan numerados con el objetivo de ayudarlos en la construccion de la
solucion, por lo tanto les aconsejamos seguir el orden propuesto.
Cuando un test no funciona pueden seleccionar el test que fallo, por ejemplo 
"DistanceTest>>#test01Accessing" y al hacerlo se levantara el debuger indicando
donde se produjo el error. A partir de ahi, hay que modelar y codificar!!!. Traten de
hacerlo como mostramos en la clase de Squeak, desde el debugger. Sino, tambien pueden
usar el Browser por supuesto.
Hay metodos que proveen objetos usados en los test como por ejemplo el metodo #oneMeter.
La implementacion que proveemos dice algo por el estilo: "self error: 'Este metodo 
debe devolver un objeto que represente un metro'", y eso es justamente lo que deben 
hacer. O sea, deben reemplazar esta implementacion por la que ustedes hagan de tal 
manera que devuelva un objeto que represente la entidad "un metro".

Bueno, esperamos que lo disfruten. Cualquier problema o duda no se olviden de consultar
a la lista de docentes.
PEDIDO: Este readme fue escrito muy rapido. Cualquier mejora, error de ortografia, etc.
que vean, por favor avisen asi lo mejoramos. Gracias.




