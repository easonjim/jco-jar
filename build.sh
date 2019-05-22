# auto deploy
mvn clean deploy -P release
# manual deploy, in "Staging Upload" manual upload target jar and asc files!
mvn clean package -P release
mvn verify -P release
cp ./lib/3.0.11/sapjco3.jar ./target/com.sap.conn.jco.sapjco3.jar
gpg --armor --detach-sign ./target/com.sap.conn.jco.sapjco3.jar
