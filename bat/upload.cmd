@echo off

:: 只需要更改四处：
:: 第一处：该项目所在目录
set shell_project=C:\ALISURE\Python\Pycharm\File\other\Linux-Shell
:: 第二处：需要上传的原始md所在目录
set need_upload_md_path=md
:: 第三处：hexo中存放md的目录（_post后是分类目录）
set github_file_path=source\_posts\xxx
:: 第四处：如果_post后无分类目录，可将下面这行注释掉
if not exist %github_project%\%github_file_path% md %github_project%\%github_file_path%

:: 临时文件夹，用于存放转换后的文件
set need_upload_tmp=github

:: 博客项目所在目录
set github_project=C:\ALISURE\IDEA\File\github-site\hexo\alisure.github.io

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
