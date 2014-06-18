kind = Kind.find_or_create_by(name: 'correctguesses')
badge = Badge.create({ 
                      :name => '5000correct', 
                      :points => '500',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'