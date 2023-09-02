% ------------------------------------------------------------------------
% Escuela Politécnica Nacional
% Procesamiento Digital de Señales (Doctorado FIEE)
% Proyecto de Fin de Curso
% David Fabián Cevallos Salas
% ------------------------------------------------------------------------

% ------------------------------------------------------------------------
% Mejorando imágenes para poder distinguir detalles (image sharpening)
% ------------------------------------------------------------------------
clc; clear;

% Paso 1: Lectura de la imagen original
a = im2double(imread("img5.png"));
figure;
imshow(a)
title("a) Imagen original");

% Paso 2: Obtención del Laplaciano y suma a la imagen original para realce
% de aspectos finos (sharpening)
w8 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
b = imfilter(a, w8, "replicate");
c= a+b;

figure;
imshow(b);
title("b) Laplaciano de imagen original")

figure;
imshow(c);
title("c) Adición de Laplaciano a imagen original")

% Paso 3: Obtención del gradiente Sobel y smoothing con kernel 5x5
d = imgradient(a);

figure;
imshow(d);
title("d) Gradiente Sobel de imagen original")

e = wiener2(d,[5 5]);
figure;
imshow(e);
title("e) Gradiente Sobel después de aplicada filtro smoothing de 5x5");

% Paso 4: Obtención de máscara como producto de (f) y (e) y adición de la
% misma a la imagen original
f = c.*e;

figure;
imshow(f);
title("f) Máscara formada por el producto de (c) y (e)");

g = a+f;
figure;
imshow(g);
title("g) Suma de imagen original (a) con máscara (f) (sharpening)");

% Paso 5: Transformación de intensidad de escala de grises mediante
% técnica de Power Law (Gamma) Transformation con parámetros c igual a 1 y 
% gamma igual a 0.5. Se graba imagen resultante en disco.
cp = 1;
gamma = 0.5;
h = real(cp.*(g.^gamma));

figure;
imshow(h);
title("h) Imagen final resultante");

% Se graba en disco imagen resultante
imwrite(h,"img5_enhanced.png");
