# Producto Final DevOps – EcoVerde Antioquia S.A.S.

## Descripción del Proyecto

EcoVerde Antioquia S.A.S. busca modernizar su proceso de entrega de software mediante la adopción de prácticas DevOps. Actualmente, los despliegues se realizan de forma manual, los entornos presentan inconsistencias y no existe una estrategia adecuada de monitoreo y trazabilidad.

Como solución, se implementó una plataforma DevOps básica que integra control de versiones, contenerización, automatización de procesos, despliegue en Kubernetes e implementación de observabilidad básica mediante logs y métricas.

---

## Objetivos

### Objetivo General

Implementar una solución DevOps básica y documentada que permita automatizar procesos de integración, despliegue y monitoreo para la empresa EcoVerde Antioquia S.A.S.

### Objetivos Específicos

* Implementar control de versiones utilizando Git y GitHub.
* Contenerizar una aplicación web mediante Docker.
* Automatizar procesos de integración continua con GitHub Actions.
* Desplegar la aplicación utilizando Docker Compose y Kubernetes.
* Aplicar conceptos básicos de Infraestructura como Código (IaC).
* Implementar mecanismos de observabilidad mediante logs y métricas.

---

## Tecnologías Utilizadas

* Git
* GitHub
* Docker
* Docker Compose
* GitHub Actions
* Kubernetes (Minikube)
* Terraform
* Nginx
* PowerShell

---

## Estructura del Proyecto

```text
producto-final-devops/
├── README.md
├── Dockerfile
├── compose.yml
├── app/
│   └── index.html
├── .github/
│   └── workflows/
│       └── pipeline.yml
├── k8s/
│   ├── deployment.yaml
│   └── service.yaml
├── iac/
│   └── main.tf
├── observabilidad/
│   └── evidencias.md
└── evidencias/
```

## Explicación Técnica

### Control de Versiones

Se utilizó Git para gestionar el historial de cambios y GitHub como repositorio remoto. Se realizaron múltiples commits descriptivos para garantizar la trazabilidad del desarrollo.

### Contenerización con Docker

La aplicación web fue desplegada mediante una imagen Docker basada en Nginx. El archivo Dockerfile permite construir una imagen reproducible y portable.

### Docker Compose

Se implementó Docker Compose para simplificar el despliegue de servicios mediante un archivo declarativo de configuración.

### Integración Continua (CI/CD)

Se configuró un pipeline de GitHub Actions que ejecuta automáticamente la construcción de la imagen Docker cada vez que se realiza un push al repositorio principal.

### Kubernetes

Se crearon manifiestos Deployment y Service para desplegar la aplicación dentro de un clúster Kubernetes utilizando Minikube como entorno local de pruebas.

### Infraestructura como Código (IaC)

Se implementó un ejemplo básico utilizando Terraform para demostrar la gestión declarativa y versionada de la infraestructura.

### Observabilidad

Se verificó el funcionamiento de la aplicación mediante:

* docker logs
* docker stats

Estos comandos permitieron visualizar eventos del contenedor y métricas de consumo de recursos.

---

## Instrucciones de Ejecución

### 1. Clonar el repositorio

```bash
git clone <url-del-repositorio>
cd producto-final-devops
```

### 2. Construir la imagen Docker

```bash
docker build -t ecoverde:v1 .
```

### 3. Ejecutar el contenedor

```bash
docker run -d -p 8081:80 --name ecoverde ecoverde:v1
```

### 4. Ejecutar con Docker Compose

```bash
docker compose up -d
```

### 5. Desplegar en Kubernetes

```bash
kubectl apply -f k8s/
```

### 6. Verificar Pods

```bash
kubectl get pods
```

### 7. Consultar Logs

```bash
docker logs ecoverde
```

### 8. Consultar Métricas

```bash
docker stats ecoverde
```

---

## Evidencias Generadas

Durante el desarrollo se generaron evidencias relacionadas con:

* Historial de commits.
* Contenedores en ejecución.
* Docker Compose.
* GitHub Actions.
* Kubernetes.
* Logs.
* Métricas.
* Aplicación funcionando en navegador.

---

## Resultados Obtenidos

* Aplicación desplegada exitosamente mediante Docker.
* Automatización básica implementada con GitHub Actions.
* Despliegue funcional en Kubernetes.
* Infraestructura declarativa versionada.
* Observabilidad mediante logs y métricas.
* Trazabilidad completa mediante Git y GitHub.

---

## Conclusiones

1. La implementación de prácticas DevOps permite mejorar significativamente la calidad y velocidad de entrega del software.

2. Docker facilita la creación de entornos consistentes y portables, reduciendo problemas derivados de diferencias entre ambientes.

3. GitHub Actions permite automatizar procesos de integración continua, reduciendo tareas manuales y posibles errores humanos.

4. Kubernetes proporciona una plataforma robusta para la administración y escalabilidad de aplicaciones contenerizadas.

5. La observabilidad mediante logs y métricas permite monitorear el comportamiento de los servicios y detectar posibles incidentes de forma temprana.

6. La Infraestructura como Código facilita la administración, documentación y reutilización de configuraciones dentro de los proyectos DevOps.
