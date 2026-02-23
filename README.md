# Docker App Workflow

This project demonstrates a simple Flask application running inside a Docker container, along with automated testing using GitHub Actions.

## Project Structure

```
docker-app-workflow/
├── app.py              # Flask application
├── requirements.txt    # Python dependencies
├── Dockerfile          # Docker image configuration
├── .github/workflows/  # GitHub Actions workflows
│   └── test.yml        # CI/CD workflow
└── README.md           # Project documentation
```

## Prerequisites

- Docker installed and running
- GitHub account

## Getting Started

### 1. Build the Docker Image

```bash
docker build -t docker-app-workflow .
```

### 2. Run the Application

```bash
docker run -p 5000:5000 docker-app-workflow
```

The application will be accessible at `http://localhost:5000`.

## Testing

### Run Tests Locally

```bash
docker run --rm docker-app-workflow pytest
```

### GitHub Actions

The CI/CD workflow automatically runs tests on every push to the repository.

## Workflow

1. **Push** changes to the repository
2. **GitHub Actions** triggers the `test.yml` workflow
3. **Docker** builds the image
4. **pytest** runs the tests
5. **Results** are reported in the Actions tab

## License

This project is licensed under the MIT License.