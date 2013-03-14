User.transaction do
    User.create( :name => 'admin', :password => 'admin', :password_confirmation => 'admin')
end
