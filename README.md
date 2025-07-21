# CRM ERP System

This repository contains a simple starter project for a Customer Relationship Management (CRM) ERP system.
The front-end is built with **Flutter**, while the backend uses **AWS Lambda** (Python) with **API Gateway** and **RDS** for data storage.

## Project Structure

```
crm_app/                 Flutter application
  lib/                   Dart source files
  test/                  Widget tests
backend/                 Sample Python Lambda function
README.md                This documentation
```

## Getting Started

### Flutter Frontend
1. Install Flutter SDK (see [flutter.dev](https://docs.flutter.dev/get-started/install)).
2. Navigate to `crm_app/` and run `flutter pub get` to fetch dependencies.
3. Launch the app with `flutter run`.

### AWS Backend
1. Create an RDS instance (e.g., MySQL or PostgreSQL) and note the credentials.
2. Deploy the Lambda function in `backend/lambda_function.py` using AWS Lambda (Python 3.9 runtime).
   - Set environment variables `DB_HOST`, `DB_USER`, `DB_PASS`, and `DB_NAME` for database access.
3. Configure an API Gateway endpoint that triggers the Lambda function.
4. Update the Flutter app to call the API Gateway URL for data operations.

This setup provides a starting point for developing a full ERP system. Expand each module (sales, inventory, accounting, etc.) inside the Flutter project and extend the Lambda functions to implement business logic.
