
u = User.create :username => "a", :email => "a@a.com", :password => "a"
s = School.create :name => "Bwindi Nursery Primary School", :location => "Bwindi National Forrest", :level => "Primary"
c = Child.create :name => "Barbrah Gongo", :birthdate => DateTime.parse("04-05-1999"), :school_id => s.id
Donation.create :user => u, :child => c, :school => s
