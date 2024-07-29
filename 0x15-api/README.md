
# 0x15. API

Tags
```
	- Python
	- Scripting
	- Back-end
	- API
```
### Project Overview

The goal of this project is to introduce you to APIs and demonstrate the advantages of using Python over Bash scripting for tasks involving data manipulation and API interactions. You will access employee data via an API and organize and export the data into different formats. This project highlights the evolution of system administration from traditional Bash scripting to using Python, reflecting the skills of modern Site Reliability Engineers (SREs).

### Background Context

Traditionally, system administrators relied heavily on Bash for scripting and automation. While Bash is a powerful tool, it can become cumbersome and less efficient compared to more modern programming languages like Python. SREs, who manage systems with a software engineering mindset, often utilize Python for its readability, efficiency, and extensive libraries.

APIs are a common way to expose applications and datasets. They allow external entities to interact with a system's data and functionality, making APIs essential for public-facing websites and microservices. In this project, we will use Python to interact with an API, demonstrating how to access, modify, and export data.

### Resources

Some helpful resources:

- [Friends don’t let friends program in shell script](https://opensource.com/article/19/12/friends-dont-let-friends-write-shell-script)
- [What is an API](https://www.redhat.com/en/topics/api/what-are-application-programming-interfaces)
- [What is an API? In English, please](https://medium.com/kapwing-studio/what-is-an-api-in-english-please-e13c2f8f1e5c)
- [What is a REST API](https://restfulapi.net/)
- [What are microservices](https://microservices.io/)
- [PEP8 Python style](https://www.python.org/dev/peps/pep-0008/)


#### Concepts

1. **What Bash scripting should not be used for:**
   - Complex data manipulation
   - Interacting with modern APIs
   - Large-scale automation tasks where readability and maintainability are crucial

2. **What is an API:**
   - An Application Programming Interface (API) is a set of rules and protocols for building and interacting with software applications.

3. **What is a REST API:**
   - REST (Representational State Transfer) API is an architectural style for designing networked applications, leveraging standard HTTP methods (GET, POST, PUT, DELETE).

4. **What are microservices:**
   - Microservices are a software architectural style in which an application is composed of small, independent services that communicate over a network.

5. **What is the CSV format:**
   - Comma-Separated Values (CSV) is a simple file format used to store tabular data, such as a spreadsheet or database.

6. **What is the JSON format:**
   - JavaScript Object Notation (JSON) is a lightweight data interchange format, easy for humans to read and write and for machines to parse and generate.

#### Pythonic Naming Conventions

  - **Package and module name style:**
  - Use all lowercase letters and underscores if needed (e.g., `my_package`).

  - **Class name style:**
  - Use CapWords (also known as CamelCase) (e.g., `MyClass`).

  - **Variable name style:**
  - Use lowercase words separated by underscores (e.g., `my_variable`).

  - **Function name style:**
  - Use lowercase words separated by underscores (e.g., `my_function()`).

  - **Constant name style:**
  - Use all uppercase letters separated by underscores (e.g., `MY_CONSTANT`).

#### Significance of CapWords or CamelCase in Python

- CapWords or CamelCase is used to name classes in Python. It helps distinguish class names from other identifiers, enhancing code readability and maintainability.

---

This README provides a foundational understanding of the project goals, key concepts, and the appropriate use of Python for tasks involving APIs. By adhering to these guidelines and leveraging the provided resources, you will be well-prepared to create and consume APIs.


This project was further practice in working with API's. I collected data from the
[JSONPlaceholder REST API](https://jsonplaceholder.typicode.com/), and learned how
to export it to either CSV or JSON format.

## Tasks :page_with_curl:

* **0. Gather data from an API**
  * [0-gather_data_from_an_API.py](./0-gather_data_from_an_API.py): Python script
  that returns information on the to-do list progress of a given employee ID.
  * Usage: `python3 0-gather_data_from_an_API.py <employee ID>`.
  * Output: `Employee <employee name> is done with tasks(<# completed tasks>/<total # tasks>):`

* **1. Export to CSV**
  * [1-export_to_CSV.py](./1-export_to_CSV.py): Python script exports to-do list
  information of a given employee ID to CSV format.
  * Usage: `python3 1-export_to_CSV.py <employee ID>`
  * File name: `<user id>.csv`.
  * Format: `"<user id>","<username>","<task completed status>","<task title>"`.

* **2. Export to JSON**
  * [2-export_to_JSON.py](./2-export_to_JSON.py): Python script that exports
  to-do list information of a given employee ID to JSON format.
  * Usage: `python3 2-export_to_JSON.py <employee ID>`
  * File name: `<user id>.json`
  * Format: `{ "<user id>": [ {"task": "<task title>", "completed": <task completed status>, "username": "<username>"}}, ... ]}`

* **3. Dictionary of list of dictionaries**
  * [3-dictionary_of_list_of_dictionaries.py](./3-dictionary_of_list_of_dictionaries.py):
  Python script that exports to-do list information for all employees to JSON format.
  * Usage: `python3 3-dictionary_of_list_of_dictionaries.py`
  * File name: `todo_all_employees.json`
  * Format: `{ "<user id>": [ {"username": "<username>", "task": "<task title>", "completed": <task completed status>}, {"username": "<username>", "task": "<task title>", "completed": <task completed status>}, ... ], "<user id>": [ {"username": "<username>", "task": "<task title>", "completed": <task completed status>}, {"username": "<username>", "task": "<task title>", "completed": <task completed status>}, ... ]}`
