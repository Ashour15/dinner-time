# README

<h3 align="center">Dinner Time</h3>

  <p align="center">
    <br />
    <br />
    <a href="https://dinner-time-recipe-finder.herokuapp.com/">View Demo</a>
  </p>
</div>

### Built With

* Ruby 3.0.0
* Ruby On Rails 6.1.4
* Puma 5.0
* PostgresSQL 


### Usage

The website consists of 2 pages. The first page is the homepage, where you have a text area to wirte the home ingredients spearated only by a comma.

![Screenshot from 2021-12-11 05-05-57](https://user-images.githubusercontent.com/32988278/145661681-bb461f25-ec76-49b2-8121-001c1cf1901c.png)

The second page is just a list of recipes displayed in a table (no pagination at the moment). The table will show rthe name, rate, author tip, budget, preptime and ingredients of every recipe found. 

**Note**: These columns are the only ones shown, while the other fields found in JSON file are skipped at the moment.

![Screenshot from 2021-12-11 05-08-25](https://user-images.githubusercontent.com/32988278/145661728-b5f60fc1-a339-48b0-ae7a-84f4c2023196.png)



<!-- ROADMAP -->
## Roadmap

- [] Create a Regex pattern to improve the ingredeints name extraction from the string
- [] Add the option to match only recipes with ingredients less or equal to home ingredients 
- [] Add pagination to the table
- [] Enhance the UI/Design
