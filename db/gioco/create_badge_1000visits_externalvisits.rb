kind = Kind.find_or_create_by(name: 'externalvisits')
badge = Badge.create({ 
                      :name => '1000visits', 
                      :points => '100',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'