kind = Kind.find_or_create_by(name: 'general')
badge = Badge.create({ 
                      :name => 'firstbadge', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'