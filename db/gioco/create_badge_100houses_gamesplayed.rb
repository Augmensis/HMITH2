kind = Kind.find_or_create_by(name: 'gamesplayed')
badge = Badge.create({ 
                      :name => '100houses', 
                      :points => '20',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'