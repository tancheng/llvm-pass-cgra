icmpbr=$(grep -o 'icmpbr' dfg.json | wc -l)
phigetelementptr=$(grep -o 'phigetelementptr' dfg.json | wc -l)
fp2fx=$(grep -o 'fp2fx' dfg.json | wc -l)
faddmuladd=$(grep -o 'faddmuladd' dfg.json | wc -l)
if [ "$icmpbr" -eq 1 ] && [ "$phigetelementptr" -eq 1 ] && [ "$fp2fx" -eq 1 ] && [ "$faddmuladd" -eq 1 ]; then
    echo "Nonlinear Test Pass!"
else
    echo "Nonlinear Test Fail! icmpbr, phigetelementptr, fp2fx, faddmuladd should be 1, but got $icmpbr, $phigetelementptr, $fp2fx, $faddmuladd."
    exit 1
fi
