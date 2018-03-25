# FaceTweaking


Scalable application for tweaking a photo of a face. Ex: Adding beard, changing eye color, making her smile

<img src="https://github.com/victorvianna/FaceTweaking/tree/master/screenshots/eyes-screenshot.png" alt="Changing eye color" >
<img src="https://github.com/victorvianna/FaceTweaking/tree/master/screenshots/beard-screenshot.png" alt="Beard addition" >

Keywords: Image morphing, seamless cloning, factory design pattern

## Authors

Cauim de Souza Lima  
Gabriel Fedrigo Barcik  
Victor Hugo Vianna

## Requirements

Java 1.8
OpenCV 3.2

## Instructions

Add the desired image file as image.jpg to the project root, open a shell and run
```
$ bash RUN.sh
```

## Scalability: Implementing new features

To implement a new feature, it suffices to create a new folder in lib/features that contains YourClass.h/YourClass.cpp (inheriting from BaseFeature) and a 'media' directory with the images you will use during the morphing. You also need to adapt engine/main.cpp accordingly.

## Acknowledgements

https://github.com/spmallick/learnopencv

