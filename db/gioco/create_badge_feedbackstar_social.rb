kind = Kind.find_or_create_by(name: 'social')
badge = Badge.create({ 
                      :name => 'feedbackstar', 
                      :points => '100',
                      :kind_id  => kind.id,
                      :default => 'false'
                    })
puts '> Badge successfully created'