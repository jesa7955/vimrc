base=$(pwd)
target=~/.vim_runtime
target_file=${target}/my_plugins.list
rm -f ${target_file}
for plugin in $(find ${target}/my_plugins/ -maxdepth 2 -type d | grep -e ".git$")
do
    cd "${plugin}/.."
    url=$(git remote show origin | grep "Fetch URL" | cut -d " " -f 5)
    echo ${url} | tee -a ${target_file}
done
cd ${base}
