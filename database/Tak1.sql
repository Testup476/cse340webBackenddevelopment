--TASK 1

-- Insertion

  INSERT INTO public.account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

--- Updating

UPDATE public.account
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com';

---Deleting

DELETE FROM public.account
WHERE account_email = 'tony@starkent.com';


--- using the replace functio
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';


--Inner join

SELECT 
    i.inv_make,
    i.inv_model,
    c.classification_name
FROM 
    public.inventory AS i
INNER JOIN 
    public.classification AS c
ON 
    i.classification_id = c.classification_id
WHERE 
    c.classification_name = 'Sport';

-- Updating the inventory table

UPDATE public.inventory
SET 
    inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');