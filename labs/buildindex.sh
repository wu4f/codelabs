export PATH="/usr/local/home/wuchang/go/src/github.com/googlecodelabs/tools/site/node_modules/.bin:$PATH"
export CODELAB_LOC="$HOME/claat"
#gulp build -f ../tools/site/gulpfile.js --base-url=https://thefengs.com/wuchang/courses/cs410b/labindex --codelabs-dir=/usr/local/home/wuchang/courses/cs410b/labs --codelabs-namespace="/wuchang/courses/cs410b/labs"
#gulp dist -f ../tools/site/gulpfile.js --codelabs-dir=/usr/local/home/wuchang/claat/labs --codelabs-namespace="/labs"
gulp dist -f $CODELAB_LOC/tools/site/gulpfile.js --codelabs-dir=$CODELAB_LOC/labs --codelabs-namespace="/labs"
rsync -a -I $CODELAB_LOC/tools/site/dist/ /var/www/html/codelabs
rsync -k -r $CODELAB_LOC/tools/site/dist/ ~/git/codelabs
touch /var/www/html/codelabs/cs*.html
chmod -R go+rX /var/www/html/codelabs $CODELAB_LOC/labs
