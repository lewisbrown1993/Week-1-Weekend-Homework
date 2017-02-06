def pet_shop_name(name)
  return @pet_shop[:name]
end


def total_cash(number)
  return @pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(cash, added)
  return cash[:admin][:total_cash] += added
end


def remove_or_add_cash(cash, removed)
  return cash[:admin][:total_cash] -= removed
end


def pets_sold(number)
  return @pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(number, increase)
  return number[:admin][:pets_sold] += increase
end


def stock_count(name)
  return name[:pets].count
end


def pets_by_breed(pet_shop, breed)
  pets_found = []
  for pet in pet_shop[:pets]
    pets_found.push(pet) if pet[:breed] == breed
  end
  return pets_found
end


def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
  end
  #return pets_found
end
return nil
end


def remove_pet_by_name(pet_shop, pet_name)
  x = find_pet_by_name(pet_shop, pet_name)
  shop[:pets].delete(x)

end