#! /usr/bin/env bash
#$ -S /bin/bash


sub=$1
FILE=$PWD/T00_${sub}_mprage.nii.gz
OUT_DIR=$PWD
TEMPLATE_DIR=/home1/dorian.pustina/pennTemplate
export ANTSPATH=~sudas/bin/localization/ants_avants_Dec162013/

  ${ANTSPATH}antsBrainExtraction.sh \
            -d 3 \
            -a $FILE \
            -f ${TEMPLATE_DIR}/templateBrainExtractionRegistrationMask.nii.gz \
            -e ${TEMPLATE_DIR}/template.nii.gz \
            -m ${TEMPLATE_DIR}/templateBrainMask.nii.gz \
            -o $OUT_DIR/T00_${sub}_mprage_brain


