curl "http://localhost:4741/items${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type:application/json" \
  --data '{
    "book": {
      "user_id": "'"${USER_ID}"'",
      "name": "'"${NAME}"'",
      "size": "'"${SIZE}"'",
      "category": "'"${CATEGORY}"'",
      "zip_code": "'"${ZIP_CODE}"'"
    }
  }'
