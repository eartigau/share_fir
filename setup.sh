#!/bin/bash
# Bootstrap: clone share_fir and make datashare.sh executable

REPO="https://github.com/eartigau/share_fir.git"
DEST="share_fir"

if [[ -d "$DEST" ]]; then
    echo "Directory '$DEST' already exists, skipping clone."
else
    git clone "$REPO" "$DEST"
fi

chmod +x "$DEST/datashare.sh"
echo "Done. Run with: $DEST/datashare.sh"
