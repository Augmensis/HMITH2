kind = Kind.find_or_create_by(name: 'gamesplayed')
badge = Badge.create({ 
                      :name => '2500houses', 
                      :points => '250',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts "> #{badge.name} badge successfully created"