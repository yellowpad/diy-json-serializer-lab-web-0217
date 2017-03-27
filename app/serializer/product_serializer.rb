class ProductSerializer
  def self.serialize(product)
 
    # start with the open brace to create a valid JSON object
    serialized_product = '{'
 
    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"price": "' + product.price.to_s + '", '
   
    if product.inventory.nil?
        serialized_product += '"inventory": "' + "0" '", '
    else
        serialized_product += '"inventory": "' + product.inventory.to_s + '", '
    end
    
    if product.description.nil?
      serialized_product += '"description": "none"'
    else
      serialized_product += '"description": "' + product.description + '"'
    end
    # the author association can also be represented in JSON
 
    # and end with the close brace
    serialized_product += '}'
  end
end