echo "==== Network Check ===="
echo ""

# Show IP address
echo "Your IP address is:"
ip a | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}'
echo ""

# Ping test
echo "Pinging marksandspencer.com..."
ping -c 3 marksandspencer.com > /dev/null

# Check exit code
if [ $? -eq 0 ]; then 
   echo " Connection OK" 
else 
   echo " Connection failed" 
fi

