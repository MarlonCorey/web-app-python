# Usando uma imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar o arquivo requirements.txt para o container
COPY requirements.txt requirements.txt

# Instalar as dependências no container
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código da aplicação para dentro do container
COPY . .

# Expor a porta onde a aplicação irá rodar
EXPOSE 5000

# Comando para rodar a aplicação Flask
CMD ["python", "app.py"]
