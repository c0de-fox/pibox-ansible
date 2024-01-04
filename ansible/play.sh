#!/bin/bash

playbook_name=$1
inventory_path="./inventories/"
log_path="../logs"
log_file="${log_path}/${playbook_name}.log"

mkdir -p "${log_path}"

echo "${playbook_name} started at $(date)" | tee -a "${log_file}"

{ time ansible-playbook -i "${inventory_path}" "${playbook_name}" ; } 2>&1 | tee -a "${log_file}"

echo "${playbook_name} finished at $(date)" | tee -a "${log_file}"
