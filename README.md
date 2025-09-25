# Campus Course & Records Manager (CCRM)

### Project Overview

Do you find the whole school records system to be rather chaotic, with endless spreadsheets and paper pushing? The Campus Course & Records Manager is a simplistic console application that can do away with the clutter and keep the workings of academic administration very simple. It is written pure and simple in Java SE and is a tool vast enough to put everything an administrator may ever need within his hands.
CCRM just wants its administrator to feel comfortable.  Instead than letting the administrator think about the data and how to properly organize it, it connects to a reliable Oracle database.  Through a clear, uncomplicated command line interface, it enables you to complete basic everyday chores without any difficulties.

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

1.  **Create the User**: Use an admin account (such as `SYSTEM`) to access your database, then execute the following SQL commands:
    ```sql
    CREATE USER ccrm_user IDENTIFIED BY ccrm_pass;
    GRANT CONNECT, RESOURCE, DBA TO ccrm_user;
    ```
2.  **Initialize the Tables**: You don't have to make tables by hand!  The first time the program runs, the necessary schema will be created automatically.

### Step 4: Run the Application\!

Use this command to launch the application from the project's root directory once everything has been compiled and the database is ready:

```bash
java -cp "bin;lib/ojdbc17.jar" edu.ccrm.cli.Main
```

-----

## IDE Setup

While the app is designed for the command line, you can set it up in an IDE for easier development.

### Eclipse IDE Setup

To import the project, first select `File > Import > General > Exists Projects into Workspace`.
       Go to the root directory of the project and choose it.
 2. **Connect the Database Driver**:
       To configure the build path, right-click on the project and select `Build Path > Configure the Build Path`.
       Navigate to the `Libraries` tab, choose `Classpath`, click `Add JARs...`, and then add the `lib/ojdbc17.jar` file.

### Visual Studio Code

1. **Install Java Tools**: Make sure you have the Microsoft **Extension Pack for Java** installed.
 2. **Start the Project**:  Choose the root directory for the project by going to `File > Open Folder...`.
 3. **Connect the Database Driver**:
       - Locate **Referenced Libraries** in the **JAVA PROJECTS** explorer view.
       - Add the `lib/ojdbc17.jar` file by clicking the `+` (plus) icon.

-----

## Technical Showcase: Syllabus Topics in Action

This project shows a thorough comprehension of fundamental Java design patterns and concepts.

| Concept | Demonstration in the Project |
| :--- | :--- |
| **Encapsulation** | **`Student.java`, `Course.java`**:Public getters/setters are used to access fields that are kept `private`. |
| **Inheritance & Abstraction** | **`Person.java`**: `Student` and `Instructor` are modeled after an `abstract` base class.  |
| **Polymorphism** | **`TranscriptService.java`**: Uses general `Person` objects and handles subclasses in a polymorphic manner.  |
| **Interfaces** | **`Searchable.java`**: A contract for search capabilities is defined by a functional `interface`.. |
| **NIO.2 and Streams** | **`ImportExportService.java`**: makes effective use of contemporary Java I/O for file operations.. |
| **Lambda Expressions** | **`CourseService.java`**: uses predicates and lambdas to provide clear, simple filtering logic.. |
| **Singleton Pattern** | **`AppConfig.java`**: guarantees that there is just a single instance of the application's configuration.. |
| **Builder Pattern** | **`Course.java`**: includes a nested Builder for building objects in a safe, methodical manner. |
| **Custom Exceptions** | **`DuplicateEnrollmentException.java`**: designed to gracefully handle particular application problems. |

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

  - **Java ME (Micro Edition)**: a low-power version for small devices with limited resources, like early cell phones or smart devices.
  - **Java SE (Standard Edition)**:Java's conventional, basic version, used for desktop and server applications.  Java SE was used to build this project.
  - **Java EE (Enterprise Edition)**: Additional technologies that are a superset of Java SE for large-scale, web-based enterprise applications.

### JDK vs. JRE vs. JVM

  - **JVM (Java Virtual Machine)**: This "engine" executes Java bytecode that has been compiled.  It enables the "write once, run anywhere" idea and is platform-dependent.
  - **JRE (Java Runtime Environment)**: includes the JVM along with the libraries required to *run* Java programs.  The JRE is necessary for users.
  - **JDK (Java Development Kit)**: includes the JRE together with tools for *developing* Java applications, such as the debugger and compiler (`javac`).  JDKs are essential for developers.

### Key Moments in Java's Evolution

  - **1995**: Java is announced by Sun Microsystems.
  - **1996**: **JDK 1.0** is made available.
  - **2004**: **Java 5.0** is made available, offering important features like generics, annotations, and autoboxing.
  - **2014**: **Java 8** uses the Stream API and Lambda Expressions to change the language.
   - **2018**: Oracle has increased the frequency of its releases to once every six months.
  - **2021**: **Java 17** is offered as the latest Long-Term Support (LTS) edition.
-----

## Acknowledgements
This project was made for the Vityarthi portal's "Programming in Java" course.

   All of the code was created by Ayush Raj Verma and is original.
  





