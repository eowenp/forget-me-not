#!/usr/bin/env bash
cd lambda
rm index.zip
cd custom
zip  ../index.zip * –X -r
# read -n1 -r -p "Zip complete, press space to deploy..." key

cd ..
aws lambda update-function-code --function-name ForgetMeNot --zip-file fileb://index.zip

