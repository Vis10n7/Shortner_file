if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lucifer86790/Shortner_file.git /Shortner_file
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Shortner_file
fi
cd /Shortner_file
pip3 install -U -r requirements.txt
echo "Starting Shortner_file...."
python3 bot.py
