kind = Kind.find_or_create_by(name: 'externalvisits')
badge = Badge.create({ 
                      :name => '250visits', 
                      :points => '20',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'