#!/bin/bash
URL="https://api.zephyrscale.smartbear.com/v2/automations/executions/junit?projectKey=${PROJECT_KEY}"

zip -D ./test/reports/junit_tests.zip ./test/reports/*.xml

curl -o -X POST -F "file=@test/reports/junit_tests.zip" -F "testCycle={\"name\": \"PR 1\" };type=application/json" -H "Authorization: Bearer ${TOKEN}" $URL
