#!/bin/bash
# Look for Burp Suite JAR in known locations first (avoid slow full-disk find)
if [ -d "/usr/share/burpsuite" ]; then
    burp=$(find /usr/share/burpsuite -name 'burp*.jar' 2>/dev/null | tail -1)
elif [ -d "/opt/BurpSuiteCommunity" ]; then
    burp=$(find /opt/BurpSuiteCommunity -name 'burp*.jar' 2>/dev/null | tail -1)
else
    burp=$(find /usr/share /opt -maxdepth 3 -name 'burp*.jar' 2>/dev/null | tail -1)
fi
if [ -z "$burp" ]; then
    echo "Burp Suite JAR not found, skipping cert download"
    exit 0
fi
/bin/bash -c "timeout 90 /usr/share/burpsuite/jre/bin/java -Djava.awt.headless=true -jar $burp < <(echo y) &"
sleep 45
curl -s --retry 3 --retry-delay 5 http://localhost:8080/cert -o /tmp/cacert.der
if [ $? -ne 0 ]; then
    echo "Failed to download Burp cert - Burp may not be listening on 8080"
    exit 0
fi
exit 0
