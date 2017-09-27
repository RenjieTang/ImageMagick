#!/usr/bin/perl
#
# Make simple text with a shadow.
#
use Image::Magick;

$image=Image::Magick->new(size=>'500x120');
$image->Read('xc:white');
$image->Annotate(fill=>'rgba(100,100,100,0.8)',pointsize=>60,
   text=>'Works like magick!',geometry=>'+10+90');
$image->Blur('0x1');
$image->Annotate(fill=>'red',stroke=>'blue',pointsize=>60,
  text=>'Works like magick!',geometry=>'+6+86');
$image->Write('shadow.gif');
$image->Write('win:');
