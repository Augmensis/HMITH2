kind = Kind.find_or_create_by(name: 'correctguesses')
badge = Badge.create({ 
                      :name => '2500correct', 
                      :points => '250',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'