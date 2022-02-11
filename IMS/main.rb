require 'mysql2'
system("clear")

crud = ["1. Create Row", "2. Read", "3. Update", "4. Delete Row"]
puts "WELCOME, WHAT DO YOU WANT TO DO?"
puts crud [0..3]
in_crud = gets.chomp.to_i
ary = in_crud.to_i-1
system("clear")
puts crud[ary]
nameoffun = in_crud.to_i

def connection
  @connects = Mysql2::Client.new(:host => "localhost", :username => "80XI", :password => "password", :database => "IMS", :table => "ims_logs")
end

def create
  @connects.query("INSERT INTO ims_logs(Id, Product_Category, Product_Name, Quantity, Cost_Price, Selling_Price, Vendor_Id, Vendor_name, Product_Status) values('#{@id}', '#{@p_c}', '#{@p_n}', '#{@q}', '#{@c_p}', '#{@s_p}', '#{@v_id}', '#{@v_n}', '#{@p_s}')")
end

def read
  read_table = @connects.query("SELECT * FROM ims_logs")
  # puts "Id\tProduct Category\tProduct Name\tQuantity\tCost Price\tSelling Price\tVendor Id\tVendor Name\tProduct Status"
  read_table.each do |row|    
  puts "\nId: #{row['Id']}\nProduct Category: #{row['Product_Category']}\nProduct Name: #{row['Product_Name']}\nQuantity: #{row['Quantity']}\nCost Price: #{row['Cost_Price']}\nSelling Price: #{row['Selling_Price']}\nVendor Id: #{row['Vendor_Id']}\nVendor Name: #{row['Vendor_Name']}\nProduct Status: #{row['Product_Status']}"
    
end 
end

def update_row
  update_table = @connects.query("UPDATE ims_logs SET #{@update_col} = '#{@update_new}' WHERE Id = '#{update_id}'")
end

def delete
  delete_table = @connects.query("DELETE FROM ims_logs WHERE id = #{@del_id}")
  puts ("Row with id #{@del_id} is deleted")
end

if nameoffun == 1 then
  connection
    puts "Enter Id"
    @id = gets.chomp
    puts "Enter Product Category"
    @p_c = gets.chomp
    puts "Enter Product Name"
    @p_n = gets.chomp
    puts "Enter Quantity"
    @q = gets.chomp
    puts "Enter Cost Price"
    @c_p = gets.chomp
    puts "Enter Selling Price"
    @s_p = gets.chomp
    puts "Enter Vendor Id"
    @v_id = gets.chomp
    puts "Enter Vendor Name"
    @v_n = gets.chomp
    puts "Enter Product Status"
    @p_s = gets.chomp
    create
    puts "Successful"
end

if nameoffun == 2 then
  connection
  read
end

if nameoffun == 3 then
  connection
  # puts "Enter a Id where you want to modify"
  # @update_id = gets.chomp
  puts "Enter which column you want to modify"
  @update_col = gets. chomp
  puts "Enter the update"
  @update_new = gets. chomp
  update_row
end

if nameoffun == 4 then
  connection
  puts "Enter Id number to delete"
  @del_id = gets.chomp
  delete
end