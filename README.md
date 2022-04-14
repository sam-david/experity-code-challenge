# Experity Coding Challenge
1. Read the JSON response from the URL and display the number of completed todo items for each user.
Completed in `rake tasks:seed`
2. Your end users are interested in distinguishing between users who have completed 50%+ of their total todos from those who have not. Visually encode this information in the above list.
View index page to see two table breakdown, one with users above 50% completion and one with less. The users are ordered by task completion percentage
3. Find and display the user that has completed the most todo items.
User at top of table is shown clearly with task completion percentage

Things you may want to cover:

* Ruby version: 2.7.2

* Database seeding
Run `rake tasks:seed` to seed databases with users and tasks from https://jsonplaceholder.typicode.com/todos

* How to run the test suite
Run `rspec spec` to run all tests. User and Task model tests created

