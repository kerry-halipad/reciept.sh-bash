#!/bin/bash
read -p "what is your name? " name
read -p "item name " item
read -p "what is the price ? " price
read -p "what's the quantity ? " quantity

if [[ -z "$name" ]]; then 
   name="Client"
fi
if [[ -z "$item" ]]; then
   echo "error"
   exit 1
fi
if [[ -z "$price" || "$price" = *[!0-9]* ]]; then
   echo "error"
   exit 1
fi
if [[ -z "$quantity" || "$quantity" = *[!0-9]* ]]; then
   echo "error"
   exit 1
fi
if (( $quantity < 1 || $quantity > 1000 )); then
   echo "invalid quantity"
   exit 1
fi
   subtotal=$(( price * quantity))
    
if (( subtotal >= 100000 )); then
       pct=10
elif (( subtotal >= 20000 )); then
       pct=5
else
       pct=0
fi
echo "subtotal:$subtotal"
#    echo "Subtotal : $Subtotal"

# if [ "$Subtotal" -ge 100000 ] ; then
#    discount=$(( Subtotal*10/100 ))
# elif [ "$Subtotal" -ge 20000 ] ; then
#    discount=$(( Subtotal*5/100 )) 
# else
#    discount=0
# fi
#    echo "discount :$discount"
#    total=$(( subtotal-discount ))
#    VAT=$(( "$total"*1925/10000))
#    echo "VAT:$VAT"

#    total=$((total + VAT))
#    echo "Final total:$total"