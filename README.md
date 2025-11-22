# Task Manager API

This is a RESTful Task Management API built with Spring Boot, H2 Database, and Java.

## Tech Stack
- Java 17
- Spring Boot 3.2.3
- Spring Data JPA
- H2 In-Memory Database
- Lombok

## Project Structure
- **Controller**: `TaskController` - Handles HTTP requests.
- **Service**: `TaskService` - Contains business logic.
- **Repository**: `TaskRepository` - Interacts with the database.
- **Model**: `Task` - Entity representing a task.

## How to Run

1.  **Prerequisites**: Ensure you have Java 17 or higher installed.
2.  **Clone/Navigate**: Navigate to the project root directory.
3.  **Run**: Execute the following command using the Maven Wrapper:
    ```bash
    ./mvnw spring-boot:run
    ```
    (On Windows, use `mvnw.cmd spring-boot:run`)

## API Endpoints

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| GET | `/api/tasks` | Get all tasks |
| GET | `/api/tasks/{id}` | Get task by ID |
| POST | `/api/tasks` | Create a new task |
| PUT | `/api/tasks/{id}` | Update an existing task |
| DELETE | `/api/tasks/{id}` | Delete a task |
| GET | `/api/tasks/status/{status}` | Get tasks by status (PENDING, IN_PROGRESS, COMPLETED) |

## API Documentation (Swagger UI)
Once the application is running, you can access the interactive API documentation at:
- **Swagger UI**: `http://localhost:8080/swagger-ui/index.html`
- **OpenAPI JSON**: `http://localhost:8080/v3/api-docs`
- **OpenAPI YAML**: A static `openapi.yaml` file is generated in the project root when you run `./mvnw verify`.

## H2 Console
Access the H2 Console at: `http://localhost:8080/h2-console`
- **JDBC URL**: `jdbc:h2:mem:taskdb`
- **User Name**: `sa`
- **Password**: `password`

## Example JSON for POST/PUT

```json
{
  "title": "Complete Project",
  "description": "Finish the Spring Boot API",
  "status": "PENDING",
  "dueDate": "2023-12-31T23:59:59"
}
```
