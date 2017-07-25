class Seed

  def self.begin
    seed = Seed.new
    seed.generate_rock
  end

  def generate_rock
    rock1 = Rock.create!(name: 'Igneous')
    rock2 = Rock.create!(name: 'Metamorphic')
    rock3 = Rock.create!(name: 'Sedimentary')
    mineral1 = Mineral.create!(name: 'Fluorite',
                              category: 'Halide',
                              image: 'public/images/fluorite.png',
                              crystal_system: 'Isometric',
                              color: '{purple, lilac, golden-yellow, green, colorless, blue, pink, champagne, brown}',
                              crystal_habit: '{Well-formed coarse sized crystals; also nodular, botryoidal, rarely columnar or fibrous; granular, massive}',
                              cleavage: 'octahedral',
                              hardness: 4,
                              luster: 'vitreous',
                              streak: 'white',
                              diaphaneity: '{transparent to translucent}',
                              geo_location: '{Fluorite occurs in low-to-high temperature hydrothermal veins, granites and granite pegmatites.}',
                              rock_id: rock1.id)

    mineral2 = Mineral.create!(name: 'Cassiterite',
                              category: 'Oxide',
                              image: 'public/images/cassiterite.png',
                              crystal_system: 'Tetragonal',
                              color: '{black, yellow, brown, red, white}',
                              crystal_habit: '{Pyramidic, prismatic, radially fibrous botryoidal crusts and concretionary masses; coarse to fine granular, massive.}',
                              cleavage: 'indistinct',
                              hardness: 7,
                              luster: 'adamantine',
                              streak: 'white',
                              diaphaneity: '{transparent when light colored, dark material nearly opaque}',
                              geo_location: '{Cassiterite occurs in medium- to high-temperature hydrothermal veins.}',
                              rock_id: rock2.id)

    mineral3 = Mineral.create!(name: 'Sunstone',
                              category: 'Plagioclase',
                              image: 'public/images/sunstone.jng',
                              crystal_system: 'Triclinic',
                              color: '{red, brown, golden, aventurescent}',
                              crystal_habit: '{Rare, solid aggregates}',
                              cleavage: 'perfect',
                              hardness: 6,
                              luster: 'adamantine',
                              streak: 'white',
                              diaphaneity: '{transparent to translucent}',
                              geo_location: '{All three known sunstone occurrences are in small basalt flows that superficially resemble basalt flows that contain large feldspar phenocrysts or megacrysts.}',
                              rock_id: rock3.id)

    mineral4 = Mineral.create!(name: 'Corundum',
                              category: 'Oxide',
                              image: 'public/images/corundum.jng',
                              crystal_system: 'Trigonal',
                              color: '{colorless, gray, brown, pink, red, orange, yellow, green, blue, violet}',
                              crystal_habit: '{Steep bipyramidal, tabular, prismatic, rhombohedral crystals, massive or granular}',
                              cleavage: 'none',
                              hardness: 9,
                              luster: 'adamantine',
                              streak: 'white',
                              diaphaneity: '{transparent, translucent to opaque}',
                              geo_location: '{Found in granular limestone, gneiss, mica or chlorite schists.}',
                              rock_id: rock1.id)

    mineral5 = Mineral.create!(name: 'Azurite',
                              category: 'Carbonate',
                              image: 'public/images/azurite.png',
                              crystal_system: 'Monoclinic',
                              color: '{blue, pale blue, dark blue}',
                              crystal_habit: '{Massive, prismatic, stalactitic, tabular}',
                              cleavage: 'perfect',
                              hardness: 4,
                              luster: 'vitreous',
                              streak: 'blue',
                              diaphaneity: '{transparent to translucent}',
                              geo_location: '{Chessy copper mines, France}',
                              rock_id: rock2.id)

    mineral6 = Mineral.create!(name: 'Rhodonite',
                              category: 'Inosilicate',
                              image: 'public/images/rhodonite.png',
                              crystal_system: 'Triclinic',
                              color: '{rose, pink, brown, red, gray, yellow}',
                              crystal_habit: '{Tabular crystals, massive, granular}',
                              cleavage: 'perfect',
                              hardness: 6,
                              luster: 'vitreous',
                              streak: 'blue',
                              diaphaneity: '{Transparent to translucent}',
                              geo_location: '{Rhodonite occurs in manganese deposits formed by hydrothermal contact and regional metamorphism.}',
                              rock_id: rock3.id)

    mineral7 = Mineral.create!(name: 'Humite',
                              category: 'Nesosilicates',
                              image: 'public/images/humite.png',
                              crystal_system: 'Orthorhombic',
                              color: '{white, yellow, orange, brown, colorless}',
                              crystal_habit: '{Crystals typically highly modified, to 1 cm; granular.}',
                              cleavage: 'poor',
                              hardness: 6,
                              luster: 'vitreous',
                              streak: 'white',
                              diaphaneity: '{transparent to translucent}',
                              geo_location: '{Typically in contact metamorphic zones in limestones and dolostones associated with felsic, or more rarely, alkalic plutonic rocks.}',
                              rock_id: rock1.id)


  end
end

Seed.begin
