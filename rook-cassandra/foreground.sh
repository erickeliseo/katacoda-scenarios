launch.sh
echo -e "\u001b[32mClone the Git Repository\u001b[m\r\n"
git clone https://github.com/rook/rook.git
git clone https://github.com/erickeliseo/files.git

echo -e "\u001b[32mCambiando permisos al setup-rook_cluster.sh\u001b[m\r\n"
chmod u+x files/setup-rook_cluster.sh
