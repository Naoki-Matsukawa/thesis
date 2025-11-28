#!/usr/bin/env perl

# latexmkrc for LuaLaTeX

# Use LuaLaTeX for compilation
$latex = 'lualatex -synctex=1 -halt-on-error -file-line-error %O %S';
$max_repeat = 5;
$out_dir = 'out';

# Set output mode to PDF explicitly
$pdf_mode = 1;
$dvi_mode = 0;
$postscript_mode = 0;

# preview
$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $dvi_previewer = "xdg-open %S";
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $dvi_previewer = "open %S";
    $pdf_previewer = "open %S";
} else {
    $dvi_previewer = "start %S";
    $pdf_previewer = "start %S";
}

