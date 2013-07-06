def urlsorter url
  #Protocal http
  seperaterProtocal = 0
  while url[seperaterProtocal].chr != ':' && seperaterProtocal < url.length
    seperaterProtocal = seperaterProtocal + 1
  end
  protocal = url[0..seperaterProtocal - 1]
 
  #subdomain
  seperaterAddress = seperaterProtocal
  while url[seperaterAddress].chr != '.' && seperaterAddress < url.length
    seperaterAddress = seperaterAddress + 1
  end
  
    #if seperaterProtocal > 
  subdomain = url[seperaterProtocal+3..seperaterAddress-1]
  
  seperaterDomain = seperaterAddress
  while url[seperaterDomain].chr != '/' && seperaterDomain < url.length
    seperaterDomain = seperaterDomain + 1 
  end
  domain = url[seperaterProtocal+7..seperaterDomain-5]
  
  seperatorTLD = seperaterDomain
  while url[seperatorTLD].chr != '/' && seperatorTLD < url.length
    seperatorTLD = seperatorTLD + 1 
  end
  tld = url[seperaterDomain-3..seperatorTLD-1]
  
  
  seperatorPath = seperatorTLD - 1 
  while seperatorPath < url.length  #url[seperatorPath].chr != '' && 
    seperatorPath = seperatorPath + 1 
  end
  
  path = url[seperatorTLD+1..seperatorPath-2]
  
  puts
  puts "Protocal: #{protocal}"  #http
  puts "Subdomain: #{subdomain}"  #www
  puts "Domain: #{domain}"      #google
  puts "TLD: #{tld}"                   #.com
  puts "Path: #{path}"                  #gmaps
  
end


urlsorter('http://blog.google.com/ruby-on-rails')
