kind = Kind.find_or_create_by(name: 'general')
badge = Badge.create({ 
                      :name => 'firstbadge', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => 'false',
                      :description => "Congratulations on earning your first badge! You can unlock more rewards just by playing :)"
                    })
puts '> Badge successfully created'