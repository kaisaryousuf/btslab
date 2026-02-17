# BTS PenTesting Lab

An open source deliberately vulnerable web application created by [Cyber Security & Privacy Foundation](https://www.cysecurity.org). Designed for learning and practicing common web application vulnerabilities in a safe environment.

> **Warning:** This application is intentionally vulnerable. Do NOT deploy it on any public or production server.

## Vulnerabilities

- SQL Injection (including Blind SQLi)
- Cross-Site Scripting (Reflected, Stored, DOM-based, Flash-based)
- Cross-Site Request Forgery (CSRF)
- Clickjacking
- Server-Side Request Forgery (SSRF)
- Local/Remote File Inclusion (LFI/RFI)
- Command Injection
- PHP Code/Object Injection
- Insecure Direct Object Reference
- Unrestricted File Upload
- Open URL Redirection
- Server Side Includes (SSI) Injection

## Getting Started

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Setup

```sh
git clone https://github.com/breakthesec/btslab.git
cd btslab
docker compose up --build
```

Open http://localhost:8080/btslab/

### Default Credentials

| Role  | Username | Password |
|-------|----------|----------|
| Admin | admin    | password |

Admin panel: http://localhost:8080/btslab/admin/adminlogin.php

### Reset Database

To wipe the database and start fresh:

```sh
docker compose down -v
docker compose up
```

## License

See [LICENSE](LICENSE) for details.
