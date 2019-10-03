target='./my_plugins'
package_list='./my_plugins.list'
for package_url in $(cat ${package_list}); do
    package_name=$(echo ${package_url} | rev | cut -d"/" -f 1 | rev | sed "s/.git$//g")
    git clone ${package_url} "${target}/${package_name}"
done
