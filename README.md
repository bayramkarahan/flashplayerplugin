#### flashplayerplugin
open with flashplayer plugin<br/>
![flashplayerplugin](https://github.com/bayramkarahan/flashplayerplugin/blob/master/res.jpeg)<br/>

#### Dosyamızını dosya türünü öğreniyoruz(1. yol)
```shell
$ xdg-mime query filetype kurt-kuzu-ot.swf 
application/x-shockwave-flash
```


#### Dosyamızını dosya türünü öğreniyoruz(2. yol)
file -ib kurt-kuzu-ot.swf 
<br/>application/x-shockwave-flash; charset=binary

#### Dosya türümüzü sisteme ekliyoruz(/usr/share/mime/package/abc.xml)
````
<?xml version="1.0" encoding="UTF-8"?>
<mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
 <mime-type type="application/x-shockwave-flash">
        <comment>Flash Dosyası</comment>
         <glob pattern="*.swf"/>
 </mime-type>
 </mime-info>
````

#### Dosya Türünü sistemde güncelliyoruz 
$ update-mime-database /usr/share/mime/


#### Desktop dosyası oluşturulur(/usr/share/applications/abc.desktop)
````
[Desktop Entry]
Name=flashplayer by
Exec=/usr/bin/abc %f
Type=Application
Categories=GNOME;GTK;Core;Documentation;Utility;
Icon=abc
Keywords=flash;player;swf;
MimeType=application/x-shockwave-flash;
Name[tr_TR.UTF-8]=FlashPlayer Oynatıcı
Name[tr_TR]=abc.desktop
````
#### Dosya türümüzün hangi uygulama ile ilişkilendirilmiş onu öğrenelim
$ xdg-mime query default application/x-shockwave-flash
<br/>xyz.desktop

#### Dosya türmüzü abc.desktop dosyamızla ilişkilendirelim
xdg-mime default abc.desktop 
<br/>application/x-shockwave-flash

#### Varsayılan programımızı sistemde güncelleyelim
update-desktop-database /usr/share/applications/

#### Ayarların nerede kayıtlı olduğunu ve hangi dosyayla ilişkili olduğunu öğrenmek
$ XDG_UTILS_DEBUG_LEVEL=2 xdg-mime query default application/x-shockwave-flash
<br/>Checking /home/by/.config/mimeapps.list
<br/>abc.desktop


