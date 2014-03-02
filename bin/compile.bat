SET TARGET_DIR=../lib/stylesheets

@echo off
echo Compiling SaSS scripts

for %%f in (%TARGET_DIR%/*.scss) do (
		call sass %TARGET_DIR%/%%~nf.scss %TARGET_DIR%/%%~nf.css
    )

echo Fixing carets
CALL ruby fix_caret.rb %TARGET_DIR%/tree_view_node.css
CALL ruby fix_caret.rb %TARGET_DIR%/list_view_item.css
CALL ruby fix_caret.rb %TARGET_DIR%/expander.css

echo Done