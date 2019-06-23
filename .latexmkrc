$pdf_previewer  = 'start gv --watch';
$pdf_mode = 1;
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode';
@generated_exts = (@generated_exts, 'synctex.gz');
