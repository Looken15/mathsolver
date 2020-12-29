# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

#### Method Gauss and Kramer

We have added Two methods for solving a system of linear equations: Gauss and Kramer.

The Gauss method is implemented as a function, and the Kramer rule is implemented as a method for the Matrix class.

To use the Gauss method, you need to call it with a single argument-the matrix whose roots you want to find.

##### Example 
```ruby
gauss_method_sol(Matrix[[1,2,3,4,5],[0,1,-1,2,3],[0,1,-1,2,3],[0,2,-2,4,6]].row_vectors
```
##### Answer
```ruby
[-1,3,0,0]
```

To use Kramer's rule, you need to call it as a method of the Matrix class with an array argument containing the values of each expression of a system of linear equations
##### Example 
```ruby
Matrix[[2, -5, 3], [4, 1, 4], [1, 2, -8]].kramer([7,21,-11]
```
##### Answer
```ruby
[3,1,2]
```