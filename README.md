# Receptionist and Doctor Portal Rails Application

## Overview

This is a simple Rails application designed to manage patient records with two user portals: Receptionist and Doctor. Both portals share a single login page, and they have different sets of functionalities.

## Features

### Shared Features

- **User Authentication**: Both Receptionists and Doctors use the same login page to authenticate themselves.
- **Authorization**: Differentiate user roles to allow or restrict access to specific features.

### Receptionist Portal

- **Patient Registration**: Receptionists can register new patients by providing their details, including name, date of birth, contact information, and any other relevant information.
- **CRUD Operations**: Receptionists can perform CRUD (Create, Read, Update, Delete) operations on patient records.
  - Create: Add new patient records.
  - Read: View patient details and lists of registered patients.
  - Update: Edit patient information.
  - Delete: Remove patient records.

### Doctor Portal

- **View Registered Patients**: Doctors can view the list of registered patients along with their details.
- **View Patient Registration Trends**: Doctors can access a graphical representation (graph) that displays the number of patients registered over time. This helps doctors track patient intake trends.

## Getting Started

### Prerequisites

- Ruby (version x.x.x)
- Ruby on Rails (version x.x.x)
- Database (e.g., PostgreSQL, MySQL)
- Bundler gem

### Installation

1. Clone this repository to your local machine.

2. Change into the project directory.


3. Install gem dependencies.


4. Set up the database and run migrations.


5. Start the Rails server.

6. Access the application in your web browser at `http://localhost:3000`.

### Usage

1. Visit the application in your browser and log in using your credentials.

2. If you are a receptionist, you can perform patient registration and CRUD operations.

3. If you are a doctor, you can view registered patients and access the patient registration trends graph.


