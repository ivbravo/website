#!/bin/sh

# Removes empty lines
cat _site/about/index.html | grep . > docs/about/index.html
cat _site/gallery/index.html | grep . > docs/gallery/index.html
cat _site/search/index.html | grep . > docs/search/index.html
cat _site/tags/index.html | grep . > docs/tags/index.html

sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/about/index.html
sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/gallery/index.html
sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/search/index.html
sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/tags/index.html

for d in _site/gallery/*/ ; do
    dir=${d%*/}
    cat _site/gallery/${dir##*/}/index.html | grep . > docs/gallery/${dir##*/}/index.html
    sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/gallery/${dir##*/}/index.html
done
