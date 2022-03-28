jupyter book build /home/uko/Dev/metadata/ --path-output /home/uko/Dev/metadata_book/ --toc /home/uko/Dev/metadata_book/_toc.yml
python /home/uko/Dev/metadata/json2head.py
python /home/uko/Dev/metadata/meta_collapse.py

# Copy google verification file to _build
cp googled194e0c154256c20.html ./_build/html
