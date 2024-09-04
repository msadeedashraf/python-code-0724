https://www.python.org/downloads/

https://realpython.com/python-repl/

Documentation - https://docs.python.org/3.12/index.html

Tutorial - https://docs.python.org/3.12/tutorial/index.html

VS Code Extensions for Python
Python Indent
Python
Python Debugger
Pylance

https://www.geeksforgeeks.org/external-modules-in-python/

> py --version
> py
>
> > > quit()
> > > test

For comments
ctrl + /

Day 01:
First Python Program
Understanding Module ()
Using PIP for package management

Day 02:
Comments
Variables and Data Types

Day 03:
Data Types
Operators
variable rules

Flask Documentation
https://flask.palletsprojects.com/en/1.1.x/quickstart/

https://www.geeksforgeeks.org/how-to-install-flask-in-windows/
Installing Flask on windows

Set-ExecutionPolicy unrestricted


create a root folder and run
>pip install virtualenv
>virtualenv venv
.\venv\Scripts\activate.ps1 
>pip install flask flask-sqlalchemy

create a app.py file and place the following code in it


from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


if __name__ == "__main__":
    app.run(debug=True)
   # app.run(debug=True, port=6000)
   
save and run 
>python .\app.py

[To install SQL](https://flask-sqlalchemy.palletsprojects.com/en/3.1.x/)

>pip install flask-sqlalchemy

[SQL Lite viewer](https://inloop.github.io/sqlite-viewer/)

[Get Started Querying with Transact-SQL](https://learn.microsoft.com/en-us/training/paths/get-started-querying-with-transact-sql/)


[AdventureWorks sample databases](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)

[Restore a Database Backup Using SSMS](https://learn.microsoft.com/en-us/sql/relational-databases/backup-restore/restore-a-database-backup-using-ssms?view=sql-server-ver16 )

[Quickstart: Backup and restore a SQL Server database with SSMS](https://learn.microsoft.com/en-us/sql/relational-databases/backup-restore/quickstart-backup-restore-database?view=sql-server-ver16&tabs=ssms)


