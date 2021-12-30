# README

# Adnat Demo App

An employee shift tracker created for Workforce application.

## Features

- User log in & sign up
- Index of organizations
- Organization edit form
- Shift edit form
- Organization shifts view

## Process

Having limited experience using Rails as a fullstack application builder,
much of my time was spent learning the nuances of views. As I got a better grasp for how they
function, I was able to put more time into the project constraints.

I began working with a [database schema](https://docs.google.com/spreadsheets/d/1p8oB1u6SFBjvawI812RL0pyP9-B-82zOHxJoeFon6k8/edit#gid=0)
to sketch out what models and routes I would be building. After reading through all of the bonus itmes,
I decided to sketch out the schema slightly differently. The associations are built to allow for users to join multiple organizations (through a join table)
and have multiple breaks. I could have put a limit on breaks and had columns such as break1, break2, and break3, but I decided
it might be cleaner to make a breaks table associated with shifts.

I have yet to finish the breaks implementation and clean up some bugs (such as the create shift action).
I also am working on separating the date from the time in the display table.

Overall this was a great learning process for me and I gained a lot of quality tools to work with Rails.

# adnat
