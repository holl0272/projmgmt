User.delete_all
Client.delete_all
Project.delete_all

u1 = User.create(:first_name => 'Admin', :last_name => 'Admin', :email => 'admin@f-robots.com', :phone => '6127030272', :address => '161 Meserole Street Brooklyn NY', :ssn => '987654321', :image => '#', :note => 'Administrator', :is_admin => 'true', :password => 'admin123', :password_confirmation => 'admin123')
u2 = User.create(:first_name => 'Eric', :last_name => 'Holland', :email => 'eric@f-robots.com', :phone => '6127030272', :address => '161 Meserole Street Brooklyn NY', :ssn => '123456789', :image => 'http://www.f-robots.com/assets/crew_items/eric_holland.jpg', :note => 'Jr Developer', :is_dev => 'true', :password => 'abc123', :password_confirmation => 'abc123')
u3 = User.create(:first_name => 'Ryan', :last_name => 'Straus', :email => 'ryan@f-robots.com', :phone => '6129870013', :address => '161 Meserole Street Brooklyn NY', :ssn => '234567890', :image => 'http://www.f-robots.com/assets/crew_items/ryan_straus.jpg', :note => 'Sr Designer', :is_design => 'true', :password => 'abc123', :password_confirmation => 'abc123')
u4 = User.create(:first_name => 'Brian', :last_name => 'Corr', :email => 'brian@f-robots.com', :phone => '7184315932', :address => 'Park Slope NY', :ssn => '345678901', :image => 'http://www.f-robots.com/assets/crew_items/brian_corr.jpg', :note => 'Sr Developer', :is_dev => 'true', :password => 'abc123', :password_confirmation => 'abc123')
u5 = User.create(:first_name => 'Ericka', :last_name => 'Saraniero', :email => 'ericka@f-robots.com', :phone => '2129871234', :address => 'Staten Island NY', :ssn => '456789012', :image => 'http://www.f-robots.com/assets/crew_items/erika_saraniero.jpg', :note => 'Jr Designer', :is_design => 'true', :password => 'abc123', :password_confirmation => 'abc123')
u6 = User.create(:first_name => 'Brittany', :last_name => 'Frevola', :email => 'brit@f-robots.com', :phone => '2123070274', :address => 'Long Island NY', :ssn => '456789012', :image => 'http://www.f-robots.com/assets/crew_items/brit.jpg', :note => 'Project Manager', :is_pm => 'true', :password => 'abc123', :password_confirmation => 'abc123')
u7 = User.create(:first_name => 'Mauricio', :last_name => 'Rodriguez', :email => 'mauricio@f-robots.com', :phone => '2127894321', :address => 'Harlem NY', :ssn => '567890123', :image => 'http://www.f-robots.com/assets/crew_items/mauricio.jpg', :note => 'Photographer', :is_photo => 'true', :password => 'abc123', :password_confirmation => 'abc123')
u8 = User.create(:first_name => 'Julia', :last_name => 'Holleman', :email => 'julia@f-robots.com', :phone => '7184315932', :address => 'Park Slope NY', :ssn => '678901234', :image => 'http://www.f-robots.com/assets/crew_items/julia.jpg', :note => 'Creative Writer', :is_write => 'true', :password => 'abc123', :password_confirmation => 'abc123')

c1 = Client.create(:name => 'Kevin Thomas Garcia Photography', :address => 'Hells Kitchen NY', :primary_name => 'Kevin Garcia', :primary_email => 'kevin.thomasg@gmail.com', :primary_phone => '9177032631', :second_name => ' Christian Acosta', :second_email => ' acostac@gmail.com', :second_phone => '2122994669', :note => 'Professional Photographer')
c2 = Client.create(:name => 'Abzyme Research Foundation', :address => 'Brooklyn NY', :primary_name => 'Zachary Barnett', :primary_email => 'zachary@abzymeresearchfoundation.org', :primary_phone => '2128464437', :second_name => ' Gabe Shaughnessy', :second_email => 'GabeShaughnessy@gmail.com', :second_phone => '2122623797', :note => 'AIDS Fundraising Foundation')
c3 = Client.create(:name => 'MTV2', :address => 'Times Square NY', :primary_name => 'Ross Jeffcoat', :primary_email => 'ross.jeffcoat@mtvstaff.com', :primary_phone => '2122623797', :second_name => 'Bill Simpson', :second_email => 'bill.simpson@mtvstaff.com', :second_phone => '2122623790', :note => 'online media and marketing department')

p1 = Project.create(:title => 'Site Design', :job_num => 'KTG101', :deadline => '2013-06-01', :description => 'design new website including logo and copy')
p2 = Project.create(:title => 'Site Development', :job_num => 'KTG102', :deadline => '2013-06-15', :description => 'front and backend code for new website')
p3 = Project.create(:title => 'Site Updates', :job_num => 'ARF101', :deadline => '2013-04-25', :description => 'update site with new assets and copy')
p4 = Project.create(:title => 'CMS development', :job_num => 'MTV101', :deadline => '2013-05-01', :description => 'build and develope a CMS for images and copy')
p5 = Project.create(:title => 'MVA Feed', :job_num => 'MTV102', :deadline => '2013-07-15', :description => 'Frontend development for MVA Feeds')

c1.projects = [p1, p2]
c2.projects = [p3]
c3.projects = [p4, p5]

