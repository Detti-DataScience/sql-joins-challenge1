SELECT district,email FROM address
FULL JOIN customer
ON address.address_id = customer.address_id
WHERE district = 'California'
