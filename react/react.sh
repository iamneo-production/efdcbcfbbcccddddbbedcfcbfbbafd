cp /home/coder/project/workspace/react/setupTests.js /home/coder/project/workspace/reactapp/src/setupTests.js;

if [ -d "/home/coder/project/workspace/reactapp/src/tests/" ]
    then
        rm -r /home/coder/project/workspace/reactapp/src/tests;
fi
cp -r /home/coder/project/workspace/react/tests /home/coder/project/workspace/reactapp/src/;

cd /home/coder/project/workspace/reactapp/;
export CI=true;
npx react-scripts test --verbose --testPathPattern=src/tests 2>&1;