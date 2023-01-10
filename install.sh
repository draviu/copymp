#!/bin/bash

# Create the file
touch /usr/local/bin/copymp

# Add the code to the file
echo "#!/bin/bash

echo "Introduce el directorio origen: "
read vardir
echo "Introduce el directorio destino: "
read vardirfinal

# Verificar si el directorio origen existe
if [ -d "$vardir" ]; then
  # Verificar si existe el directorio smali/com/metasploit en el directorio origen
  if [ -d "$vardir/smali/com/metasploit" ]; then
    # Crear el directorio smali/com en el directorio destino si no existe
    if [ ! -d "$vardirfinal/smali/con" ]; then
      mkdir -p "$vardirfinal/smali/con"
    fi
    # Copiar el contenido del directorio smali/com/metasploit al directorio smali/con en el directorio destino
    cp -r "$vardir/smali/com/metasploit" "$vardirfinal/smali/com"
    echo "La carpeta $vardir/smali/com/metasploit ha sido copiada en $vardirfinal/smali/com"
  else
    echo "No se encontró la carpeta smali/com/metasploit en $vardir"
  fi
else
  echo "El directorio $vardir no existe"
fi" > /usr/local/bin/copymp

# Make the file executable
chmod +x /usr/local/bin/copymp
