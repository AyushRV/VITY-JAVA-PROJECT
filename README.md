# Campus Course & Records Manager (CCRM)

### Project Overview

Tired of juggling spreadsheets and endless paperwork to manage school records? The Campus Course & Records Manager (CCRM) is a straightforward, console-based application designed to cut through the clutter and make academic administration simple. Built entirely with Java SE, it's a powerful tool that puts everything an administrator needs right at their fingertips.

At its heart, the CCRM is all about making life easier. It connects to a reliable Oracle database to keep your data safe and organized. Through a clean and simple command-line interface, you can effortlessly handle all the essential day-to-day tasks.

-----

### What It Does

  - **Effortless Student Management**: Add new students, pull up entire class lists, or update a student's academic status in just a few keystrokes.
  - **Simple Course & Enrollment Control**: Create new courses, assign instructors, and enroll or unenroll students with ease. The system is smart, too—it automatically enforces rules like credit limits to prevent scheduling conflicts.
  - **Instant Grading & Transcripts**: Log student grades and generate official academic transcripts whenever you need them.
  - **Flexible Data Handling**: Need to import a list of new students? Just use a CSV file. Want to create a report? Export any data you need. The CCRM also lets you create time-stamped backups of all your data for total peace of mind.

-----

## Getting Started: How to Run

### What You'll Need

Before we start, make sure you have these two things installed on your system:

  - **Java Development Kit (JDK)**: Version 11 or higher.
  - **Oracle Database**: A running instance of Oracle DB.

### Step 1: Get the Code

Open your terminal and clone the repository:

```bash
git clone https://github.com/AyushRV/VITY-JAVA-PROJECT.git
```

### Step 2: Compile the Project

Navigate into the project's root directory and run the following command to compile all source files.

```bash
javac -d bin -cp "lib/ojdbc17.jar" src/edu/ccrm/cli/*.java src/edu/ccrm/config/*.java src/edu/ccrm/domain/*.java src/edu/ccrm/exception/*.java src/edu/ccrm/io/*.java src/edu/ccrm/service/*.java src/edu/ccrm/util/*.java
```

> This command compiles all `.java` files from the `src` directory, places the output `.class` files into the `bin` directory, and includes the Oracle JDBC driver in the classpath.

### Step 3: Set Up the Database

The application needs a dedicated user in your Oracle database.

1.  **Create the User**: Connect to your database with an admin account (e.g., `SYSTEM`) and run the following SQL commands:
    ```sql
    CREATE USER ccrm_user IDENTIFIED BY ccrm_pass;
    GRANT CONNECT, RESOURCE, DBA TO ccrm_user;
    ```
2.  **Initialize the Tables**: You don't need to create tables manually\! The application will automatically create the required schema the first time it runs.

### Step 4: Run the Application\!

With everything compiled and the database ready, run the application using this command from the project's root directory:

```bash
java -cp "bin;lib/ojdbc17.jar" edu.ccrm.cli.Main
```

-----

## IDE Setup (Optional)

While the app is designed for the command line, you can set it up in an IDE for easier development.

### Eclipse IDE

1.  **Import the Project**:
      - Go to `File > Import > General > Exists Projects into Workspace`.
      - Browse to and select the project's root directory.
2.  **Link the Database Driver**:
      - Right-click the project \> `Build Path > Configure the Build Path`.
      - Go to the `Libraries` tab, select `Classpath`, click `Add JARs...`, and add the `lib/ojdbc17.jar` file.

### Visual Studio Code

1.  **Install Java Tools**: Ensure the **Extension Pack for Java** from Microsoft is installed.
2.  **Open the Project**: Go to `File > Open Folder...` and select the project's root directory.
3.  **Link the Database Driver**:
      - In the **JAVA PROJECTS** explorer view, find **Referenced Libraries**.
      - Click the `+`(plus) icon and add the `lib/ojdbc17.jar` file.

-----

## Technical Showcase: Syllabus Topics in Action

This project demonstrates a strong understanding of core Java principles and design patterns.

| Concept | Demonstration in the Project |
| :--- | :--- |
| **Encapsulation** | **`Student.java`, `Course.java`**: Fields are kept `private` and accessed via public getters/setters. |
| **Inheritance & Abstraction** | **`Person.java`**: An `abstract` base class provides a blueprint for `Student` and `Instructor`. |
| **Polymorphism** | **`TranscriptService.java`**: Works with general `Person` objects, handling subclasses polymorphically. |
| **Interfaces** | **`Searchable.java`**: A functional `interface` defines a contract for search capabilities. |
| **NIO.2 and Streams** | **`ImportExportService.java`**: Uses modern Java I/O for efficient file operations. |
| **Lambda Expressions** | **`CourseService.java`**: Uses lambdas with predicates for clean, concise filtering logic. |
| **Singleton Pattern** | **`AppConfig.java`**: Ensures only one instance of the application's configuration exists. |
| **Builder Pattern** | **`Course.java`**: Contains a nested Builder for safe, step-by-step object construction. |
| **Custom Exceptions** | **`DuplicateEnrollmentException.java`**: Defined to handle specific application errors gracefully. |

-----

## Developer Notes

### Enabling Assertions

Assertions are sanity checks in your code that are disabled by default. To enable them for debugging, use the `-ea` flag.

```bash
java -ea -cp "bin;lib/ojdbc17.jar" edu.ccrm.cli.Main
```

If an assertion fails, the program will stop with an `AssertionError`, pointing you directly to the logical problem.

-----

## Background Information

### Java Editions: ME vs. SE vs. EE

  - **Java ME (Micro Edition)**: A lightweight version for small, resource-constrained devices like early mobile phones or smart gadgets.
  - **Java SE (Standard Edition)**: The core, classic version of Java used for desktop and server applications. This project is built with Java SE.
  - **Java EE (Enterprise Edition)**: A superset of Java SE with additional tools for large-scale, web-based enterprise applications.

### JDK vs. JRE vs. JVM

  - **JVM (Java Virtual Machine)**: The "engine" that runs compiled Java bytecode. It's platform-dependent and makes the "write once, run anywhere" concept possible.
  - **JRE (Java Runtime Environment)**: Contains the JVM plus the necessary libraries to *run* Java applications. Users need the JRE.
  - **JDK (Java Development Kit)**: Contains the JRE plus tools for *developing* Java applications, like the compiler (`javac`) and debugger. Developers need the JDK.

### Key Moments in Java's Evolution

  - **1995**: Sun Microsystems announces Java.
  - **1996**: **JDK 1.0** is released.
  - **2004**: **Java 5.0** is released, adding major features like Generics, Annotations, and Autoboxing.
  - **2014**: **Java 8** revolutionizes the language with Lambda Expressions and the Stream API.
  - **2018**: Oracle begins a faster, 6-month release cadence.
  - **2021**: **Java 17** is released as the latest Long-Term Support (LTS) version.

-----

## Acknowledgements

  - This project was created as part of the "Programming in Java" course on the Vityarthi portal.

  - All code is original and written by Ayush Raj Verma.
