if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ghub0/auto.git /Auto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto
fi
cd /mirrorbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
