load config

@test "test growapp getphotoset" {
   run curl -i -X POST -H "Content-Type: application/x-www-form-urlencoded" -d photoid=1173 "http://${photoserverhost}/photoserver/getphotoset"
   [ $status = 0 ]
   [[ ${lines[3]} =~ "HTTP" ]]
   [[ $output =~ "4.9170138" ]]
}


