############### Expanses ###############
# Food
5.times do |i|
    Expanse.create(
        description: "expense #{i}", 
        value: "#{ i*100 }", 
        category: "Food",
        date: "2022-0#{ i+1 }-10")
end
# Health
5.times do |i|
    Expanse.create(
        description: "expense #{i+5}", 
        value: "#{ i*100 }", 
        category: "Health",
        date: "2022-0#{ i+1 }-10")
end
# Education
5.times do |i|
    Expanse.create(
        description: "expense #{i+10}", 
        value: "#{ i*100 }", 
        category: "Education",
        date: "2022-0#{ i+1 }-10")
end
# Other
5.times do |i|
    Expanse.create(
        description: "expense #{i+15}", 
        value: "#{ i*100 }", 
        category: "Other",
        date: "2022-0#{ i+1 }-10")
end

############### Incomes ###############

# Food
5.times do |i|
    Income.create(
        description: "income #{i}", 
        value: "#{ i*100 }", 
        date: "2022-0#{ i+1 }-10")
end
# Health
5.times do |i|
    Income.create(
        description: "income #{i+5}", 
        value: "#{ i*100 }", 
        date: "2022-0#{ i+1 }-10")
end
# Education
5.times do |i|
    Income.create(
        description: "income #{i+10}", 
        value: "#{ i*100 }", 
        date: "2022-0#{ i+1 }-10")
end
# Other
5.times do |i|
    Income.create(
        description: "income #{i+15}", 
        value: "#{ i*100 }", 
        date: "2022-0#{ i+1 }-10")
end