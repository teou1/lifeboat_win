In case you want to remix the image, after chaning what you want, you will need the scripts i used to make a diff between 
the original image from Microsoft and yours. Here are the scripts i used to generate the files_to_delete and slim the image:

./generate_list.sh ./full ./slim files_to_delete

After generating the list, you slim the image accouding to it before repackaging 
(so that directories full and slim become identical)

./clean_dir.sh files_to_delete ./full

Or, to remove the lot of now empty directories

./clean_dir_emptydir.sh files_to_delete ./full

The generate_list_reverse script checks which files in the smaller image are not present in the big image. If there are
many of those in the drivers or winsxs the image will probably not boot, so you have to manually strip the files 
and not with the help of the script.

Note: the wim images will almost never be byte or hash identical, since Microsoft, in its infinite wisdom, 
made the format so that the metadata about the generation dir and total file size etc. are inside the image and thus change it.
