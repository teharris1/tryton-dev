
pip install --upgrade wheel

cd tryton

# Initiate the tryton submodule
if [ ! -d "./trytond" ]; then
  git submodule init
  git submodule update
fi

cp .hgignore .gitignore
echo trytond/trytond/modules/ >> .gitignore
echo sao/locale/*.json >> .gitignore
echo package-lock.json >> .gitignore

rm -rf `find . -name \*.egg-info`
.hooks/update_requirements
.hooks/link_modules


pip install -e tryton -e proteus -r requirements.txt -r requirements-dev.txt

cd sao
rm -rf bower_components dist node_modules package-lock.json
sudo npm install -g grunt-cli
npm install --legacy-peer-deps
grunt --force
