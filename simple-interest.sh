echo "Enter the principal:"
   read p
   echo "Enter time period in years:"
   read t
   echo "Enter rate of interest per year:"
   read r

   s=$(echo "scale=2; $p * $t * $r / 100" | bc)
   echo "The simple interest is: "
   echo $s


