-- The user Sally_Kunde needs to update their email!
-- It should now be "sally.kunde@gmail.com"
update users
set email = "sally.kunde@gmail.com"
where username = 'Sally_Kunde'
