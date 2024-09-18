SRC_DIR="../data/GSE92332_RAW"
DEST_DIR="../data/GSE92332_uncompressed"

mkdir -p "$DEST_DIR"

for file in "$SRC_DIR"/*.gz; do
    filename=$(basename "$file" .gz)
    
    gunzip -c "$file" > "$DEST_DIR/$filename"
    
    echo "gunzip finish: $filename"
done

echo "All done"