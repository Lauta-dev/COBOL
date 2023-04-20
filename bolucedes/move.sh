#!/bin/bash

COBOL() {
  local ruta=$(pwd)
  echo "Nombre del archivo COBOL + su extencion"
  read archivo
  local programa=$(cobc -x "$ruta/$archivo")
  local ls=$(ls)
  echo $ls
} 
COBOL
