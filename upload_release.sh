USERNAME="GATEOVerflow"
YOUR_REPOSITORY="GO-PDFs"
YOUR_RELEASE_ID="161340981"


RELEASE_ID="161340981"
GITHUB_TOKEN=$GH_TOKEN
REPO_OWNER="GATEOverflow"
REPO_NAME="GO-PDFs"

delete_asset() {
    ASSET_NAME=$1
    # List assets for the release and extract the asset ID for the given name
    ASSET_ID=$(curl -H "Authorization: token $GITHUB_TOKEN" \
    https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/releases/$RELEASE_ID/assets | \
    jq -r ".[] | select(.name==\"$ASSET_NAME\") | .id")

    # Check if the asset was found and delete it
    if [ -n "$ASSET_ID" ]; then
        echo "Found asset '$ASSET_NAME' with ID $ASSET_ID. Deleting it..."
        curl -X DELETE -H "Authorization: token $GITHUB_TOKEN" \
        https://api.github.com/repos/$REPO_OWNER/$REPO_NAME/releases/assets/$ASSET_ID
        echo "Asset deleted."
    else
        echo "Asset '$ASSET_NAME' not found in release $RELEASE_ID."
    fi
}

delete_asset volume1.pdf
delete_asset volume2.pdf


curl -X POST \
-H "Authorization: token $GH_TOKEN" \
-H "Content-Type: application/octet-stream" \
--data-binary @volume1.pdf \
"https://uploads.github.com/repos/GATEOverflow/GO-PDFs/releases/161340981/assets?name=volume1.pdf"

curl -X POST \
-H "Authorization: token $GH_TOKEN" \
-H "Content-Type: application/octet-stream" \
--data-binary @volume2.pdf \
"https://uploads.github.com/repos/GATEOverflow/GO-PDFs/releases/161340981/assets?name=volume2.pdf"
