#/bin/bash!

git clone https://github.com/web-servers/cloudStreamProvider.git
mvn -f cloudStreamProvider/pom.xml install
git clone --single-branch -b dns-ping https://github.com/web-servers/cloudMemberProvider.git
mvn -f cloudMemberProvider/pom.xml install
git clone --single-branch -b dns-ping https://github.com/maxime-beck/tomcat-in-the-cloud-webapp.git
mvn -f ./tomcat-in-the-cloud-webapp/pom.xml install
cp ./tomcat-in-the-cloud-webapp/target/tomcat-in-the-cloud-webapp.war ./sample.war