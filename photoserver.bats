load config

@test "test growapp getphotoset" {
   run curl -s -i -X POST -H "Content-Type: application/x-www-form-urlencoded" -d photoid=1173 "http://${photoserverhost}/photoserver/getphotoset"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "HTTP" ]]
   [[ $output =~ "4.9170138" ]]
}

@test "test growapp uploads" {
   run bash -c "curl -s http://${photoserverhost}/uploads/d395a6b89fedf988a84cb309fa03a7a0.jpg -o /tmp/test.jpg && file /tmp/test.jpg && rm /tmp/test.jpg"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "JPEG image data" ]]
}


@test "test growapp small uploads" {
   run bash -c "curl -s http://${photoserverhost}/uploads/small/d395a6b89fedf988a84cb309fa03a7a0.jpg -o /tmp/test.jpg && file /tmp/test.jpg && rm /tmp/test.jpg"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "JPEG image data" ]]
}

@test "test growapp medium uploads" {
   run bash -c "curl -s http://${photoserverhost}/uploads/medium/d395a6b89fedf988a84cb309fa03a7a0.jpg -o /tmp/test.jpg && file /tmp/test.jpg && rm /tmp/test.jpg"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "JPEG image data" ]]
}
