load config

@test "test growapp small uploads" {
   run bash -c "curl -s http://${phenologyserver}/uploads/small/d395a6b89fedf988a84cb309fa03a7a0.jpg -o /tmp/test.jpg && file /tmp/test.jpg && rm /tmp/test.jpg"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "JPEG image data" ]]
}

@test "test growapp medium uploads" {
   run bash -c "curl -s http://${phenologyserver}/uploads/medium/d395a6b89fedf988a84cb309fa03a7a0.jpg -o /tmp/test.jpg && file /tmp/test.jpg && rm /tmp/test.jpg"
   [ $status = 0 ]
   [[ ${lines[0]} =~ "JPEG image data" ]]
}

@test "test growapp main.html" {
   run curl -s http://${phenologyserver}/phenology/main.html
   [ $status = 0 ]
   [[ ${lines[3]} =~ "<title>growapp-mdl</title>" ]]
}
