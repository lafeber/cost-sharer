namespace :fuzz do
  require 'faker'

  def random_words(n=3, response=[])
    Faker::Lorem.words(n).join(' ')
  end
    
  def create_user
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    
    User.create(:login => "#{first_name}.#{last_name}@kostendeler.nl".gsub(/[']/,'').downcase,
      :name => "#{first_name} #{last_name}",
      :password => "wordpass",
      :password_confirmation => "wordpass",
      :account_id => "PB#{(rand(899999) + 100000).to_s}"
    )
  end
    
  desc "Creates some test data"
  task :create => :environment do
    # Create 6 groups:
    6.times { Group.create(:name => random_words.titleize) }
 
    # Assign between 5-12 users as members to a group:
    Group.all.each do |g|
      # OK, so why rand + 2?
      # 1. A group should have at least 1 member or the next step of this script will fuck up;
      # 2. Groups with less than 2 members are not useful for this application.
      n = rand(7) + 2 
      n.times do 
        user = create_user
        g.users << user
        g.save
      end
      # Make the first member of the group an administrator:
      admin = g.members.first
      admin.is_admin = true
      admin.save
    end    
  end   
end