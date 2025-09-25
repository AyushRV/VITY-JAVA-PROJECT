# Campus Course & Records Manager (CCRM)

### Project Overview

Do you find the whole school records system to be rather chaotic, with endless spreadsheets and paper pushing? The Campus Course & Records Manager is a simplistic console application that can do away with the clutter and keep the workings of academic administration very simple. It is written pure and simple in Java SE and is a tool vast enough to put everything an administrator may ever need within his hands.

CCRM simply wishes to put its administrator at ease. It establishes the connection with a robust Oracle database instead of leaving the administrator to consider the data and its proper organization. It lets you perform simple daily tasks through a clean, straightforward command line interface without any hindrance.
-----

### What It Does

  - **Effortless Student Management**: One can easily bring in new students and present class lists in their entirety, or update a student's academic status-May simply typing some of the key; and another: proves a system, compared to another by simply typing in a few requests..
  - **Simple Course & Enrollment Control**: Easily add or remove students, appoint teachers, and create new courses.  The system is also intelligent; in order to avoid scheduling conflicts, it automatically enforces regulations like credit limits.
  - **Instant Grading & Transcripts**:When necessary, create certified academic transcripts and keep track of student grades.
  - **Flexible Data Handling**: Do you need a list of new pupils imported?  Use a CSV file alone.  Do you want to make a report?  Export all necessary data.  The CCRM also lets you create time-stamped backups of all your data for total peace of mind.

-----

## Getting Started: How to Run

### What You'll Need

Before start, remember you have these two things installed on your system:

  - **Java Development Kit (JDK)**: Version 11 or higher.
  - **Oracle Database**: A running instance of Oracle DB.

### Step 1: Get the Code for Project

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

### Step 3: Set Up the Database for project

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

## IDE Setup

While the app is designed for the command line, you can set it up in an IDE for easier development.

### Eclipse IDE Setup

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

Sanity checks in your code that are by default turned off are called assertions.  Use the `-ea` flag to make them debug-friendly.

```bash
java -ea -cp "bin;lib/ojdbc17.jar" edu.ccrm.cli.Main
```

An `AssertionError` will be displayed when an assertion fails, alerting you to the logical issue.

-----

## Background Information

### Java Editions: ME vs. SE vs. EE

  - **Java ME (Micro Edition)**: a low-power variant for tiny, resource-constrained gadgets, such as early cell phones or smart devices.
  - **Java SE (Standard Edition)**: Java's basic, traditional version, which is utilized for server and desktop applications.  Java SE was used to build this project.
  - **Java EE (Enterprise Edition)**: More tools for large-scale, web-based enterprise applications that are a superset of Java SE.

### JDK vs. JRE vs. JVM

  - **JVM (Java Virtual Machine)**: This "engine" executes Java bytecode that has been compiled.  It enables the "write once, run anywhere" idea and is platform-dependent.
  - **JRE (Java Runtime Environment)**: includes the JVM along with the libraries required to *run* Java programs.  The JRE is necessary for users.
  - **JDK (Java Development Kit)**: includes the JRE together with tools for *developing* Java applications, such as the debugger and compiler (`javac`).  JDKs are essential for developers.

### Key Moments in Java's Evolution

  - **1995**: Sun Microsystems announces Java.
  - **1996**: **JDK 1.0** is released.
  - **2004**: **Java 5.0** is released, adding major features like Generics, Annotations, and Autoboxing.
  - **2014**: **Java 8** revolutionizes the language with Lambda Expressions and the Stream API.
  - **2018**: Oracle begins a faster, 6-month release cadence.
  - **2021**: **Java 17** is released as the latest Long-Term Support (LTS) version.

-----

## Acknowledgements
This project was made for the Vityarthi portal's "Programming in Java" course.

   All of the code was created by Ayush Raj Verma and is original.
  

