# Upload a File via API

## One-Time Preparation: Create a Dropbox App
- [Create a Dropbox App](https://www.dropbox.com/developers/apps/create) which has at least the permission
  `file.content.write`
- Write down the App key (`APP_KEY`) and App secret (`APP_SECRET`)

## One-Time Preparation: Get a OAuth 2.0 Refresh Token
- Open the url
  ```
  https://www.dropbox.com/oauth2/authorize?client_id=<APP_KEY>&token_access_type=offline&response_type=code
  ```
  and authorize the App.
- Write down the authorization code (`AUTHORIZATION_CODE`)
- Retrieve a refresh token
  ```sh
  curl https://api.dropbox.com/oauth2/token \
       -d code=<AUTHORIZATION_CODE> \
       -d grant_type=authorization_code \
       -u <APP_KEY>:<APP_SECRET>
  ```
  The response will contain the refresh token at the JSON key `"refresh_token"`. Write it down (`REFRESH_TOKEN`)

## Uploading the File
- Get an up-to-date access token
  ```sh
  curl https://api.dropbox.com/oauth2/token \
       -d grant_type=refresh_token \
       -d refresh_token=<REFRESH_TOKEN> \
       -u <APP_KEY>:<APP_SECRET>
  ```
  The access token will be returned at the JSON key `"access_token"`. Write it down (`ACCESS_TOKEN`).
- Upload the file
  ```sh
  curl -X POST https://content.dropboxapi.com/2/files/upload \
       --header "Authorization: Bearer <ACCESS_TOKEN>" \
       --header "Dropbox-API-Arg: {\"path\":\"/Path/To/Dropbox/Destination\",\"mode\":\"overwrite\",\"mute\":true}" \
       --header "Content-Type: application/octet-stream" \
       --data-binary @path/to/file/to/upload
  ```
  You can reuse the access token as long as it is valid
