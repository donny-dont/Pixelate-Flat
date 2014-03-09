SET TARGET_DIR=../lib/stylesheets

@echo off
echo Compiling SaSS scripts

for %%f in (%TARGET_DIR%/*.scss) do (
		call sass %TARGET_DIR%/%%~nf.scss %TARGET_DIR%/%%~nf.css
    )

echo Fixing carets
for %%f in (%TARGET_DIR%/*.css) do (
    call ruby fix_caret.rb %TARGET_DIR%/%%~nf.css
    )

echo Done