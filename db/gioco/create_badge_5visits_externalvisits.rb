kind = Kind.find_or_create_by(name: 'externalvisits')
badge = Badge.create({ 
                      :name => '5visits', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'