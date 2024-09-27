# Usando uma imagem base do OpenJDK 21
FROM openjdk:21-jdk-slim

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando o arquivo JAR da aplicação para a imagem
COPY target/AT_javaMicrosservicos_questao6-0.0.1-SNAPSHOT.jar app.jar

# Expondo a porta que a aplicação vai usar
EXPOSE 8080

# Comando para executar a aplicação
CMD ["java", "-jar", "app.jar"]
