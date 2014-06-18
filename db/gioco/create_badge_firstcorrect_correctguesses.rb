kind = Kind.find_or_create_by(name: 'correctguesses')
badge = Badge.create({ 
                      :name => 'firstcorrect', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'