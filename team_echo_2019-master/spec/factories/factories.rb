FactoryBot.define do
  factory :grains do

    grain_id { "1" }
    grain_type  { "doe" }
    admin { false }
  end
end

FactoryBot.define do
  factory :grain_allocation do

    grain_allocation_id { "1" }
    grain_id  { "1" }
    admin { false }
  end
end
FactoryBot.define do
  factory :grass_allocation do

    grass_allocation_id{ "1" }
    grass_id  { "1" }
    admin { false }
  end
end

FactoryBot.define do
  factory :plotsubplot do

   plotsubplot_id { "1" }
   plot_id  { "1" }
    admin { false }
  end
end

FactoryBot.define do
  factory :tuberose_allocation do

    tuberose_allocation_id { "1" }
    tuberose_id  { "1" }
    admin { false }
  end
end

FactoryBot.define do
  factory :tuberose do

    tuberose_id { "1" }
    tuberose_type { "doe" }
    admin { false }
  end
end
 