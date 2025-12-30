# 🚀 Technical Test Backend – FastAPI + PostgreSQL + Docker

Backend desarrollado con **FastAPI**, **SQLAlchemy** y **PostgreSQL**, completamente dockerizado 🐳.  
Incluye autenticación con **JWT**, manejo seguro de contraseñas y configuración lista para ejecutar en cualquier máquina.

---

## 🧱 Tecnologías utilizadas

- 🐍 **Python 3.10**
- ⚡ **FastAPI**
- 🐘 **PostgreSQL 15**
- 🧰 **SQLAlchemy**
- 🔐 **JWT (python-jose)**
- 🔑 **Passlib (bcrypt)**
- 🐳 **Docker & Docker Compose**

---

## 📁 Estructura del proyecto

```bash
app/
├── api/
│   └── auth.py
├── core/
│   ├── config.py
│   └── security.py
├── db/
│   ├── base.py
│   └── session.py
├── models/
│   └── user.py
├── main.py
docker-compose.yml
init.sql
requirements.txt
README.md


⚙️ Requisitos previos

Antes de empezar, asegúrate de tener instalado:

✅ Docker Desktop (en ejecución)

✅ Git

✅ Python 3.10+ (opcional si usas Docker solamente)

🚀 Cómo ejecutar el proyecto
1️⃣ Clonar el repositorio
    git clone https://github.com/JohanMonsalveAbello/TECHNICAL_TEST_BACKEND.git
    cd TECHNICAL_TEST_BACKEND

2️⃣ Levantar la base de datos con Docker 🐘

⚠️ Asegúrate de que Docker Desktop esté abierto

    docker compose up -d


Esto hará automáticamente:

Crear el contenedor de PostgreSQL

Crear la base de datos technical_test

Ejecutar el archivo init.sql

Crear tablas e insertar el usuario inicial

3️⃣ Ejecutar la API 🚀

1-- Instala las dependencias nesesarias para la API
    pip install -r requirements.txt

2-- Ejecuta la api
uvicorn app.main:app --reload

La API quedará disponible en:

👉 http://127.0.0.1:8000

📚 Documentación automática (Swagger)

FastAPI genera documentación automáticamente:

🧪 Swagger UI →
👉 http://127.0.0.1:8000/docs

📘 ReDoc →
👉 http://127.0.0.1:8000/redoc 

🔐 Usuario de prueba

El proyecto incluye un usuario creado automáticamente desde init.sql:

Email:    admin@test.com
Password: admin123
