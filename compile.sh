cat lib/*.js > build/zui53.js
#find ./coffee/ -type f -name '*.coffee' -print0 | xargs -0 sed -e '$G' | coffee -c -s >> build/zui53.js
for n in coffee/tools/toolset.coffee coffee/tools/pan_tool.coffee coffee/tools/zoom_tool.coffee coffee/zui53.coffee coffee/surfaces/*.coffee
do
cat $n | coffee -s -c  >> build/zui53.js
done
