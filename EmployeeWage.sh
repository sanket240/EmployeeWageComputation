echo "Employee Wage Compuation Problem"
isPresent=1
wageRate=20
dayHr=8
days=0
employeeWorkingHours=0
partTimeHr=$(($RANDOM%8+1))
workingDaysPerMonth=20
echo "1.Employee Attendance 2.Daily Wage 3.Part Time Wage"
read input
case $input in
	1)
		randomCheck=$(( RANDOM%2 ))
		if [[ $isPresent -eq $randomCheck ]]
		then
    			echo "Employee is present"
		else
     			echo "Employee is not present"
		fi
	;;
	2)
		dailyWage=$(( $wageRate * $dayHr ))
		echo "Daily employee wage = $dailyWage"
	;;
	3)
		partTimeWage=$(( $wageRate * $partTimeHr ))
		echo "For $partTimeHr part time hours wages are: $partTimeWage"
	;;
esac
dailyWage=$(( $wageRate * $dayHr ))
monthlyWage=$(( $dailyWage * $workingDaysPerMonth ))
echo "Monthly Wage=$monthlyWage"
echo "Wages " 
while [[ $days -lt 20 && $employeeWorkingHours ]]
do
	        employeeCheck=$(($RANDOM%2+1))
        case $employeeCheck in
        1)
                employeeWorkingHours=$(( $empHr + 8 ))
        ;;
	2)
                employeeWorkingHours=$(( $empHr + 4 ))
        ;;
        esac
	salary=$(( $employeeWorkingHours * $wageRate ))
	((days++))
	echo "$salary "

done
