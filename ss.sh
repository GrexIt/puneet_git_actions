  all_files_arr=[".github/workflows/file_type.yml"]
  echo "All Files : "$all_files_arr
  php_file_count=`echo $all_files_arr|tr -d "[]\"" |tr "," "\n"|grep -c "\.php$" || true`
  echo $php_file_count
  if [ "$php_file_count"  -eq "0" ];then
        echo "No PHP files found, skipping image creation."
  else
        echo "PHP files found, starting image creation."
  fi
