echo -n "Enter your age: "
read age
if [ $age -lt 18 ]
then
echo "You need to be 18 or older to apply for
account"
else
echo "Choose your preferred account name"
fi
