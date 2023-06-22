# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de la báscula al directorio de trabajo
COPY . /app

# Instala las dependencias
RUN pip install -r requirements.txt

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8000

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
