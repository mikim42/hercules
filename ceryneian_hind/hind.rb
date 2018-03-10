# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    hind.rb                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/09 16:06:35 by mikim             #+#    #+#              #
#    Updated: 2018/03/09 21:20:43 by mikim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require 'oauth2'

UID = ENV['MY_UID'];
SECRET = ENV['MY_SECRET'];

if ARGV.length > 1
	puts "Too many arguments"
	return 0
end

client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")
token = client.client_credentials.get_token

if !token
	puts "Failed to get data from the server"
	return 0
end

if !UID or !SECRET
	puts "Credential is empty"
	return 0
end

if ARGV.length == 1 and File.file?(ARGV[0])
	File.open(ARGV[0], "r") do |f|
		f.each_line do |line|
			line = line.strip
			begin
				response = token.get("/v2/users/#{line}/locations")
				until response.status == 200
					puts "Waiting for the server..."
					sleep(3)
				end
				if response.parsed[0]["end_at"]
					puts "OFFLINE - #{line}\n\n"
				else
					puts "ONLINE - #{line}: #{response.parsed[0]["host"]}\n\n"
				end
			rescue
				puts "#{line} not found\n\n"
			end
		end
	end
elsif ARGV.length == 0
	until false
		puts "Enter '_EXIT' to exit"
		print "Enter login: "
		begin
			login = gets().strip
		rescue
			return 0
		end
		begin
			if login == "_EXIT"
				return 0
			end
			response = token.get("/v2/users/#{login}/locations")
			until response.status == 200
				puts "Waiting for the server..."
				sleep(3)
			end
			if response.parsed[0]["end_at"]
				puts "OFFLINE - #{login}\n\n"
			else
				puts "ONLINE - #{login}: #{response.parsed[0]["host"]}\n\n"
			end
		rescue
			puts "#{login} not found\n\n"
		end
	end
else
	puts "cannot find the file"
end
