FactoryGirl.define do

  factory :rock do
    name('Igneous')
    factory :rock_with_minerals do
      transient do
        minerals_count 7
      end
      after(:create) do |rock, evaluator|
        create_list(:mineral, evaluator.minerals_count, rock: rock)
      end
    end
  end

  factory :mineral do
    name('Fluorite')
    category('Halide')
    image('public/images/fluorite.png')
    crystal_system('Isometric')
    color('{purple, lilac, golden-yellow, green, colorless, blue, pink, champagne, brown}')
    crystal_habit('{Well-formed coarse sized crystals; also nodular, botryoidal, rarely columnar or fibrous; granular, massive}')
    cleavage('octahedral')
    hardness(4)
    luster('vitreous')
    streak('white')
    diaphaneity('{transparent to translucent}')
    geo_location('{Fluorite occurs in low-to-high temperature hydrothermal veins, granites and granite pegmatites.}')
    rock
  end
end
