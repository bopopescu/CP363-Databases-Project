NOTE: When prompting for Items ask user if he/she wants to be prompted for a list of items or not.

1) Check if item exists if not, create item. It it does, then increase stock level by the amount that was purchased.
	Create a Purchase Order (randomly generated end date, all others are real values) where prompt for item id, randomly generate all other item attribtues.

2) Sell to Customer:
		List all items and prices then allow user to input item ID to sell and the quantity. Decrement item and create a Transaction before decrementing. All Transaction attribtues will be randomly generated except transaction_id.

3) Modify Item attribute discount_percentage. List items and discount percentages and Prompt for Item ID and % of discount.

4) List all items that fall below their stock_level compared to their current item quantity. 
	Maybe split up into another option? ** Display all items below a certain stock level as well.

5,6,7) For each specific item? Per category maybe? For all?

