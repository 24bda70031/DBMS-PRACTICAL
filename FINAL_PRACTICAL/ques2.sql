CREATE OR REPLACE FUNCTION check_stock_before_insert()
RETURNS TRIGGER AS $$
DECLARE
    available_stock INT;
BEGIN
    -- Retrieve the current stock for the requested product
    SELECT stock_qty INTO available_stock
    FROM Tbl_Products
    WHERE prod_id = NEW.prod_id;

    -- Block the insert if requested quantity exceeds available stock
    IF NEW.qty > available_stock THEN
        RAISE EXCEPTION 'Insert blocked: Requested quantity (%) exceeds available stock (%) for Product ID %', 
                        NEW.qty, available_stock, NEW.prod_id;
    END IF;

    -- If the check passes, proceed with the insert
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER enforce_stock_limit
BEFORE INSERT ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock_before_insert();
