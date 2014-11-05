# give 1st parameter is name of directory contain oracle java
sudo mkdir /usr/lib/jvm
sudo mv ./$1 /usr/lib/jvm/$1
#echo $1
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/$1/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/$1/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/$1/bin/javawis" 1
#sudo update-alternatives --config java
#sudo update-alternatives --config javac
#sudo update-alternatives --config javaws
