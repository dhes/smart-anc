#!/bin/bash
#DO NOT EDIT WITH WINDOWS
tooling_jar=tooling-1.3.1-SNAPSHOT-jar-with-dependencies.jar
input_cache_path=./input-cache
datadictionary_filename="WHO-ANC.xlsx"
datadictionary_sheetname="ANC.A. Registration,ANC.B5 Quick check,ANC.B6 Profile,ANC.B7 Symptoms&Follow-up,ANC.B8 Physical exam,ANC.B9 Lab tests & imaging,ANC.B10 Counselling & treatment,ANC.C. Referral,ANC.End End"
decisiontables_filename="WHO-SRH-21.2-eng.xlsx"
decisiontables_sheetname="ANC.DT.01 Danger signs,ANC.DT.02 HEADSS assessment,ANC.DT.03 Check symptoms,ANC.DT.04-05 Physical exam,ANC.DT.06 Physical exam refer,ANC.DT.07–14 Laboratory&imaging,ANC.DT.15 Behaviour counselling,ANC.DT.16 Dietary counselling,ANC.DT.17–24 Diagnosis & treat,ANC.DT.25 Anaemia IFA,ANC.DT.26 Nutrition–Ca+VitA,ANC.DT.27–30 Risk counselling,ANC.DT.31–32 Immunizations,ANC.DT.33–35General counselling,ANC.DT.36-37 IPV ,ANC.DT.38 Deworming & malaria"
scope="ANC"

set -e

tooling=$input_cache_path/$tooling_jar
if test -f "$tooling"; then
	JAVA -jar $tooling -ProcessAcceleratorKit -s=$scope -pts=./input/l2/"$datadictionary_filename" -dep="$datadictionary_sheetname" -op=.
else
	tooling=../$tooling_jar
	echo $tooling
	if test -f "$tooling"; then
		JAVA -jar $tooling -ProcessAcceleratorKit -s=$scope -pts=./input/l2/$datadictionary_filename -dep=$datadictionary_sheetname -op=.
	else
		echo ProcessAcceloratorKit NOT FOUND in input-cache or parent folder.  Please run _updateCQFTooling.  Aborting...
	fi
fi
