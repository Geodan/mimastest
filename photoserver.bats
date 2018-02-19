load config

@test "test growapp getphotoset" {
   run curl -s -i -X POST -H "Content-Type: application/x-www-form-urlencoded" -d photoid=1173 "http://${photoserverhost}/photoserver/getphotoset"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "HTTP" ]]
   [[ $output =~ "4.9170138" ]]
}

