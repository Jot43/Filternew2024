if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jot43/Filternew2024.git /Filternew2024
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filternew2024
fi
cd /Filternew2024
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
