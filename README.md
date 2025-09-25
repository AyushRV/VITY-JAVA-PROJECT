Campus Course & Records Manager

Project Overview
Tired of juggling spreadsheets and endless paperwork to manage school records? The Campus Course & Records Manager (CCRM) is a straightforward, console-based application designed to cut through the clutter and make academic administration simple. Built entirely with Java SE, it's a powerful tool that puts everything an administrator needs right at their fingertips.
At its heart, the CCRM is all about making life easier. It connects to a reliable Oracle database to keep your data safe and organized. Through a clean and simple command-line interface, you can effortlessly handle all the essential day-to-day tasks.
________________________________________
What It Does
•	Effortless Student Management: Add new students, pull up entire class lists, or update a student's academic status in just a few keystrokes.
•	Simple Course & Enrollment Control: Create new courses, assign instructors, and enroll or unenroll students with ease. The system is smart, too—it automatically enforces rules like credit limits to prevent scheduling conflicts.
•	Instant Grading & Transcripts: Log student grades and generate official academic transcripts whenever you need them.
•	Flexible Data Handling: Need to import a list of new students? Just use a CSV file. Want to create a report? Export any data you need. The CCRM also lets you create time-stamped backups of all your data for total peace of mind.
________________________________________
This project isn't just a simple program; it's a practical showcase of strong software development skills. It demonstrates a deep understanding of core Java, object-oriented programming, modern file handling (NIO.2), and seamless database connectivity with JDBC. It’s a robust, well-designed solution built for real-world use.


Java ME vs. SE vs. EE
Java ME (Micro Edition): The Pocket Toolkit
Java ME is the tiny, lightweight version of Java. It's designed for small devices with limited memory and processing power.
•	What it's for: Think of early mobile phones (before smartphones), smart home gadgets, printers, and other small electronics.
•	What's inside: It has just the bare essentials from the main Java platform, plus a few special tools for mobile and embedded devices.
•	Who uses it: Developers who need to write code for compact, resource-constrained gadgets.
________________________________________
Java SE (Standard Edition): The Standard Workshop
Java SE is the classic, core version of Java that most people learn first. It's the foundation for everything else.
•	What it's for: This is your go-to for building applications that run on a regular desktop computer or server.
•	What's inside: It includes everything you need for general-purpose programming: the core Java libraries, the Java Virtual Machine (JVM), and all the fundamental development tools.
•	Who uses it: The vast majority of Java developers use SE for a wide range of applications.
________________________________________
Java EE (Enterprise Edition): The Industrial Factory
Java EE is the supercharged, heavy-duty version of Java, built on top of Java SE. It’s designed for building large-scale, complex applications for big businesses.
•	What it's for: This is the power behind massive web applications, online banking systems, e-commerce sites, and other complex services that need to be secure, reliable, and able to handle many users at once.
•	What's inside: It includes everything in Java SE plus a huge collection of advanced tools (APIs) for web services, transaction management, and more.
•	Who uses it: Developers building robust, mission-critical applications for large companies.

JDK vs. JRE vs. JVM
1. JVM (Java Virtual Machine): The Engine
The JVM is the powerful engine of the Java world. It's the essential component that actually runs the Java code.
Think of it this way: your compiled Java code (bytecode) is like a set of universal instructions. The JVM is the specific engine that takes those instructions and makes them work on the actual machine you're using—whether it's a Windows PC, a Mac, or a Linux server.
This is why you need a different JVM for each platform, just like you'd need a different type of engine for a car versus a boat. The JVM is the magic piece that makes Java's "write once, run anywhere" promise a reality. You, as a user or developer, rarely interact with the JVM directly; it just works quietly under the hood.
________________________________________
2. JRE (Java Runtime Environment): The Car Itself
The JRE is the complete car, ready to drive. It includes the engine (the JVM) plus all the other necessary parts to get it on the road—the wheels, the steering wheel, the transmission, and the dashboard.
These "other parts" are the core Java libraries and components that your application needs to function. If you download a Java application (like Minecraft, for example), you need the JRE installed on your computer to run it. You have everything you need to use a Java program, but you don't have any of the tools to build one.
________________________________________
3. JDK (Java Development Kit): The Car Factory
The JDK is the entire car factory. It gives you everything you need not just to drive the car, but to design, build, and test a new one from scratch.
The JDK includes a complete JRE (so you can test the car you've built) plus a whole set of powerful tools for developers. The most important tools are:
•	The Compiler (javac): The machinery that takes your human-readable source code and turns it into Java bytecode (the universal instructions for the JVM).
•	The Debugger: The diagnostic equipment to find and fix problems in your code.
•	And more: Tools for documentation, packaging, and monitoring your applications.





IDE Setup
While this application is built to run from the command line, using a development environment (IDE) makes coding and debugging much easier. Here’s how to get the project up and running in a couple of popular IDEs.
________________________________________
Setting Up in Eclipse IDE eclipse
1.	Import the Project: First, let's get the project into your workspace.
o	Go to File > Import.
o	Choose General > Existing Projects into Workspace and click Next.
o	Browse to and select the project's root directory.
2.	Link the Database Driver: Next, we need to tell Eclipse where to find the Oracle database driver.
o	Right-click the project in the Package Explorer and select Build Path > Configure Build Path.
o	Go to the Libraries tab.
o	Select Classpath, click the Add JARs... button, and navigate to the lib/ojdbc17.jar file to add it.
________________________________________
 Setting Up in Visual Studio Code vs code
1.	Install the Java Tools: Before you begin, make sure you have the Extension Pack for Java from Microsoft installed. It bundles all the necessary tools for Java development in VS Code.
2.	Open the Project Folder: This part is simple. Just go to File > Open Folder... and select the project's root directory.
3.	Link the Database Driver: Now, let's connect the database driver.
o	Look for the JAVA PROJECTS view in the explorer panel on the side.
o	Expand your project, and you'll see a Referenced Libraries section.
o	Click the '+' icon next to it and select the lib/ojdbc17.jar file.


Evolution of Java
1995: A New Language is Born
Sun Microsystems officially announced Java to the world. With its promise of "Write Once, Run Anywhere," it captured the imagination of developers who were tired of rewriting code for every different operating system.
1996: The First Toolkit Arrives (JDK 1.0)
The first official Java Development Kit (JDK) was released. For the first time, developers everywhere had the tools they needed to start building real applications with Java. It was the beginning of a revolution.
2004: A Major Leap Forward (Java 5.0)
After several years of steady growth, Java 5.0 (originally codenamed Tiger) was released, and it was a huge deal. It introduced powerful features that are now fundamental to the language:
•	Generics: A way to write safer, more reliable code by catching errors at compile time instead of at runtime.
•	Annotations: A new way to add metadata to code, which would become essential for many modern frameworks.
•	Autoboxing: A convenience feature that simplified code by automatically converting between primitive types (like int) and their object wrappers (like Integer).
2014: The Modern Era Begins (Java 8)
This was arguably the most significant update in Java's history. Java 8 completely modernized the language and changed how developers wrote code. The two standout features were:
•	Lambda Expressions: A way to write cleaner, more concise, and more functional code. It cut down on boilerplate and made Java feel fresh again.
•	The Stream API: A powerful new tool for processing collections of data in a declarative way, making complex operations on lists remarkably simple.
2018: Picking Up the Pace
Java's evolution kicked into high gear. Oracle announced a new, faster six-month release cycle starting with Java 10. This meant that instead of waiting years for major updates, developers would get a predictable stream of new features twice a year, allowing the language to keep up with the fast-changing tech landscape.
2021: Stability for the Future (Java 17 LTS)
Java 17 was released as the latest Long-Term Support (LTS) version. In the new, faster release world, LTS versions are the pillars of stability. They are guaranteed to receive security updates and support for many years, making them the go-to choice for large enterprise applications where reliability is paramount.

How to Run
What You'll Need
Before we start, make sure you have these two things installed on your system:
•	Java Development Kit (JDK): Version 11 or higher is perfect. This provides the tools to compile and run the application.
•	Oracle Database: The application is designed to store all its information in an Oracle database, so you'll need one running.
________________________________________
Step 1: Get the Code
First, you'll need to grab the source code from GitHub. Open your terminal or command prompt and run this command:
Bash
git clone https://github.com/AyushRV/VITY-JAVA-PROJECT.git This will create a new folder named Campus-Course-Records-Manager with all the project files inside.
________________________________________Step 2: Compile the Project
Now, navigate into the project's root directory in your terminal. It's time to compile all the Java source files. Run the following command:
Bash
javac -d bin -cp "lib/ojdbc17.jar" src/edu/ccrm/cli/*.java src/edu/ccrm/config/*.java src/edu/ccrm/domain/*.java src/edu/ccrm/exception/*.java src/edu/ccrm/io/*.java src/edu/ccrm/service/*.java src/edu/ccrm/util/*.java
What's this command doing? It's telling the Java compiler (javac) to compile all the .java files from the src folder and place the resulting .class files into a new bin directory. The -cp "lib/ojdbc17.jar" part tells the compiler where to find the necessary Oracle database driver.
________________________________________
Step 3: Set Up the Database
The application needs its own dedicated user in the Oracle database to keep its data organized and secure.
1.	Create the User: Connect to your database with an admin account (like SYSTEM). Then, run these two SQL commands:
SQL
CREATE USER ccrm_user IDENTIFIED BY ccrm_pass;
GRANT CONNECT, RESOURCE, DBA TO ccrm_user;
This creates a new user named ccrm_user with the password ccrm_pass and gives it the permissions it needs.
2.	Initialize the Tables : You don't need to manually create any tables The application is smart enough to handle this for you. The very first time you run the application, it will see that the tables are missing and automatically create them.
________________________________________
Step 4: Run the Application!
With everything compiled and the database ready, it's time to launch the application. From the project's root directory, run this command:
Bash
java -cp "bin;lib/ojdbc17.jar" edu.ccrm.cli.Main


Database Setup
1. Create the Database User 
The application needs its own user to manage its data securely.
First, connect to your database using an account with administrative privileges (for example, the SYSTEM user). Then, run the following SQL commands:
SQL
CREATE USER ccrm_user IDENTIFIED BY ccrm_pass;
GRANT CONNECT, RESOURCE, DBA TO ccrm_user;
This creates a new user named ccrm_user with the password ccrm_pass and gives it the necessary permissions to create and manage its tables.
________________________________________
2. Let the Application Handle the Rest! 
Here's the easy part: you don't need to create any tables yourself.
The application is designed to set up its own database schema automatically. The very first time you run the program, it will detect that the tables are missing and run a setup script to create everything it needs.

Mapping of Syllabus Topics to Project Files
Concept 	Demonstration in the Project
Encapsulation	Student.java, Course.java: Fields are kept private and accessed via public getters/setters to protect data integrity.
Inheritance & Abstraction	Person.java: An abstract base class provides a common blueprint for Student and Instructor classes, which inherit from it.
Polymorphism	TranscriptService.java: The code works with general Person objects, allowing it to handle specific subclasses like Student or Instructor polymorphically.
Interfaces	Searchable.java: A functional interface defines a contract for search capabilities, allowing for flexible and reusable search logic.
NIO.2 and Streams	ImportExportService.java, BackupService.java: Uses modern Java I/O (NIO.2) and Streams for efficient file import, export, and backup operations.
Lambda Expressions	CourseService.java: Lambda expressions are used with predicates to write clean and concise logic for filtering lists of courses.
Singleton Design Pattern	AppConfig.java: Implements the Singleton pattern to ensure only one instance of the application's configuration exists globally.
Builder Design Pattern	Course.java: Contains a nested Builder class to allow for the safe and step-by-step construction of complex Course objects.
Custom Exceptions	DuplicateEnrollmentException.java, MaxCreditLimitExceededException.java: Custom exceptions are defined to handle specific application errors gracefully.


Enabling Assertions 
Assertions are a simple but powerful debugging tool in Java. Think of an assert statement as a sanity check you place in your code. You're telling the program: "I expect this condition to be true at this exact moment. If it's not, something has gone seriously wrong."
By default, Java ignores these checks to ensure the best possible performance, as they are primarily meant for development and testing. However, when you're hunting for bugs, turning them on is incredibly useful.
To enable assertions when running the application from the command line, you simply add the -ea (or the longer -enableassertions) flag to your java command.
For example, here’s how you would run the CCRM application with assertions enabled:
Bash
java -ea -cp "bin;lib/ojdbc17.jar" edu.ccrm.cli.Main
If an assertion fails while the program is running, it will immediately stop and throw an AssertionError, pointing you directly to the logical problem in your code. It's a fantastic way to catch bugs early!

Acknowledgements
•	This project was created as part of the "Programming in Java" course on the Vityarthi portal.
•	All code is original and written by Ayush Raj Verma.



