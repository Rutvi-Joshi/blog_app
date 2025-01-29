# README

# 1. User Module
Sign Up/Sign In: Users can sign up and sign in via email using the Devise gem.
Profile Editing: Users can edit the following attributes:
Upload Profile Avatar
City, State, Country, Phone, and Gender

# 2. Post Module
Post Creation: Users can create multiple posts with the following attributes:
Title
Description
Images (multiple images per post)
Tags (auto-suggested field, users can select or create new tags)
Post Listing: Server-side rendering, pagination, and search functionality for listing posts.
Search with title and description

# 3. Comments Module
Post Comments: Users can comment on posts. The post owner can also add comments on their own posts.
Requirements
Ruby version:  3.2.2
Rails version: 8.0.1
Database: SQLite

## Setup Instructions
1. Clone the Repository
Clone the repository to your local machine:

git clone  https://github.com/Rutvi-Joshi/blog_app.git
cd blog_app

## 2. Install Dependencies
Install Ruby gems and JavaScript dependencies:

bundle install
yarn install

## 3. Database Setup
Set up the database and run migrations:

rails db:create
rails db:migrate

## 4. Start the Server
Run the Rails server:
rails server
The application should now be running at http://localhost:3000.

5. User Authentication
The application uses Devise for user authentication. You can sign up or sign in via email.

6. Creating Posts
Once logged in, users can create posts by providing a title, description, images, and tags. You can select tags from an auto-suggest list or create new tags.

7. Commenting on Posts
Users can comment on posts, and the post owner can also add comments to their own posts.

Validation
The application performs necessary validations, such as ensuring that required fields are filled out and that images and tags are correctly associated with posts.

Basic UI
The app includes a simple user interface to manage profiles, posts, and comments. You can enhance the UI further as needed.

GitHub Repository
The code for this application is available on GitHub:

https://github.com/Rutvi-Joshi/blog_app.git

