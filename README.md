aws-service-ping
================

This file simply creates a (Chrome) selenium webdriver to go and read the status of all North American AWS services.

The handle is somewhat weak since it only looks at the tab specifically by ID, but I wanted to see if it could be done with a minimal time investment. I'd love to check and make sure it works when one of the services goes down, but I have no way to take down S3 or any of the AWS services to do that. Enjoy.

