Contributing to the REST cookbook
---------------------------------
The REST cookbook website uses [Jekyll](https://github.com/mojombo/jekyll/wiki), a simple yet powerfull blog engine 
that easily allows for creating simple websites like these.

Contributing to our site is simple:
  * Fork the website to your own github account.
  * Clone your repository onto your computer. Make sure you create a new branch, and not use the master branch.
  * Create a new page inside the /_posts/* directory. This HAS GOT TO BE IN THE FORMAT OF YEAR-MONTH-DAY-FILENAME.html!!!
  * Add & commit your changes, and push it to your repository.
  * Create a pull request and we will try and merge your recipe.

Creating a new page
===================
As said, a page must be placed in the _post directory, and in the year-month-day-filename.html format. Otherwise it
wont get picked up by the system. Every post should look somewhat like this:

    ---
    layout: recipe
    title: <Title>
    category: <Category>
    author: <your name>
    author_email: <your email address>
    ---
    <h2>Title</h2>

    <p>Your recipe</p>

The author_email address is optional. Make sure the category name is one of the existing category names (case matters),
otherwise your posting will be added inside a new topic. If you have troubles creating a new page, take a look at one
of the existing pages, or ask us for help.
