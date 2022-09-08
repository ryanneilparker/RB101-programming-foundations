# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.

male_munsters = munsters.select do |name, hash|
  hash['gender'] == 'male'
end

male_munster_ages = male_munsters.map do |name, hash|
  hash['age']
end

p male_munster_ages.sum
