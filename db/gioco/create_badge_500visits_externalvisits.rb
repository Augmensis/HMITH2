kind = Kind.find_or_create_by(name: 'externalvisits')
badge = Badge.create({ 
                      :name => '500visits', 
                      :points => '50',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'