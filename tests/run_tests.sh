cd /camb/forutils
make Release
cd /camb
make Release


python python/CAMB_test_files.py testfiles --make_ini
cd testfiles
git clone -b $TRAVIS_BRANCH --depth=1 https://github.com/cmbant/CAMB_test_outputs.git
cd ..
python python/CAMB_test_files.py testfiles --diff_to CAMB_test_outputs/expected_outputs --verbose

