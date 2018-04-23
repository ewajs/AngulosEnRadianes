# AngulosEnRadianes
Scripts de MATLAB que demuestran distintas propiedades trigonométricas

## moviepoligono.m
Script que genera una película que demuestra la aproximación de pi por polígonos inscritos en un círculo. La película generada va incrementando el número de lados del polígono y calculando la aproximación de pi para esa cantidad de lados. Utiliza la función auxiliar `poligonoinscrito.m`

## moviearco.m
Funcion que genera una película desde 0 radianes hasta el ángulo especificado como parámetro mostrando el valor del radio, ángulo y arco en cada paso. Utiliza la función auxiliar `grafarco.m`

### Dependencias
Algunos de estos scripts se valen de la función [movie2gif de Nicolae Cindea](https://www.mathworks.com/matlabcentral/fileexchange/17463-movie-to-gif-converter) para exportar la película resultante a un archivo .gif, en caso de no disponer de la misma, se deberán comentar las invocaciones a dicha función para evitar un error en el script, inhibiendo a la vez la producción la animación.
