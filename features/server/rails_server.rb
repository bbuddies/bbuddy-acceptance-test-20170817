def start_server
  `RAILS_ENV=test rails s -d -p 4000`
end

def stop_server
  `kill -9 $(cat tmp/pids/server.pid)`
end