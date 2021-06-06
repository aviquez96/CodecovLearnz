echo "Cloning repo..."
clone_repo(){
    git clone https://codecov:${GH_TOKEN}@github.com/codecov/python-standard.git
    cd CodecovLearnz
}

# Get current month and year, e.g: Apr 2018
dateAndTime=`date +"%D %T"`
echo "Modifying README.md..."
change_readme() {
  sed -i -e "s|.*Last Updated:.*|### Last Updated: $dateAndTime|g" README.md

  rm -f README.md-e
}

echo "Committing changes, pushing to GH repo..."
commit_and_upload() {
  
  git add .
  git commit -m "New Build: ${dateAndTime}" 
  git remote rm origin 
  git remote add origin https://codecov:${GH_TOKEN}@github.com/codecov/python-standard.git
  git push origin master --quiet

}

#run all methods
clone_repo
change_readme
commit_and_upload