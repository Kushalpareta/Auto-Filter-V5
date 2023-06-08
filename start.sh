if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kushalpareta/iPopcornBox.git /iPopcornBox
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /iPopcornBox
fi
cd /iPopcornBox
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
