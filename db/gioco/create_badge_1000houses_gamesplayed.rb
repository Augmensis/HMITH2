kind = Kind.find_or_create_by(name: 'gamesplayed')
badge = Badge.create({ 
                      :name => '1000houses', 
                      :points => '100',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'