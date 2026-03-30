Q1. Retrieve all books in the 'fiction' genre:
Ans. Select * from books 
     where genre='fiction';	

Q2. Find books published after the year 1950:
Ans. Select * from books where 
	 published_year>1950

Q3. List all the customer from canada.
Ans. Select * from customers 
	 where country='canada'
     
Q4. Show orders placed in november 2023.
Ans. select * from orders
	 where order_date between '2023-11-01' and '2023-11-30'
     
Q5. Retrieve the total stock of books available.
Ans. select book_id,title, sum(stock) as total_stock
	 from books group by book_id;

Q6. Find the details of most expensive books.
Ans. Select * from books 
	 order by price desc limit 1;

Q7. Show all customers who ordered more than 1 quantity of the book.
Ans. select * from orders
	 where quantity>1

Q8. Retrieve all orders where the total amount exceeds $20:
Ans. select * from orders
	 where total_amount >20;
     
Q9. List all the genre available in the books table.
Ans. select distinct(genre) from books

Q10. Find the book with the lowest stock.
Ans. select * from books
	 order by stock asc limit 1

Q11. Calculate the total revenue generated from all orders.
Ans. select sum(total_amount) as total_revenue
	 from orders

---Advanced questions--

Q12. Retrieve the total number of books sold for each genre.
Ans. select books.genre,sum(orders.quantity) as total
	 from orders join books on
     orders.book_id=books.book_id
     group by books.genre
	
Q13. Find the average price of the books in the 'fantasy' genre:
Ans. select round(avg(price),2) as average_price
	 from books where genre='fantasy'
     
Q14. list customers who have placed at least 2 orders.
Ans. select customers.customer_id,customers.name,count(orders.order_id) as order_count
	 from customers join orders on
     customers.customer_id=orders.customer_id
     group by customers.customer_id
     having count(orders.order_id)>=2