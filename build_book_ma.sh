source config.sh
jupyter book build $PATH_DEV/metadata/ --path-output $PATH_DEV/metadata_book/ --toc $PATH_DEV/metadata_book/_toc.yml
python $PATH_DEV/metadata/json2head.py
python $PATH_DEV/metadata/meta_collapse.py

# Copy google verification file to _build
cp googled194e0c154256c20.html ./_build/html
cp environment.yml ./_build/html
cp -r $PATH_DEV/metadata/notebooks/src ./_build/html/_sources/notebooks
