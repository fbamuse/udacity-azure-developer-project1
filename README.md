# Article CMS (FlaskWebProject)

[![Build Status](https://dev.azure.com/uda-azure-developer/project1/_apis/build/status/fbamuse.udacity-azure-developer-project1?branchName=main)](https://dev.azure.com/uda-azure-developer/project1/_build/latest?definitionId=1&branchName=main)


This project is a Python web application built using Flask. The user can log in and out and create/edit articles. An article consists of a title, author, and body of text stored in an Azure SQL Server along with an image that is stored in Azure Blob Storage. You will also implement OAuth2 with Sign in with Microsoft using the `msal` library, along with app logging.


## images Folder
This folder contains sample screenshots that students are required to submit in order to prove they completed various tasks throughout the project.

1. article-cms-solution.png is a screenshot from running the FlaskWebProject on Azure and prove that the student was able to create a new entry. The Title, Author, and Body fields must be populated to prove that the data is being retrieved from the Azure SQL Database while the image on the right proves that an image was uploaded and pulled from Azure Blob Storage.
![](images/images/2021-04-12-11-09-59.png)
1. azure-portal-resource-group.png is a screenshot from the Azure Portal showing all of the contents of the Resource Group the student needs to create. The resource group must 
![](images/2021-04-12-11-11-33.png)
3. sql-storage-solution.png is a screenshot showing the created tables and one query of data from the initial scripts.
![](images/2021-04-12-11-16-35.png)

4. blob-solution.png is a screenshot showing an example of blob endpoints for where images are sent for storage.
![](images/2021-04-12-11-20-11.png)  
5. uri-redirects-solution.png is a screenshot of the redirect URIs related to Microsoft authentication.
![](images/2021-04-12-11-26-33.png)
6. log-solution.png is a screenshot showing one potential form of logging with an "Invalid login attempt" and "admin logged in successfully", taken from the app's Log stream. You can customize your log messages as you see fit for these situations.
![](images/2021-04-12-20-11-48.png)
