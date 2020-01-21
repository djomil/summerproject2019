
# RUBY AND RUBY ON RAILS(RoR) VERSION USED
 
The version of Ruby we used was the 2.5.1, while the Rails version was Rails 5. 

# GEMS/LIBRARIES USED FOR THE APPLICATION 

The team used several gems to accomplish their tasks. 
These are the most notable: 
The ***csv*** gem was used in the pages managed by ActiveRecord, so to be able to convert a CSV file of the overall tables. 
Besides, concerning the styling, the team used ***bootstrap***.
Nevertheless, in order to properly work, ***bootstrap*** requires the ***jquery-rails*** and ***mini_racer*** libraries to be in place.
The application, due to the inherent features of Ruby, was slow. Thus, to tackle the issue, we used the *kaminari* gem. 
However, if left alone, ***kaminari*** conflicts with ***bootstrap***. In order to let them coexist it was necessary to install the ***bootstrap4-kaminari-views*** gem.
Moreover, the team used the ***will_paginate*** and ***will_paginate-bootstrap*** libraries to create a pagination system in the pages managed by ActiveRecord.
On top of that, the team used the gem ***bcrypt*** to create an authorization system, which relies on encrypted passwords. 
The team finally used the ***rspec-rails*** and ***capybara*** gems to test the Ruby code, while the JavaScript tests were implemented using ***jasmine***

# DATABASE CREATION

The application uses a PostgreSQL database, version 9.1. 

In order to access the local database of the application, the team had to write in the terminal the following code: 

**Psql -U, --username = posgres**

This code will run the database on the local machine. In due time, the local machine will prompt for a password.
The password is:

**ruby**

At this stage, the user can create a database. In our case we inputed the following command:

**CREATE DATABASE sruc_field**

Given that the new database was in place, we had to select the newly created database inputing the following command:

**\l sruc_field**

Once the database had been selected, we could work within it. 
Specifically, we had to build all the tables within it using the following command:

**CREATE TABLE name_of_the_table("attribute1" data_format1, "attribute2" data_format2, ..., "attribute x" data_format x);**

So, we run the following ones: 

**CREATE TABLE grain_allocations(  grain_allocation_id SERIAL UNIQUE PRIMARY KEY,
grain_id INTEGER REFERENCES grains (grain_id),
plotsubplot_id INTEGER REFERENCES plotsubplots (plotsubplot_id),
year_observation VARCHAR(5) NOT NULL,
percentage_85_DM_grain_y REAL,
percentage_85_DM_straw_y DECIMAL,
spec_wt DECIMAL,
tgw DECIMAL,
tillers DECIMAL,
grain_on_ear DECIMAL,
length DECIMAL,
percentage_crop_s DECIMAL,
percentage_prg_s DECIMAL,
percentage_rc_s DECIMAL,
percentage_wc_s DECIMAL,
percentage_tug_s DECIMAL,
percentage_tw_s DECIMAL,
percentage_prg_a DECIMAL,
percentage_wc_a DECIMAL,
percentage_rc_a DECIMAL,
percentage_tug_a DECIMAL,
percentage_tw_a DECIMAL, 
ph DECIMAL,
p DECIMAL,
k DECIMAL,
mg DECIMAL,
om DECIMAL,
replication INTEGER,
rotation VARCHAR(4)
);**

**CREATE TABLE grains(
    grain_id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    grain_type VARCHAR(70)
);**

**CREATE TABLE grass_allocations(
    grass_allocation_id SERIAL UNIQUE PRIMARY KEY,
  grass_id INTEGER REFERENCES grasses (grass_id),
  plotsubplot_id INTEGER REFERENCES plotsubplots (plotsubplot_id),
  year_observation VARCHAR(5) NOT NULL,
  percentage_100_dm_gm1 DECIMAL,
  percentage_100_dm_gm2 DECIMAL,
  percentage_100_dm_gm3 DECIMAL,
  percentage_100_dm_gm4 DECIMAL,
  percentage_100_dm_gm5 DECIMAL,
  percentage_100_dm_gm6 DECIMAL,
  percentage_100_dm_silage1 DECIMAL,
  percentage_100_dm_silage2 DECIMAL,
  d_value_1 DECIMAL,
  d_value_2 DECIMAL,
  me_1 DECIMAL,
  me_2 DECIMAL,
  lugd DECIMAL,
  percentage_prg_a DECIMAL,
  percentage_tim_a DECIMAL,
  percentage_wc_a DECIMAL,
  percentage_tug_a DECIMAL,
  percentage_tw_a DECIMAL,
  ph DECIMAL,
  p DECIMAL,
  k DECIMAL,
  mg DECIMAL,
  om DECIMAL,
  replication integer,
  rotation varchar (4))
);**

**CREATE TABLE grasses(
    grass_id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    grass_type VARCHAR(50)
);**

**CREATE TABLE plotsubplots(plotsubplot_id SERIAL UNIQUE PRIMARY KEY,
plot_id INTEGER NOT NULL,
subplot_id VARCHAR
);**

**CREATE TABLE tuberose_allocations(tuberose_allocation_id SERIAL UNIQUE PRIMARY KEY,
tuberose_id INTEGER REFERENCES tuberoses (tuberose_id),
plotsubplot_id INTEGER REFERENCES plotsubplots (plotsubplot_id),
year_observation VARCHAR(5) NOT NULL,
swede_and_pots_fwt DECIMAL,
percentage_root_dm DECIMAL,
percentage_100_dm_swede_leaf_dm_y DECIMAL,
percentage_crop_s DECIMAL,
percentage_root_s DECIMAL,
percentage_tug_s DECIMAL,
percentage_tw_s DECIMAL,
percentage_tug_a DECIMAL,
percentage_tw_a DECIMAL,
ph DECIMAL,
p DECIMAL,
k DECIMAL,
mg DECIMAL,
om DECIMAL,
replication integer,
rotation varchar (4)
);**

**CREATE TABLE tuberoses(tuberose_id SERIAL UNIQUE PRIMARY KEY,
tuberose_type VARCHAR(70);**

In case something went wrong, one could write the following command to get rid of the table: 

**DROP TABLE name_of_the table;**

**DROP TABLE grains;**

Once all operations were over, the database could be closed running the 

# DATABASE INITIALIZATION 

To initialize the database, the team used an SQL script, which would have seeded the tables with the new records.
The script was named script.sql, so to make it straightforward to use it.
Assuming that the database is closed, the following command should be inputed: 

**psql -U, --username=postgres -d sruc_field -f script.sql**

Once this command is executed, the database should be populated and can be used to let run any application relying on it. 

# HOW TO ADD DATA USING THE APPLICATION
In order to modify the data using the application you should have an account endowed with admin privileges. If you have it, you can click on the dropdown menu on the right side, named **add new records**.  
If you see the **grains**, **tuberoses**, **grasses** and **plotsubplots** tables, there is, on top and on the bottom of the records, a *New* button. 
If, for example, you want to create new grass records, you should remember the id of every single record, and start adding records departing from the last one.   
In order to create new records, you should respect the order. So, assuming the center decides to cultivate catnips, the record should display grass with value 6 and grass type with value catnip.
The order of the id number is extremely relevant because it affects the order on which the record appears on the database. 
That is, if you tried the same example as above with value 5, given that 5 already corresponds to grass and red clover, the record would be refused. 
The same holds for **plotsubplot**. 
By the way, remember that every plot is repeated thrice, because one record corresponds to the pre-2007 era, and the other two to the next period. 
Nonetheless, to every record corresponds an id, so you would have an id for plot 1 cultivated until 2006, an id for plot 1 with subplot a and an id for plot 1 with subplot b. 
Concerning the **Grain Allocations**, **Tuberose Allocations** and **Grass Allocations**, they have the new button that provides the same functions.  
Nonetheless, in order to make it work, there are several steps to undertake. 
Assuming you are adding a new record with preexisting plots and subplots and cultivars, then you have to add a new specific id for that allocation as well as recalling in the form an existing data. 
Besides, you have to compulsorily write also the year of reference, the rotation and the replication of this record. 
For example, assume we want to add a record, describing a field cultivated with swedes, in plot 1, subplot b, in year 2020 corresponding to replication 1 and rotation t2. 
So, what you have to do to write in the form is the following correspondences: Tuberose allocation = 137, Tuberose = 2,  Plotsubplot = 3, Year observation = 2020,  replication = 1, rotation = t2. 
Furthermore, there are other attributes to fulfill, but they are not compulsory and can be left blank up until you decide to modify them.
Concerning the **Add/Remove Users**, if you want to create the user johndoe@email.com, with password nil, and make him administrator, click on New User and the application will display a form to complete it.
Remember that by default new users are not administrators. 
Think twice if you want to make an user an administrator, as it might create, read, edit or destroy the records, including the existing number of users. 

# EDIT INFORMATION 
In order to modify the data using the application you should have an account endowed with admin privileges. 
If you have it, you can click on the dropdown menu on the right side, named **add new records**. 
If you see the **grains**, **tuberoses**, **grasses** and **plotsubplots** tables, there is, near the records a button named *edit*. 
Remember that modifying their id, which are *grain*, *tuberose*, *grass* and *plotsubplot*, respectively, might affect the functioning of other tables connected to it. 
However, assume that in the page grasses the record grass = 5, grass type = grass red clovers is wrong, given that is a plural. 
If we click **edit**, a form will be displayed, and you can use it to remove the “s”.
Once finished, click **update grass** and the results will be displayed. Then click *back* to come back to the records. 
When it comes to editing **Grain Allocations**, **Tuberose Allocations** and **Grass Allocations**, be careful, especially if you modify *grain allocation*, *tuberose allocation*, *grass allocation* given that they are the ids of the records displayed in the table. 
When it comes to *grain*, *tuberose*, *grass* and *plotsubplot*, they are dependant on the content of the tables **grass**, **grain**, **tuberoses**, **plots and subplots**, because they are their identification values in another table connected to the allocation table. 
Besides, the system will always prompt you to provide a value for year observation, replication and rotation. 
Concerning the **Add/Remove Users**, in case you wanted to modify the users, it is enough if you click edit in the row belonging to the user you want. Then, you will have a page like this:
When you click *update user*, it will show the record and then you can come back to the add/remove user page. 

# DELETE RECORDS
   
The **Grains**, **Tuberoses**, **Grasses**, **Plotsubplots**, **Grain Allocations**, **Tuberose Allocations** and **Grass Allocations** tables have all a *Destroy* button to remove the record. 
If you click on the *destroy* button, the system should display in a pop-up the following message:
 
***Press OK to delete the record*** 

When you delete the record, be very careful of what you are deleting. 
In some cases the same data might be used in other tables, and thus, if you delete it in one place, you might have a non-working table. 
The advice is to double check the id of the record, which is usually the first attribute of a table and see whether they are used elsewhere. 
Specifically, you can keep in mind the correspondences suggested in the list below, that tells you in which table an id is used. 

 
Plotsubplots = Plot and Subplot; Grain Allocations; Grass Allocations; Tuberose Allocations
Grain =	Grains; Grain allocations
Grain Allocation =	Grain Allocations	
Tuberose = Tuberoses; Tuberose Allocations
Tuberose Allocation = Tuberose Allocations 
Grass =	Grasses; Grass allocations
Grass Allocation = Grass Allocations


# HOW TO RUN THE TEST SUITE

To run the test suite generated by minitest the user should enter the following command on the terminal:

**rails test**

Otherwise, in order to run the test created using rspec, one should run the following command, which is:

**rspec**

# DEPLOYMENT

The team in dur time pushed the application on Heroku.com

To push the application, the user should undertake several steps.

To begin with, some settings on config/environments/production.rb should be modified. Specifically, the following line:

**config.assets.compile = false**

should be transformed into true, so that it would be

**config.assets.compile = true**

Besides, is necessary that the user connects to its Heroku account using this command:

**heroku login**

Furthermore, it is necessary to add a git branch using git clone. So, on terminal, the user should run: 

**heroku git:clone -a atcr**

Once these steps are accomplished the user should add and commit the various versions on the local git. Once this step is completed, it should send the whole program on heroku.
Consequently, the user should run these three commands on strict sequence:

**git add .**

**git commit -am "commit for Heroku"**

**git push heroku master**

Once the push on Heroku is completed, the user must move the database to the cloud application and seed it. 
To do so, it is necessary to run this command:

**PGUSER=postgres PGWD=root heroku pg:push sruc_field DATABASE_URL --app e-sruc**

Now the application should be accessible using the following link on a web browser:

*https://e-sruc.herokuapp.com*

# AUTHENTICATION CREDENTIALS

Email: admin@sruc.edu 
Password: password
This is an account with admin privileges, which works for Heroku.

Email: teamecho19@gmail.com
Password: karthik

This is an account with admin privileges, which should work in case you deploy your application on your local server. 

You might want, for security reasons, to log in using this one,create a new admin account and then delete this account.

In case you were not able to use neither of the two accounts, you can try the following procedure
WARNING: this procedure assume that the system you are using is already equipped to run Ruby and its framework RoR.
If not, use the following link to set up your system according to your needs **https://rubyinstaller.org/downloads/**
Once you are ready, use the following commands in the order they are reported 

1. Open the console of the program. To do so, you should first select the folder using ***cd path/name_folder***.
Remember that you can select one path at time and the navigation is hierarchically top-down.
If you want to come to the previous path back, input ***cd ..***
Once you selected the program, you should run in the terminal ***rails console***.
So, assume that the program is located in the folder sruc, within your Windows system: 
first you should navigate it up until you select ***"C:/System/sruc"***. 
So it should be ***cd System*** and then ***cd sruc***. Once the folder is selected, enter in the terminal ***rails console***.

2. Once it is open, run ***@user = User.all*** to check all users.

3. Then run ***@user = User.new(email: "xyz@email.com", password: 123)*** to create the user. 
On average users are not admin. However, if you want to make the user administrators and able to create and edit other accounts and 
accounts, you should run ***@User.admin = true****
Once you are satisfied run ***@user = User.save*** and run again ***@user = User.all*** to check if it has been added.
Don't panic if you can't understand the password! It is encrypted automatically, thus making your account more secure
So, say you want to create the user that has as email *ministerofrhytm92@yandex.ru* and use as password *48+1* 
First, you should write ***@user = User.new(email: "ministerofrhytm92@yandex.ru", password: 48+1)*** 
Then, assuming you want to make him administrator (danger zone!) you should run ***@User.admin = true***.
In due time, run ***@user = User.save*** and check if you have created him through the command ***@user = User.all***.
If the newly created email appears in the list, you can use it in the website.



