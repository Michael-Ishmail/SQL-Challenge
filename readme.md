Welcome to my employee tracker app! 

To use the app, open the terminal and run the server.js file via node.js. The app will give you several options to chose from, allowing you to view, add, edit, and remove employees from the database.

I was running into an error with requiring in the npm packages. It was giving me the following error; err_require_esm. I attempted to find a fix for this so i could continue using require, but i was unable to find a fix. Instead, i used import and stored the result into a constant. This workaround achieved the same result.

I was also unable to complete the View Employee by Department and Add Role functions. I was running into the following SQL error for those;

Error Code: 1055 incompatible with sql_mode=only_full_group_by.

I researched the issue and attempted to fix it using stack overflow and by reading the SQL documentation, but i was unsuccessfull. The two functions are inaccessable at the moment.

Below is a link to the github repository.

https://github.com/Michael-Ishmail/SQL-Challenge

Below is a youtube link to my applications demo.

https://youtu.be/4nu7ibOKP4o
