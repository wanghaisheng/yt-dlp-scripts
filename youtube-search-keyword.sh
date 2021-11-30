yt-dlp  --config-location config.txt https://www.youtube.com/results?search_query=养生
for d in ./Youtube/* ; do
    dirname=${d##*/}
    dirname=`expr "$dirname" : '\(\[.*\]\)'`     
    dirname=`expr "$dirname" : '\(\[.*\]\)'`     
    dirname=${dirname#[}
    dirname=${dirname%%]*}
    yt-dlp  --config-location config.txt https://www.youtube.com/channel/$dirname/videos
done
