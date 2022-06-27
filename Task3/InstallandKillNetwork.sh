#!/usr/bin/env bash

echo "Hope you didn't forget about the pass"
mv ~/exadel/Task3.1/Task8.tf ~/exadel/sandbox/Task3/
mv ~/exadel/sandbox/Task3/TaskPrivate.tf ~/exadel/Task3.1/
terraform apply
echo "Wait 3 mins! After that the nginx will be installed and Private server will be cut from the NAT"
sleep 3m
mv ~/exadel/sandbox/Task3/Task8.tf ~/exadel/Task3.1/
mv ~/exadel/Task3.1/TaskPrivate.tf ~/exadel/sandbox/Task3/
terraform apply
echo "All done"
