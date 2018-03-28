USE sakila;

-- Display first/last name of actors
select first_name, last_name from actor;

-- Add Actor_Name column using first/last name columns
alter table actor 
add column actor_name varchar(30);

update actor set actor_name = concat(first_name,' ', last_name);

-- ID number, first name, and last name of an actor named Joe
select actor_id, first_name, last_name from actor
	where first_name = 'Joe';
 
-- Actors whose last name contain the letters GEN 
select actor_name from actor
	where last_name LIKE "%GEN%";
 
-- Actors whose last names contain the letters LI ordered by last name 
select * from actor
	where last_name LIKE "%LI%"
    order by last_name, first_name;
    
-- Display ID and country using IN 
select country_id, country from country 
	where country in ('Afghanistan', 'Bangladesh', 'China');
   
-- Add middle name column to actor table   
alter table actor 
add column middle_name varchar(30) after first_name;

-- Change middle_name data type to blob
alter table actor
modify column middle_name blob;

-- Delete middle_name column
alter table actor
drop column	middle_name;

-- List actors' last names and number of actors with the name
select last_name, COUNT(*) 
	from actor
    group by last_name;
    
-- List actors' last names and number of actors with the name shared by at least two actors
select last_name, COUNT(*) 
	from actor
    group by last_name
    HAVING count(*) >= 2;

-- Update Groucho Williams to Harpo Williams    
update actor 
	set first_name = 'HARPO',
        actor_name = 'HARPO WILLIAMS'
    where actor_name = "GROUCHO WILLIAMS";

-- Attempt at 4D
update actor
	set first_name = 'GROUCHO',
		actor_name = 'GROUCHO WILLIAMS'
	where actor_name = 'HARPO';

-- Show schema for the address table to recreate it    
SHOW CREATE TABLE address;

-- Join first/last names of staff and their addresses
SELECT s.first_name, s.last_name, a.address
 from staff s, address a 
 where s.address_id = a.address_id;
 
-- Total amount rung up by staff during Aug05
SELECT s.first_name, s.last_name, sum(p.amount) as 'Total Payments'
 from staff s, payment p
 where s.staff_id = p.staff_id
 AND p.payment_date between '2005-08-01 00:00:00' and '2005-08-31 23:59:59'
 group by s.first_name, s.last_name;

-- Number of actors listed in each film
select film.title, count(film_actor.actor_id) as '# of Actors'
from film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id
group by film.title;

-- Copies of Hunchback Impossible in inventory
SELECT inventory.film_id, film.title,
  COUNT(film.title) AS 'Total Copies'
  FROM inventory
  LEFT JOIN film ON inventory.film_id = film.film_id
  where film.title = 'Hunchback Impossible'
  group by inventory.film_id, film.title;

-- Total paid by each customer, cusomers listed alphabetically  
SELECT first_name, last_name, sum(payment.amount) as 'Total Payments'
 from customer, payment
 where customer.customer_id = payment.customer_id
 group by customer.first_name, customer.last_name
 order by customer.last_name;

-- Title of film starts with k and q & whose language is English
select title
 from film
 where title in 
 (
  select title
  from film
  where language_id in
  (
   select language_id
   from language
   where name = 'English'
   )
   )
   And title like 'q%'
   or title like 'k%';
 
-- All actors in 'Alone Trip'
Select first_name, last_name
 from actor
 where actor_id in
 (
  select actor_id
  from film_actor
  where film_id in
  (
   SELECT film_id
     FROM film
     WHERE title = 'Alone Trip'
     )
	);
 
-- Failed attempt at 7c
SELECT customer.first_name, customer.last_name, customer.email
 from customer, address  
 where customer.address_id = address.address_id
 and; 

-- Family films
select title
	from film 
    where film_id in
	( 
	 select film_id
	 from film_category
     where category_id in
	 (
	  select category_id
	  from category
      where name = 'Family'
      )
	 );
     
     
SELECT first_name, last_name, sum(payment.amount) as 'Total Payments'
 from customer, payment
 where customer.customer_id = payment.customer_id
 group by customer.first_name, customer.last_name
 order by customer.last_name;

-- Most frequently rented movies in descending order
select title, count(rental.rental_date) as 'Total Rentals'
 from rental
 inner join inventory on inventory.inventory_id = rental.inventory_id
 inner join film on film.film_id = inventory.film_id
 group by title
 order by count(rental.rental_date) desc;
 

-- Total amount of business each store brought in
select store.store_id, sum(payment.amount) as 'Payment Total'
 from payment
 inner join customer on customer.customer_id = payment.customer_id
 inner join store on store.store_id = customer.store_id
 group by store_id;
 
-- Failed attempts at 7g  
select store.store_id, city.city, country.country 
  case when c.course is null then 'no' else 'yes' end TrainingCompleted,
  coalesce(c.datecompleted, 'n/a') datecompleted
from store 
left outer join city
  on o.job=j.job 
left outer join risktraining r 
  on j.risk=r.risk 
left outer join coursescompleted c 
  on o.person=c.person 
  and r.training = c.course   
where o.department='finance'

 select store.store_id, country.country, addresss.city_id
  from country
  join country on store.store_id = address.
 
 select * from address;
 