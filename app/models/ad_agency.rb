class AdAgency
   include MongoMapper::Document
   
   key :name, String
   key :description, String
   key :photo_url, String
   key :email, String
   timestamps!
end
