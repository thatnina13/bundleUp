curl "http://localhost:4741/items" \
  --include \
  --request POST \
  --header "Content-Type:application/json" \
  --data '{
    "item": {
      "user_id": "'"${USER_ID}"'",
      "name": "'"${NAME}"'",
      "size": "'"${SIZE}"'",
      "category": "'"${CATEGORY}"'",
      "zip_code": "'"${ZIP_CODE}"'"
  }
}'
