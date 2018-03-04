@echo off

:: 只需要更改两处：
:: 第一处：该项目所在目录
set shell_project=C:\ALISURE\Python\Pycharm\File\other\Linux-Shell
:: 第二处：需要上传的原始md所在目录
set need_upload_md_path=md

:: 临时文件夹，用于存放转换后的文件
set need_upload_tmp=github

set github_project=C:\ALISURE\IDEA\File\github-site\hexo\alisure.github.io
set github_file_path=source\_posts

:: 转换内容
echo begin upload-transfer.cmd
call upload-transfer.cmd %need_upload_tmp% %need_upload_md_path%
echo upload-transfer over

:: 复制文件到指定目录
copy %shell_project%\%need_upload_tmp% %github_project%\%github_file_path%

:: 部署上线
echo begin upload-hexo.cmd
call upload-hexo.cmd %github_project%
cd %shell_project%
echo upload-hexo over

:: 上传git
echo begin upload-git.cmd
call upload-git.cmd %github_project% %github_file_path%
cd %shell_project%
echo upload-git over

:: 删除生产的文件
echo begin delete file
rd /s /q %need_upload_tmp%
echo delete file

echo all over
