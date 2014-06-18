kind = Kind.find_or_create_by(name: 'correctguesses')
badge = Badge.create({ 
                      :name => '10000correct', 
                      :points => '1000',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'