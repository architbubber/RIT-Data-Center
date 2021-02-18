sudo apt-get update
echo "installing git"
sudo apt install git
echo "succesfully installed git"
echo "cloning the project to root directory"
git clone https://github.com/sanath8/RIT-Data-Center.git
echo "successfilly cloned the project to root directory"
echo "installing node server"
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
#change current working directory
echo "chaging current working directory"
cd RIT-Data-Center
echo $PWD
echo "installing all dependencies"
npm install 
sudo npm install forever -g
echo "starting the server"
npm start
echo "server started successfully"
forever list


