#!/bin/sh

for value in 404.html feed.xml index.html en/404.html en/feed.xml en/index.html
do
  cat _site/$value | grep . > docs/$value
  sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/$value
done

for value in about contact gallery search tags en/about en/contact en/gallery en/search en/tags
do
  cat _site/$value/index.html | grep . > docs/$value/index.html
  sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/$value/index.html
done

for d in _site/gallery/*/ ; do
    dir=${d%*/}
    cat _site/gallery/${dir##*/}/index.html | grep . > docs/gallery/${dir##*/}/index.html
    sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/gallery/${dir##*/}/index.html
done

for d in _site/en/gallery/*/ ; do
    dir=${d%*/}
    cat _site/en/gallery/${dir##*/}/index.html | grep . > docs/en/gallery/${dir##*/}/index.html
    sed -i '' 's#http://localhost:4000#https://bozettoartgallery.com#g' docs/en/gallery/${dir##*/}/index.html
done

cp -rf _site/assets/. docs/assets/.
cp -rf _site/en/assets/. docs/en/assets/.
