#!/bin/bash
# Bootstrap: clone share_fir and make datashare.sh executable

REPO="https://github.com/eartigau/share_fir.git"
DEST="/home/eartigau/bin/share_fir/"

if [[ -d "$DEST/.git" ]]; then
    echo "Directory '$DEST' already exists, pulling latest changes..."
    git -C "$DEST" pull
else
    git clone "$REPO" "$DEST"
fi

chmod +x "$DEST/datashare.sh"
echo "Done. Run with: $DEST/datashare.sh"
