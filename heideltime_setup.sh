wget http://archive.apache.org/dist/uima/uimaj-2.6.0/uimaj-2.6.0-bin.tar.gz
tar xvfz uimaj-2.6.0-bin.tar.gz
$UIMA_HOME/bin/adjustExamplePaths.sh
wget https://github.com/HeidelTime/heideltime/releases/download/VERSION2.2.1/heideltime-kit-2.2.1.tar.gz
tar xvfz heideltime-kit-2.2.1.tar.gz
mv heideltime-kit heideltime
mkdir treetagger
cd treetagger
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tree-tagger-linux-3.2.2.tar.gz
wget http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tagger-scripts.tar.gz
wget http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/install-tagger.sh
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/german.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/english.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/dutch.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/italian.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/spanish.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/french.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/estonian.par.gz
wget https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/portuguese.par.gz
sh install-tagger.sh
source $HEIDELTIME_HOME/metadata/setenv
rm *.gz
cd ..
wget https://github.com/HeidelTime/heideltime/releases/download/VERSION2.2.1/heideltime-standalone-2.2.1.tar.gz
tar xvfz heideltime-standalone-2.2.1.tar.gz
rm *.gz
python3 -m pip install -r requirements.txt
mv heideltime heideltime_kit
mv heideltime-standalone HeidelTime
cp __init__.py HeidelTime/__init__.py