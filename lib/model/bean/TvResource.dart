import 'dart:core';

import 'package:flutter/material.dart';
import 'package:tvSink/util/log.dart';

class CommonData with ChangeNotifier {
  final _chineseTvLis = {
    "BBC": {
      "tvg-id": "BBCNews.uk",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/Tapiosinn/tv-logos/master/countries/united-kingdom/bbc-news-uk.png",
      "group-title": "News",
      "tvg-url": {
        "https://cdnuk001.broadcastcdn.net/KUK-BBCNEWSHD/index.m3u8",
        "http://103.199.161.254/Content/bbcworld/Live/Channel(BBCworld)/index.m3u8"
      }
    },
    "BesTV超级": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.167/ott.js.chinamobile.com/PLTV/3/224/3221226942/index.m3u8"
      }
    },
    "Bloomberg": {
      "tvg-id": "BloombergTVAsia.us",
      "tvg-country": "APAC;OCE;SAS",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Bloomberg_Television_logo.svg/300px-Bloomberg_Television_logo.svg.png",
      "group-title": "Business",
      "tvg-url": {
        "https://liveprodapnortheast.global.ssl.fastly.net/ap1/Channel-APTVqvs-AWS-tokyo-1/Source-APTVqvs-1000-1_live.m3u8",
        "https://www.bloomberg.com/media-manifest/streams/asia-event.m3u8"
      }
    },
    "Blue": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://210.210.155.35/dr9445/h/h16/02.m3u8"}
    },
    "CCTV+": {
      "tvg-id": "CCTVPlus1.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://cd-live-stream.news.cctvplus.com/live/smil:CHANNEL1.smil/playlist.m3u8",
        "https://cd-live-stream.news.cctvplus.com/live/smil:CHANNEL2.smil/playlist.m3u8"
      }
    },
    "CCTV-1综合": {
      "tvg-id": "CCTV1.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/6/65/CCTV-1_Logo.png",
      "group-title": "General",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225618/index.m3u8"
      }
    },
    "CCTV-2财经": {
      "tvg-id": "CCTV2.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/c/ce/CCTV-2_Logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225619/index.m3u8"
      }
    },
    "CCTV-3综艺": {
      "tvg-id": "CCTV3.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/3/34/CCTV-3_Logo.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225634/index.m3u8"
      }
    },
    "CCTV-4中文国际": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/cctv4/1300000/mnf.m3u8",
        "http://111.63.117.13:6060/030000001000/CCTV-4/CCTV-4.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221225781/index.m3u8",
        "http://183.207.248.71/gitv/live1/CCTV-4/CCTV-4",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225621/index.m3u8",
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225621/index.m3u8",
        "http://117.169.120.140:8080/live/cctv-4/.m3u8",
        "http://183.207.249.6/PLTV/3/224/3221225534/index.m3u8",
        "http://183.207.249.11/PLTV/3/224/3221225534/index.m3u8",
        "http://183.207.248.71/cntv/live1/cctv-4/cctv-4",
        "http://223.110.245.163/ott.js.chinamobile.com/PLTV/3/224/3221227378/index.m3u8",
        "http://223.110.245.165/ott.js.chinamobile.com/PLTV/3/224/3221225534/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221225534/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=26&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=26&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "CCTV-5+体育赛事": {
      "tvg-id": "CCTV5Plus.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/cc/cctv-5-plus-cn.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225649/index.m3u8"
      }
    },
    "CCTV-5体育": {
      "tvg-id": "CCTV5.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/3/33/CCTV-5_Logo.png",
      "group-title": "Sports",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225633/index.m3u8"
      }
    },
    "CCTV-6电影": {
      "tvg-id": "CCTV6.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/0/0c/CCTV-6_Logo.png",
      "group-title": "Movies",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225632/index.m3u8"
      }
    },
    "CCTV-7国防军事": {
      "tvg-id": "CCTV7.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/f/f0/CCTV-7_Logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225624/index.m3u8"
      }
    },
    "CCTV-8电视剧": {
      "tvg-id": "CCTV8.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/4/49/CCTV-8_Logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225631/index.m3u8"
      }
    },
    "CCTV-9纪录": {
      "tvg-id": "CCTV9.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/1/11/CCTV-9_Logo.png",
      "group-title": "Documentary",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225646/index.m3u8"
      }
    },
    "CCTV-10科教": {
      "tvg-id": "CCTV10.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/f/fd/CCTV-10_Logo.png",
      "group-title": "Education",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225636/index.m3u8"
      }
    },
    "CCTV-11戏曲": {
      "tvg-id": "CCTV11.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/9/9c/CCTV-11_Logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225628/index.m3u8"
      }
    },
    "CCTV-12社会与法制": {
      "tvg-id": "CCTV12.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/7/71/CCTV-12_Logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225637/index.m3u8"
      }
    },
    "CCTV-13新闻": {
      "tvg-id": "CCTV13.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/0/0b/CCTV-13_Logo.png",
      "group-title": "News",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225638/index.m3u8"
      }
    },
    "CCTV-15音乐": {
      "tvg-id": "CCTV15.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/cc/cctv-15-cn.png",
      "group-title": "Music",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=54&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "CCTV-17农业农村": {
      "tvg-id": "CCTV17.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/cc/cctv-17-cn.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225908/index.m3u8"
      }
    },
    "CCTV-女性时尚": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221227026/index.m3u8"
      }
    },
    "CCTV-老故事": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.145/ott.js.chinamobile.com/PLTV/3/224/3221227043/index.m3u8"
      }
    },
    "CETV1": {
      "tvg-id": "CETV1.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/cc/cetv-1-cn.png",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/gitv/live1/G_CETV-1/G_CETV-1"}
    },
    "CETV2": {
      "tvg-id": "CETV2.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/cc/cetv-2-cn.png",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/gitv/live1/G_CETV-2/G_CETV-2"}
    },
    "CGTN": {
      "tvg-id": "CGTN.cn",
      "tvg-country": "CN",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/CGTN.svg/800px-CGTN.svg.png",
      "group-title": "News",
      "tvg-url": {
        "http://live.cgtn.com/500/prog_index.m3u8",
        "http://livear.cgtn.com/1000a/prog_index.m3u8",
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225645/index.m3u8",
        "https://dai.google.com/linear/hls/event/r4sa-f6GSN2XIvzKv5jVng/master.m3u8",
        "https://livees.cgtn.com/1000e/prog_index.m3u8",
        "http://livees.cgtn.com/500e/prog_index.m3u8",
        "https://news.cgtn.com/resource/live/french/cgtn-f.m3u8",
        "http://liveru.cgtn.com/1000r/prog_index.m3u8"
      }
    },
    "CHC动作电影": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=119&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "CNC中文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://source07.v.news.cn/live/CNC_CN/playlist.m3u8"}
    },
    "CNC英语": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://source07.v.news.cn/live/CNC_EN/playlist.m3u8"}
    },
    "DW": {
      "tvg-id": "DWEnglish.de",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/A1xzjOI.png",
      "group-title": "News",
      "tvg-url": {
        "https://dwamdstream102.akamaized.net/hls/live/2015525/dwstream102/index.m3u8"
      }
    },
    "France": {
      "tvg-id": "France24English.fr",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/8/8a/France24.png",
      "group-title": "News",
      "tvg-url": {
        "http://f24hls-i.akamaihd.net/hls/live/221147/F24_EN_HI_HLS/master.m3u8"
      }
    },
    "NewTV动画王国": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.15/PLTV/3/224/3221225555/index.m3u8",
        "http://223.110.245.161/ott.js.chinamobile.com/PLTV/3/224/3221225555/index.m3u8"
      }
    },
    "NewTV完美遊戲": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.249.16/PLTV/3/224/3221225539/index.m3u8"}
    },
    "NewTV搏击": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.151/ott.js.chinamobile.com/PLTV/3/224/3221226803/index.m3u8"
      }
    },
    "NewTV精品電影": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.14/PLTV/3/224/3221225567/index.m3u8",
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221225567/index.m3u8"
      }
    },
    "NewTV超级电影": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225623/index.m3u8"
      }
    },
    "Pluto": {
      "tvg-id": "EuronewsEnglish.fr",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/8t9mdg9.png",
      "group-title": "News",
      "tvg-url": {
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/60d3583ef310610007fb02b1/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&serverSideAds=false&studio_id=viacom&tags=ROKU_CONTENT_TAGS"
      }
    },
    "Red": {
      "tvg-id": "RedBullTV.at",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/7NeBmWX.jpg",
      "group-title": "Sports",
      "tvg-url": {
        "https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master.m3u8"
      }
    },
    "RT": {
      "tvg-id": "RTDocumentary.ru",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/XJGki3v.png",
      "group-title": "Documentary",
      "tvg-url": {
        "https://rt-rtd.rttv.com/live/rtdoc/playlist.m3u8",
        "https://live-hr6yv36f.rmbl.ws/slot-30/ngrp:srak-wx8r_all/playlist.m3u8"
      }
    },
    "SDETV": {
      "tvg-id": "SDETV.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.149/ott.js.chinamobile.com/PLTV/3/224/3221227019/index.m3u8"
      }
    },
    "SiTV七彩戏剧": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://112.25.48.68/live/program/live/qcxj/1300000/mnf.m3u8"}
    },
    "SiTV东方财经": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://112.25.48.68/live/program/live/dfcj/1300000/mnf.m3u8"}
    },
    "SiTV全纪实台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/qjshd/4000000/mnf.m3u8"
      }
    },
    "SiTV动漫秀场": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/dmxchd/4000000/mnf.m3u8"
      }
    },
    "SiTV劲爆体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/jbtyhd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=74&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "SiTV幸福彩": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=73&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "SiTV新视觉": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=75&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "SiTV新视觉台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/xsjhd/4000000/mnf.m3u8"
      }
    },
    "SiTV极速汽车": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/jsqchd/4000000/mnf.m3u8"
      }
    },
    "SiTV欢笑剧场": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hxjchd/4000000/mnf.m3u8"
      }
    },
    "SiTV法治天地": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://112.25.48.68/live/program/live/fztd/1300000/mnf.m3u8"}
    },
    "SiTV游戏风云": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/yxfyhd/4000000/mnf.m3u8"
      }
    },
    "SiTV生活时尚": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/shsshd/4000000/mnf.m3u8"
      }
    },
    "SiTV都市剧场": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/dsjchd/4000000/mnf.m3u8"
      }
    },
    "SiTV魅力足球": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/mlyyhd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=76&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "TRT": {
      "tvg-id": "TRTWorld.tr",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.ibb.co/phw4pjP/mjTjJ1N.png",
      "group-title": "News",
      "tvg-url": {"https://tv-trtworld.live.trt.com.tr/master.m3u8"}
    },
    // "TV": {
    //   "tvg-id": "TVBRICSChinese.ru",
    //   "tvg-country": "CN",
    //   "tvg-language": "Chinese",
    //   "tvg-logo": "https://i.imgur.com/vLpm8tN.png",
    //   "group-title": "General",
    //   "tvg-url": {"https://brics.bonus-tv.ru/cdn/brics/chinese/playlist.m3u8"}
    // },
    "TVB明珠台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/hls/Fsv_chan_hls_se_idx=12&FvSeid=1&Fsv_ctype=LIVES&Fsv_otype=1&Provider_id=0&Pcontent_id=8114.m3u8"
      }
    },
    "TVB翡翠台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/index.m3u8?Fsv_chan_hls_se_idx=188&Fsv_ctype=LIVES&Fsv_otype=1&FvSeid=1&Pcontent_id=.m3u8&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=188&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=&_res_tag_=video"
      }
    },
    "TVS2": {
      "tvg-id": "TVS2.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221227005/index.m3u8"
      }
    },
    "UN": {
      "tvg-id": "UNWebTV.us",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lPyJhBN.png",
      "group-title": "News",
      "tvg-url": {
        "https://cdnapi.kaltura.com/p/2503451/sp/250345100/playManifest/entryId/1_gb6tjmle/protocol/https/format/applehttp/a.m3u8"
      }
    },
    "World": {
      "tvg-id": "WorldFashionChannelInternational.ru",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/JyslMHb.jpg",
      "group-title": "Lifestyle",
      "tvg-url": {"https://wfcint.mediacdn.ru/cdn/wfcintweb/playlist.m3u8"}
    },
    "万州三峡移民": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8013/tslslive/PU2vzMI/hls/live_sd.m3u8"
      }
    },
    "万州影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8013/tslslive/vWlnEzU/hls/live_sd.m3u8"
      }
    },
    "万州科教": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8013/tslslive/URetCnP/hls/live_sd.m3u8"
      }
    },
    "万州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8013/tslslive/noEX9SG/hls/live_sd.m3u8"
      }
    },
    "三明公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.smntv.cn/smtv2/playlist.m3u8"}
    },
    "三明新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.smntv.cn/smtv1/playlist.m3u8"}
    },
    "上海": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/wypdhd/4000000/mnf.m3u8"
      }
    },
    "上海东方影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/dsjpdhd/4000000/mnf.m3u8"
      }
    },
    "上海五星体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://112.25.48.68/live/program/live/ssty/4000000/mnf.m3u8"}
    },
    "上海卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221227208/index.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221225856/index.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221227396/index.m3u8",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-dongfangstv/HD-2500k-1080P-dongfangstv"
      }
    },
    "上海哈哈炫动": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hhxdhd/4000000/mnf.m3u8"
      }
    },
    "上海教育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://112.25.48.68/live/program/live/setv/1300000/mnf.m3u8"}
    },
    "上海新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/xwzhhd/4000000/mnf.m3u8"
      }
    },
    "上海第一财经": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/dycjhd/4000000/mnf.m3u8"
      }
    },
    "上海纪实": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225654/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225655/index.m3u8"
      }
    },
    "上海这一刻魔都眼": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://bililive.kksmg.com/hls/sdi80/playlist.m3u8"}
    },
    "上海都市": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/ylpdhd/4000000/mnf.m3u8"
      }
    },
    "上海金山电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.mudu.tv/watch/4zbn2f.m3u8"}
    },
    "上虞1新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXshangyu1/720p.m3u8"
      }
    },
    "上虞3新商都": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXshangyu3/720p.m3u8"
      }
    },
    "上虞經濟文化": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXshangyu2/720p.m3u8"
      }
    },
    "东南卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/DNWSHD_H265.m3u8",
        "http://183.207.249.15/PLTV/4/224/3221225816/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225657/index.m3u8",
        "http://117.169.120.140:8080/live/dongnanstv/.m3u8",
        "http://112.25.48.68/live/program/live/dnwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=23&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://223.110.254.205:6610/cntv/live1/n-dongnanstv/n-dongnanstv/1.m3u8",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=23&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "东乡电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000131/index.m3u8"}
    },
    "东方卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225658/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225659/index.m3u8",
        "http://183.207.249.7/PLTV/4/224/3221227396/index.m3u8",
        "http://112.25.48.68/live/program/live/hddfws/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=22&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=22&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://223.110.254.212:6610/cntv/live1/HD-2500k-1080P-dongfangstv/HD-2500k-1080P-dongfangstv/1.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227597/index.m3u8",
        "http://223.110.243.138/ott.js.chinamobile.com/PLTV/3/224/3221227208/index.m3u8",
        "http://223.110.243.138/PLTV/3/224/3221227208/index.m3u8"
      }
    },
    "东方影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://140.207.241.3:8080/live/program/live/dsjpdhd/4000000/mnf.m3u8"
      }
    },
    "东至影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.247.33.124:1935/live/yingshi/playlist.m3u8"}
    },
    "东至文化资讯": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.247.33.124:1935/live/wenhua/playlist.m3u8"}
    },
    "东至新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.247.33.124:1935/live/zonghe/playlist.m3u8"}
    },
    "东莞综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/dgzh/sd/live.m3u8"}
    },
    "中国交通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.161/ott.js.chinamobile.com/PLTV/3/224/3221227027/index.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227027/index.m3u8",
        "https://tv.lanjingfm.com/cctbn/hainan.m3u8"
      }
    },
    "中国天气": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://112.25.48.68/live/program/live/zgqx/1300000/mnf.m3u8"}
    },
    "中国教育1": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://39.134.39.39/PLTV/88888888/224/3221226282/index.m3u8"}
    },
    "中国气象": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.weathertv.cn/tslslive/qCFIfHB/hls/live_sd.m3u8"}
    },
    "中天新聞": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://seb.sason.top/sc/ztxw_fhd.m3u8"}
    },
    "中山公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/zszh/sd/live.m3u8"}
    },
    "中牟综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://218.206.193.210:9850/playServer/acquirePlayService?deviceGroup=TV(STB)&drmType=none&kdsplayer=media&nsukey=&op=sovp&playType=catchup&protocol=hls0&redirect=m3u8&resourceId=1000000000000001&type=live",
        "http://live.dxhmt.cn:9081/tv/10122-1.m3u8"
      }
    },
    "中視新聞": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://seb.sason.top/sc/zsxw_fhd.m3u8"}
    },
    "乐清新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://33809.hlsplay.aodianyun.com/guangdianyun_33809/tv_channel_170.m3u8"
      }
    },
    "云南": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://tvdrs.wsrtv.com.cn:8100/channellive/ch2.flv",
        "http://tvdrs.wsrtv.com.cn:8100/channellive/ch1.flv",
        "http://file.hhtv.cc/cms/videos/nmip-media/channellive/channel1/playlist.m3u8"
      }
    },
    "云南卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/ynws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225664/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=110&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=110&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/gitv/live1/G_YUNNAN/G_YUNNAN",
        "http://223.110.245.157/ott.js.chinamobile.com/PLTV/3/224/3221225591/index.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221225838/index.m3u8",
        "http://223.110.245.173/PLTV/4/224/3221225838/index.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221225838/index.m3u8",
        "http://183.207.248.71/cntv/live1/yunnanstv/yunnanstv",
        "https://hwapi.yunshicloud.com/8xughf/e0bx15.m3u8"
      }
    },
    "云南都市": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.130.202.81:6610/gitv_live/G_YNTV-2-HD/G_YNTV-2-HD.m3u8"
      }
    },
    "五星体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.147/ott.js.chinamobile.com/PLTV/3/224/3221226799/index.m3u8"
      }
    },
    "亚太台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://174.127.67.246/live330/playlist.m3u8"}
    },
    "交城電視台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://sxjc.chinashadt.com:2036/live/stream:jctv.stream/playlist.m3u8"
      }
    },
    "京视剧场": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.143/ott.js.chinamobile.com/PLTV/3/224/3221227040/index.m3u8"
      }
    },
    "亳州新聞頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://220.180.110.101:8083/videos/live/33/59/NC7XQdEveyncq/NC7XQdEveyncq.m3u8"
      }
    },
    "仙桃新聞綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://221.233.242.239:280/live/71/playlist.m3u8"}
    },
    "优漫卡通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.15/PLTV/4/224/3221225933/index.m3u8",
        "http://223.110.243.171/PLTV/3/224/3221226982/index.m3u8"
      }
    },
    "优视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://1-fss24-s0.streamhoster.com/lv_uchannel/_definst_/broadcast1/chunklist.m3u8",
        "http://1-fss24-s0.streamhoster.com/lv_uchannel/broadcast1/playlist.m3u8"
      }
    },
    "余姚姚江文化": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://l.cztvcloud.com/channels/lantian/SXyuyao3/720p.m3u8"}
    },
    "余姚新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://l.cztvcloud.com/channels/lantian/SXyuyao1/720p.m3u8"}
    },
    "佛山公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=182&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=182&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "侨乡": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.jinjiang.tv/1/sd/live.m3u8"}
    },
    "兵团卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/btws/1300000/mnf.m3u8",
        "http://116.199.5.51:8114/hls/Fsv_chan_hls_se_idx=050&FvSeid=1&Fsv_ctype=LIVES&Fsv_otype=1&Provider_id=0&Pcontent_id=8114.m3u8"
      }
    },
    "内江公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://njzb.scnj.tv:90/live/gggy_gggy800.m3u8"}
    },
    "内江科教": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://njzb.scnj.tv:90/live/kjpd_kjpd800.m3u8"}
    },
    "内江综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://njzb.scnj.tv:90/live/xwzh_xwzh800.m3u8"}
    },
    "内蒙古": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.161/ott.js.chinamobile.com/PLTV/3/224/3221225836/index.m3u8"
      }
    },
    "内蒙古卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=17&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225667/index.m3u8",
        "http://117.169.120.140:8080/live/neimenggustv/.m3u8",
        "http://183.207.248.71/gitv/live1/G_NEIMENGGU/G_NEIMENGGU",
        "http://223.110.245.173/PLTV/4/224/3221225836/index.m3u8"
      }
    },
    "农安新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/naxw/sd/live.m3u8"}
    },
    "凤凰中文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/index.m3u8?Fsv_chan_hls_se_idx=190&Fsv_ctype=LIVES&Fsv_otype=1&FvSeid=1&Pcontent_id=.m3u8&Provider_id=",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=190&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=190&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://125.210.152.18:9090/live/FHZW_1200.m3u8",
        "http://223.110.245.139/ott.js.chinamobile.com/PLTV/3/224/3221226922/index.m3u8",
        "http://223.110.245.139/PLTV/3/224/3221226922/index.m3u8",
        "http://223.110.245.167/ott.js.chinamobile.com/PLTV/3/224/3221226922/index.m3u8"
      }
    },
    "凤凰资讯": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/FHZX_1200.m3u8",
        "http://183.207.249.35/PLTV/3/224/3221226923/index.m3u8",
        "http://223.110.245.167/ott.js.chinamobile.com/PLTV/3/224/3221226923/index.m3u8"
      }
    },
    "凤凰香港": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.35/PLTV/3/224/3221226975/index.m3u8",
        "http://223.110.245.136/PLTV/3/224/3221226975/index.m3u8"
      }
    },
    "利川公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://uni6rtmp.tulix.tv:1935/vbstv/vbsabr.smil/chunklist_w1847269952_b204800.m3u8",
        "http://lichuan.live.tempsource.cjyun.org/videotmp/s10093-lcgg.m3u8"
      }
    },
    "利川新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://uni6rtmp.tulix.tv:1935/vbstv/vbsabr.smil/chunklist_w439903609_b1228800.m3u8"
      }
    },
    "前郭综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/qg/sd/live.m3u8"}
    },
    "动作电影": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.19.68/dbiptv.sn.chinamobile.com/PLTV/88888888/224/3221226465/index.m3u8"
      }
    },
    "动画王国": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/cntv/live1/donghuawg/donghuawg"}
    },
    "北京体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/index.m3u8?Fsv_chan_hls_se_idx=158&Fsv_ctype=LIVES&Fsv_otype=1&FvSeid=1&Pcontent_id=.m3u8&Provider_id="
      }
    },
    "北京冬奥纪实": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=158&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "北京卡酷少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=108&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "北京卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/G_BEIJING/G_BEIJING",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225673/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225674/index.m3u8",
        "http://183.207.249.7/PLTV/3/224/3221225574/index.m3u8",
        "http://183.207.249.8/PLTV/3/224/3221225574/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=30&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=30&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/beijingstv/beijingstv",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-beijingstv/HD-2500k-1080P-beijingstv",
        "http://223.110.243.173/PLTV/3/224/3221227246/index.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221227390/index.m3u8",
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221225574/index.m3u8",
        "http://223.110.245.163/ott.js.chinamobile.com/PLTV/3/224/3221227436/index.m3u8",
        "http://223.110.245.173/PLTV/4/224/3221227390/index.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221225574/index.m3u8",
        "http://112.25.48.68/live/program/live/bjwshd/4000000/mnf.m3u8"
      }
    },
    "北京紀實": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225675/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225676/index.m3u8"
      }
    },
    "北京衛視": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://14.152.88.77/liveplay-kk.rtxapp.com/live/program/live/bjwshd/4000000/mnf.m3u8"
      }
    },
    "北碚综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://222.178.181.121:12034/beibei01.m3u8"}
    },
    "半岛新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live-hls-web-aje.getaj.net/AJE/01.m3u8"}
    },
    "华亭电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000148/index.m3u8"}
    },
    "华数": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls-ott-zhibo.wasu.tv/live/442/index.m3u8"}
    },
    "南京信息": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.nbs.cn/channels/njtv/xxpd/m3u8:500k/live.m3u8"}
    },
    "南京十八": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/G_NJSB/G_NJSB",
        "http://live.nbs.cn/channels/njtv/sbpd/m3u8:500k/live.m3u8"
      }
    },
    "南京娱乐": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.nbs.cn/channels/njtv/ylpd/m3u8:500k/live.m3u8"}
    },
    "南京少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.nbs.cn/channels/njtv/sepd/m3u8:500k/live.m3u8"}
    },
    "南京教科": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/G_NJJK/G_NJJK",
        "http://223.110.245.155/ott.js.chinamobile.com/PLTV/3/224/3221227194/index.m3u8",
        "http://live.nbs.cn/channels/njtv/jkpd/m3u8:500k/live.m3u8"
      }
    },
    "南京新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.nbs.cn/channels/njtv/xwzh/m3u8:500k/live.m3u8"}
    },
    "南京生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.nbs.cn/channels/njtv/shpd/m3u8:500k/live.m3u8"}
    },
    "南宁公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.nntv.cn/nnlive/NNTV_PUB_A.m3u8"}
    },
    "南宁影视娱乐": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.nntv.cn/nnlive/NNTV_VOD_A.m3u8"}
    },
    "南宁新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.nntv.cn/nnlive/NNTV_NEWS_A.m3u8"}
    },
    "南宁都市生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.nntv.cn/nnlive/NNTV_METRO_A.m3u8"}
    },
    "南川新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://221.5.213.4:30000/1111.m3u8"}
    },
    "南川旅游经济": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://221.5.213.4:30000/2222.m3u8"}
    },
    "南方卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=9&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "南陽公共頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://30539.hlsplay.aodianyun.com/lms_30539/tv_channel_295.m3u8"
      }
    },
    "南陽科教頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://30539.hlsplay.aodianyun.com/lms_30539/tv_channel_296.m3u8"
      }
    },
    "厦门卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/xmws/1300000/mnf.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221226996/index.m3u8"
      }
    },
    "双峰电视一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hnsf.chinashadt.com:2036/zhuanma/tv1.stream_360p/playlist.m3u8"
      }
    },
    "发现之旅": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://125.210.152.18:9090/live/FXZL_750.m3u8"}
    },
    "台視新聞": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://seb.sason.top/sc/tsxw_fhd.m3u8"}
    },
    "吉州新聞綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://218.204.153.158/10.m3u8"}
    },
    "吉林7": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream1.jlntv.cn/fzpd/sd/live.m3u8"}
    },
    "吉林卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream4.jlntv.cn/test2/sd/live.m3u8",
        "http://125.210.152.18:9090/live/JLWSHD_H265.m3u8",
        "http://112.25.48.68/live/program/live/jlws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225680/index.m3u8",
        "http://117.169.120.140:8080/live/jilinstv/.m3u8",
        "http://183.207.249.7/PLTV/4/224/3221225883/index.m3u8",
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221225883/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=25&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=25&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "吉林市新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/jilin1/sd/live.m3u8"}
    },
    "吉林乡村": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream1.jlntv.cn/xcpd/sd/live.m3u8"}
    },
    "周口图文信息": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tv.zkxww.com:1935/live4/mp4:ch4-500k/playlist.m3u8"}
    },
    "周口新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tv.zkxww.com:1935/live1/mp4:ch1-500k/playlist.m3u8"}
    },
    "周口科教文化2": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tv.zkxww.com:1935/live3/mp4:ch3-500k/playlist.m3u8"}
    },
    "周口经济生活2": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tv.zkxww.com:1935/live2/mp4:ch2-500k/playlist.m3u8"}
    },
    "和政电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000149/index.m3u8"}
    },
    "哈哈炫动卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://210.210.155.35/qwr9ew/s/s50/index2.m3u8",
        "http://210.210.155.35/qwr9ew/s/s50/index.m3u8"
      }
    },
    "唯心電視": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://mobile.ccdntech.com/transcoder/_definst_/vod164_Live/live/playlist.m3u8"
      }
    },
    "嘉佳卡通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.139/PLTV/4/224/3221227009/index.m3u8",
        "http://112.25.48.68/live/program/live/jjkt/1300000/mnf.m3u8"
      }
    },
    "四川": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://30814.hlsplay.aodianyun.com/lms_30814/tv_channel_246.flv",
        "http://m3u8.channellive.dzxw.net/cms/videos/nmip-media/channellive/channel36/playlist.m3u8",
        "http://m3u8.channellive.dzxw.net/cms/videos/nmip-media/channellive/channel35/playlist.m3u8",
        "http://flv.drs.tv.yatv.tv:8080/channellive/gonggong.flv",
        "http://flv.drs.tv.yatv.tv:8080/channellive/xinwen.flv"
      }
    },
    "四川卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/SCWSHD_H265.m3u8",
        "http://112.25.48.68/live/program/live/scws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225733/index.m3u8",
        "http://183.207.248.71/gitv/live1/SCWS/SCWS",
        "http://223.110.245.145/ott.js.chinamobile.com/PLTV/3/224/3221225814/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=3&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "四平新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/sptv/sd/live.m3u8"}
    },
    "国外MTV": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://vcndstv.teleosmedia.com/stream/dstv/sunburn/seglist_720p.m3u8"
      }
    },
    "增城綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://202.168.164.38:8083/videos/live/19/27/QEQXMtU5AUpwo/QEQXMtU5AUpwo.m3u8"
      }
    },
    "大冶一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://dayeyun.live.tempsource.cjyun.org/videotmp/s10102-TC1T.m3u8"
      }
    },
    "大冶二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://dayeyun.live.tempsource.cjyun.org/videotmp/s10102-TC2T.m3u8"
      }
    },
    "大悟综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://yunshangdawu.live.tempsource.cjyun.org/videotmp/s10129-dwzhpd.m3u8"
      }
    },
    "大爱海外": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://pulltv3.wanfudaluye.com/live/tv3.m3u8"}
    },
    "天津卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.12/PLTV/4/224/3221225808/index.m3u8",
        "http://223.110.245.151/ott.js.chinamobile.com/PLTV/3/224/3221225808/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225698/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225739/index.m3u8",
        "http://117.169.120.140:8080/live/hdtianjinstv/.m3u8",
        "http://112.25.48.68/live/program/live/tjwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=37&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=37&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-tianjinstv/HD-2500k-1080P-tianjinstv",
        "http://223.110.243.170/PLTV/3/224/3221227212/index.m3u8",
        "http://223.110.245.155/ott.js.chinamobile.com/PLTV/3/224/3221227382/index.m3u8",
        "http://223.110.245.165/ott.js.chinamobile.com/PLTV/3/224/3221227407/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221227212/index.m3u8"
      }
    },
    "奇妙電視": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://media.fantv.hk/m3u8/archive/channel2_stream1.m3u8"}
    },
    "女性时尚": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.110.245.169/PLTV/4/224/3221227026/index.m3u8"}
    },
    "孟州电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.dxhmt.cn:9081/tv/10883-1.m3u8"}
    },
    "宁夏卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/nxws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225726/index.m3u8",
        "http://117.169.120.140:8080/live/ningxiastv/.m3u8",
        "http://183.207.248.11/PLTV/4/224/3221225842/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=120&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=120&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://223.110.245.151/ott.js.chinamobile.com/PLTV/3/224/3221225842/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_NINGXIA/G_NINGXIA"
      }
    },
    "安徽": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://live.0561rtv.cn/ggpd/hd/live.m3u8",
        "http://live.0561rtv.cn/xwzh/hd/live.m3u8",
        "http://117.70.93.210:1935/live/xinwen/playlist.m3u8",
        "http://dstpush1.retalltech.com/app/stream2.m3u8",
        "http://dstpush1.retalltech.com/app/stream1.m3u8"
      }
    },
    "安徽卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.5/PLTV/4/224/3221225800/index.m3u8",
        "http://183.207.248.71/gitv/live1/AHWS/AHWS",
        "http://223.110.245.143/ott.js.chinamobile.com/PLTV/3/224/3221225800/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225691/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225737/index.m3u8",
        "http://183.207.249.15/PLTV/3/224/3221225634/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=2&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://223.110.245.147/ott.js.chinamobile.com/PLTV/3/224/3221225634/index.m3u8",
        "http://223.110.254.203:6610/cntv/live1/HD-8000k-1080P-anhuistv/HD-8000k-1080P-anhuistv/1.m3u8",
        "http://zbbf2.ahtv.cn/live/749.m3u8",
        "http://183.207.248.71/cntv/live1/anhuistv/anhuistv",
        "http://112.25.48.68/live/program/live/ahwshd/4000000/mnf.m3u8"
      }
    },
    "安徽小说评书广播": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream1.ahrtv.cn/xspsgb/sd/live.m3u8"}
    },
    "安徽戏曲广播": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.ahrtv.cn/xnxq/sd/live.m3u8"}
    },
    "安徽新闻综合广播": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.ahrtv.cn/xnxw/sd/live.m3u8"}
    },
    "安徽旅游广播": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.ahrtv.cn/lygb/sd/live.m3u8"}
    },
    "完美游戏": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/cntv/live1/wmyx/wmyx"}
    },
    "宜章新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hnyz.chinashadt.com:2036/live/stream:tv1.stream/playlist.m3u8"
      }
    },
    "宜章社会法制": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hnyz.chinashadt.com:2036/live/stream:tv2.stream/playlist.m3u8"
      }
    },
    "家庭影院": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.19.153/dbiptv.sn.chinamobile.com/PLTV/88888888/224/3221226462/index.m3u8"
      }
    },
    "家庭理财": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.110.245.139/PLTV/4/224/3221227011/index.m3u8"}
    },
    "家有购物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/cntv/live1/SD-1500k-576P-jiayougw/SD-1500k-576P-jiayougw"
      }
    },
    "宿州公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.ahsz.tv/video/s10001-ggpd/index.m3u8"}
    },
    "宿州新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.ahsz.tv/video/s10001-szzh/index.m3u8"}
    },
    "宿州科教": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.ahsz.tv/video/s10001-kxjy/index.m3u8"}
    },
    "宿迁公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221226939/index.m3u8"
      }
    },
    "山东体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/typd.m3u8"}
    },
    "山东农科": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/nkpd.m3u8"}
    },
    "山东卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/SDWS/SDWS",
        "http://223.110.245.149/ott.js.chinamobile.com/PLTV/3/224/3221225804/index.m3u8",
        "http://125.210.152.18:9090/live/SDWSHD_H265.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225697/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225738/index.m3u8",
        "http://117.169.120.140:8080/live/hdshandongstv/.m3u8",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=39&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-shandongstv/HD-2500k-1080P-shandongstv",
        "http://223.110.243.171/PLTV/3/224/3221227258/index.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221227448/index.m3u8",
        "http://223.110.254.207:6610/cntv/live1/HD-2500k-1080P-shandongstv/HD-2500k-1080P-shandongstv/1.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227258/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=39&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "山东少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/sepd.m3u8"}
    },
    "山东居家购物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/gwpd.m3u8"}
    },
    "山东影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/yspd.m3u8"}
    },
    "山东新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/ggpd.m3u8"}
    },
    "山东生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/shpd.m3u8"}
    },
    "山东综艺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/zypd.m3u8"}
    },
    "山东齐鲁": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livealone302.iqilu.com/iqilu/qlpd.m3u8"}
    },
    "山西": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.sxsztv.com/live4/sd/live.m3u8"}
    },
    "山西优购物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=55&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "山西卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225730/index.m3u8",
        "http://117.169.120.140:8080/live/shanxistv/.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=144&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "岳西圖文頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://58.243.4.22:1935/live/tuwen/playlist.m3u8"}
    },
    "岳西影視頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://58.243.4.22:1935/live/yingshi/playlist.m3u8"}
    },
    "岳西綜合頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://58.243.4.22:1935/live/zonghe/playlist.m3u8"}
    },
    "岳阳公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://live.hnxttv.com:9601/live/dspd/800K/tzwj_video.m3u8?BVUUID=C236454D-5355-2F5F-FA96-1887C72E55CE&auth=654837809071524@615@2E9A5FD0B225B012E3178551CF3754A8"
      }
    },
    "岷县电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000130/index.m3u8"}
    },
    "嵊州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXshengzhou1/720p.m3u8"
      }
    },
    "已下线": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=44&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "巴中综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://30814.hlsplay.aodianyun.com/lms_30814/tv_channel_246.m3u8"
      }
    },
    "平乡电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbpx.chinashadt.com:2036/live/px1.stream/playlist.m3u8"
      }
    },
    "广东": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hls.wiseqx.com/live/qxzh.m3u8",
        "http://chaoan.chaoantv.com:8278/chaoanzonghe/playlist.m3u8",
        "https://www.sgmsw.cn/videos/tv/201805/1308/9P424TC5M000AFO13CXK6GN6BOA889D2/hls/live.m3u8",
        "https://www.sgmsw.cn/videos/tv/201805/1308/SB05RIYZOU8JR418AUQOF62CAJQ08D0E/hls/live.m3u8"
      }
    },
    "广东体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=20&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=8&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=85&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东南方卫视地面": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=9&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225701/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225742/index.m3u8",
        "http://112.25.48.68/live/program/live/gdwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=43&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-guangdongstv/HD-2500k-1080P-guangdongstv",
        "http://223.110.243.136/PLTV/3/224/3221227249/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221227249/index.m3u8",
        "http://223.110.245.172/PLTV/4/224/3221227399/index.m3u8",
        "http://223.110.254.195:6610/cntv/live1/HD-2500k-1080P-guangdongstv/HD-2500k-1080P-guangdongstv/1.m3u8"
      }
    },
    "广东嘉佳卡通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=130&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=83&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=86&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=84&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东珠江": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=79&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东经济科教": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=20&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广东综艺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=79&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广州影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=46&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广州新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=00&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=11&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广州法治": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=46&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广州竞赛": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=0&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=52&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=44&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=81&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广水新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://guangshui.live.tempsource.cjyun.org/videotmp/s10146-GSXW.m3u8"
      }
    },
    "广视网": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=11&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "广西卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225731/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=138&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "康巴卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.110.245.139/PLTV/4/224/3221227008/index.m3u8"}
    },
    "延边卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.139/PLTV/4/224/3221227002/index.m3u8",
        "http://223.110.245.161/ott.js.chinamobile.com/PLTV/3/224/3221227002/index.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227002/index.m3u8",
        "http://live.ybtvyun.com/video/s10016-7e5f23de35df/index.m3u8"
      }
    },
    "延边新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/jlyb/sd/live.m3u8"}
    },
    "建安电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.dxhmt.cn:9081/tv/11003-1.m3u8"}
    },
    "开州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://kaixianlive.cbg.cn:10345/1.m3u8"}
    },
    "弈坛春秋": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.110.245.139/PLTV/4/224/3221227031/index.m3u8"}
    },
    "张家口一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://nlive.zjkgdcs.com:8091/live/xwzhpd.m3u8"}
    },
    "张家港新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://3gvod.zjgonline.com.cn:1935/live/xinwenzonghe2/playlist.m3u8"
      }
    },
    "张家港社会生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://3gvod.zjgonline.com.cn:1935/live/shehuishenghuo2/playlist.m3u8"
      }
    },
    "张家界1": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zjjrtv.com/zjjtv1/hd/live.m3u8"}
    },
    "张家界2台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zjjrtv.com/zjjtv2/hd/live.m3u8"}
    },
    "彭水文化旅游": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://pengshuilive.cbg.cn/pengshui02.m3u8"}
    },
    "彭水新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://pengshuilive.cbg.cn/pengshui01.m3u8"}
    },
    "徐州-1": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.249.15/PLTV/3/224/3221225945/index.m3u8"}
    },
    "徐州-3": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.7/PLTV/3/224/3221225949/index.m3u8",
        "http://223.110.245.151/ott.js.chinamobile.com/PLTV/3/224/3221225949/index.m3u8"
      }
    },
    "徐州-4": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.249.15/PLTV/3/224/3221225951/index.m3u8"}
    },
    "徐州公共頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream1.huaihai.tv/ggpd/playlist.m3u8",
        "http://183.207.248.11/PLTV/3/224/3221225951/index.m3u8"
      }
    },
    "徐州影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream1.huaihai.tv/wyys/playlist.m3u8"}
    },
    "徐州新聞綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream1.huaihai.tv/xwzh/playlist.m3u8",
        "http://183.207.248.11/PLTV/3/224/3221225945/index.m3u8",
        "http://223.110.245.165/ott.js.chinamobile.com/PLTV/3/224/3221225945/index.m3u8"
      }
    },
    "徐州生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream1.huaihai.tv/jjsh/playlist.m3u8"}
    },
    "徐州經濟生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.167/ott.js.chinamobile.com/PLTV/3/224/3221225947/index.m3u8"
      }
    },
    "徐州贾汪旅游": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.147/ott.js.chinamobile.com/PLTV/3/224/3221227389/index.m3u8"
      }
    },
    "忍者神龟": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://www.alibabapictures.com/movies/shenggui/poyingerchu.mp4"
      }
    },
    "忠县文旅": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://qxlmlive.cbg.cn:1935/app_2/_definst_/ls_36.stream/playlist.m3u8"
      }
    },
    "忠县综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://qxlmlive.cbg.cn:1935/app_2/_definst_/ls_35.stream/playlist.m3u8"
      }
    },
    "惠州新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/hzzh/sd/live.m3u8"}
    },
    "成都大熊猫": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://gcbsc.v.live.baishancdnx.cn/gc/xiongmao03_1/index.m3u8?contentid=2820180516001"
      }
    },
    "房山电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.funhillrm.com/2/playlist.m3u8"}
    },
    "抚州公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://111.75.179.195:30767/video/live_vide2.m3u8"}
    },
    "揭阳综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/jyzh/playlist.m3u8"}
    },
    "撫州綜合頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://111.75.179.195:30767/video/live_vide.m3u8"}
    },
    "敦煌电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000028/index.m3u8"}
    },
    "文山综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://m3u8.channel.wsrtv.com.cn/cms/videos/nmip-media/channellive/channel7/playlist.m3u8"
      }
    },
    "斗鱼电影2": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tx2play1.douyucdn.cn/live/20415rnWbjg6Ex1K.xs"}
    },
    "斗鱼电影3": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tx2play1.douyucdn.cn/live/3928r9p0BHMDG_8000p.flv"}
    },
    "斗鱼电影4": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tx2play1.douyucdn.cn/live/122402rK7MO9bXSq_8000p.flv"}
    },
    "斗鱼车评": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://tx2play1.douyucdn.cn/live/321987r8e6tCsPR_4000.xs?uuid="
      }
    },
    "新唐人-美西": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.ntdimg.com/uwlive520/playlist.m3u8"}
    },
    "新唐人亚太臺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.ntdimg.com/aplive200/playlist.m3u8"}
    },
    "新唐人加东臺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.ntdimg.com/mllive860/playlist.m3u8"}
    },
    "新唐人加西臺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.ntdimg.com/cwlive220/playlist.m3u8"}
    },
    "新唐人旧金山臺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.ntdimg.com/sflive990/playlist.m3u8"}
    },
    "新唐人美东臺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.ntdimg.com/live400/playlist.m3u8"}
    },
    "新唐人美西臺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://live.ntdimg.com/uwlive990/playlist.m3u8"}
    },
    "新昌休闲影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXxinchang2/720p.m3u8"
      }
    },
    "新昌新聞綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXxinchang1/720p.m3u8"
      }
    },
    "新泰乡村党建": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.xtgdw.cn:1935/live/xtxc/playlist.m3u8"}
    },
    "新泰影視頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://111.17.214.4:1935/live/xtys/playlist.m3u8",
        "http://live.xtgdw.cn:1935/live/xtys/playlist.m3u8"
      }
    },
    "新泰生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://111.17.214.4:1935/live/xtsh/playlist.m3u8",
        "http://live.xtgdw.cn:1935/live/xtsh/playlist.m3u8"
      }
    },
    "新泰综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://111.17.214.4:1935/live/xtzh/playlist.m3u8",
        "http://live.xtgdw.cn:1935/live/xtzh/playlist.m3u8"
      }
    },
    "新泰鄉村黨建": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://111.17.214.4:1935/live/xtxc/playlist.m3u8"}
    },
    "新疆兵团卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=50&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "新疆卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/xjws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225725/index.m3u8",
        "http://183.207.249.15/PLTV/3/224/3221225523/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=122&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/xinjiangstv/xinjiangstv",
        "http://183.207.248.71/gitv/live1/G_XINJIANG/G_XINJIANG",
        "http://223.110.243.136/PLTV/3/224/3221225523/index.m3u8"
      }
    },
    "新疆少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livehyw5.chinamcache.com/hyw/zb12.m3u8"}
    },
    "新疆汉语信息服务": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livehyw5.chinamcache.com/hyw/zb11.m3u8"}
    },
    "新疆汉语综艺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://livehyw5.chinamcache.com/hyw/zb04.m3u8"}
    },
    "新郑综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.dxhmt.cn:9081/tv/10184-1.m3u8"}
    },
    "旺苍新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://3g.dzsm.com/streamer/gycttv.m3u8"}
    },
    "明珠台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=12&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "星空卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=233&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=234&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=233&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=234&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "星空衛視": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://218.202.220.2:5000/nn_live.ts?id=STARTV",
        "http://116.199.5.51:8114/hls/Fsv_chan_hls_se_idx=234&FvSeid=1&Fsv_ctype=LIVES&Fsv_otype=1&Provider_id=0&Pcontent_id=8114.m3u8"
      }
    },
    "晋中公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://jzlive.jztvnews.com:90/live/jzgg.m3u8"}
    },
    "晋中综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://jzlive.jztvnews.com:90/live/jzzh.m3u8"}
    },
    "景县电视一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbjx.chinashadt.com:1935/live/stream:jx1.stream_360p/playlist.m3u8",
        "http://hbjx.chinashadt.com:1935/live/jx1.stream/playlist.m3u8"
      }
    },
    "智慧教育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://111.63.117.13:6060/030000001000/G_CETV-4/G_CETV-4.m3u8"
      }
    },
    "朔州1": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.sxsztv.com/live1/playlist.m3u8"}
    },
    "朔州2": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.sxsztv.com/live2/playlist.m3u8"}
    },
    "東光一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbdg.chinashadt.com:1936/live/stream:dgtv1.stream/playlist.m3u8"
      }
    },
    "東光二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbdg.chinashadt.com:1936/live/stream:dgtv2.stream/playlist.m3u8"
      }
    },
    "東光綜藝": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbdg.chinashadt.com:1936/live/stream:dgzy.stream/playlist.m3u8"
      }
    },
    "松原新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/sytv/sd/live.m3u8"}
    },
    "枣庄公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zzgd.tv/3/sd/live.m3u8"}
    },
    "枣庄教育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zzgd.tv/2/sd/live.m3u8"}
    },
    "枣庄新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zzgd.tv/1/sd/live.m3u8"}
    },
    "栖霞新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://pili-live-hls.140.i2863.com/i2863-140/live_140_236499.m3u8"
      }
    },
    "梁平综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://qxlmlive.cbg.cn:1935/app_2/ls_44.stream/playlist.m3u8"
      }
    },
    "梅州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/mzzh/playlist.m3u8"}
    },
    "榆树综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zhystv.com/yset/sd/live.m3u8"}
    },
    "榆樹綜藝頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.zhystv.com/ysyt/sd/live.m3u8"}
    },
    "武汉外语": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.appwuhan.com/6tzb/sd/live.m3u8"}
    },
    "武汉文体": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.appwuhan.com/5tzb/sd/live.m3u8"}
    },
    "武汉经济": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.appwuhan.com/4tzb/sd/live.m3u8"}
    },
    "武进新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.wjyanghu.com/live/CH1.m3u8"}
    },
    "武进生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.wjyanghu.com/live/CH2.m3u8"}
    },
    "永新电视一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://jxyx.chinashadt.com:2036/live/1002.stream/playlist.m3u8"
      }
    },
    "永新电视三套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://jxyx.chinashadt.com:2036/live/1004.stream/playlist.m3u8"
      }
    },
    "永新电视二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://jxyx.chinashadt.com:2036/live/1003.stream/playlist.m3u8"
      }
    },
    "汕头综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/stzh/playlist.m3u8"}
    },
    "汕尾公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/swzh/sd/live.m3u8"}
    },
    "江津文化旅游": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://222.179.155.21:1935/ch2.m3u8",
        "http://jiangjinlive.cbg.cn:1935/ch2.m3u8"
      }
    },
    "江津新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://222.179.155.21:1935/ch1.m3u8",
        "http://jiangjinlive.cbg.cn:1935/ch1.m3u8"
      }
    },
    "江津经济生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://222.179.155.21:1935/ch0.m3u8",
        "http://jiangjinlive.cbg.cn:1935/ch0.m3u8"
      }
    },
    "江苏": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://live.lyg1.com/ggpd/sd/live.m3u8",
        "http://live.lyg1.com/zhpd/sd/live.m3u8"
      }
    },
    "江苏优漫卡通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=146&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "江苏体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.12/PLTV/4/224/3221225935/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_JSTY/G_JSTY",
        "http://223.110.245.157/ott.js.chinamobile.com/PLTV/3/224/3221225935/index.m3u8"
      }
    },
    "江苏公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/gitv/live1/G_JSGG/G_JSGG"}
    },
    "江苏卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/JSWS-HD/JSWS-HD",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225702/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225743/index.m3u8",
        "http://117.169.120.140:8080/live/hdjiangsustv/.m3u8",
        "http://183.207.249.34/PLTV/4/224/3221227402/index.m3u8",
        "http://112.25.48.68/live/program/live/jswshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=5&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/jiangsustv/jiangsustv",
        "http://223.110.245.157/ott.js.chinamobile.com/PLTV/3/224/3221227439/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221227255/index.m3u8",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-jiangsustv/HD-2500k-1080P-jiangsustv"
      }
    },
    "江苏城市": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/G_JSCS/G_JSCS",
        "http://223.110.245.143/ott.js.chinamobile.com/PLTV/3/224/3221225929/index.m3u8"
      }
    },
    "江苏影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.243.134/PLTV/4/224/3221225937/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_JSYS/G_JSYS"
      }
    },
    "江苏教育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.151/ott.js.chinamobile.com/PLTV/3/224/3221225923/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_JSJY/G_JSJY"
      }
    },
    "江苏综艺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/gitv/live1/G_JSZY/G_JSZY"}
    },
    "江西": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.0793.tv/srtv1/sd/live.m3u8"}
    },
    "江西卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/JXWSHD_H265.m3u8",
        "http://183.207.249.15/PLTV/4/224/3221225798/index.m3u8",
        "http://183.207.248.71/gitv/live1/JXWS/JXWS",
        "http://117.169.120.140:8080/live/jiangxistv/.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225705/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225746/index.m3u8",
        "http://183.207.249.11/PLTV/3/224/3221225536/index.m3u8",
        "http://112.25.48.68/live/program/live/jxwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=40&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/jiangxistv/jiangxistv",
        "http://223.110.245.170/PLTV/3/224/3221225536/index.m3u8",
        "http://223.110.254.199:6610/cntv/live1/jiangxistv/jiangxistv/1.m3u8"
      }
    },
    "江门综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://218.17.99.211:5080/hls/ttsw6ccn.m3u8"}
    },
    "沧县电视二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hebcx.chinashadt.com:2036/live/10002.stream/playlist.m3u8"
      }
    },
    "沧县电视综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hebcx.chinashadt.com:2036/live/10001.stream/playlist.m3u8"
      }
    },
    "河北公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live7.plus.hebtv.com/hbggx/playlist.m3u8"}
    },
    "河北农民": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://live3.plus.hebtv.com/nmpdx/playlist.m3u8",
        "http://hbzx.chinashadt.com:2036/zhibo/stream:hbnm.stream_360p/playlist.m3u8",
        "http://hbzx.chinashadt.com:2036/zhibo/stream:hbnm.stream/playlist.m3u8"
      }
    },
    "河北卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/HBWSHD_H265.m3u8",
        "http://112.25.48.68/live/program/live/hbws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225732/index.m3u8",
        "http://hbpx.chinashadt.com:2036/live/px4.stream/playlist.m3u8",
        "http://183.207.248.71/gitv/live1/G_HEBEI/G_HEBEI",
        "http://223.110.245.149/ott.js.chinamobile.com/PLTV/3/224/3221225840/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=45&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "河北少儿科教": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live6.plus.hebtv.com/sekjx/playlist.m3u8"}
    },
    "河北影视剧": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live6.plus.hebtv.com/hbysx/hd/live.m3u8"}
    },
    "河北经济": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hbfc.chinashadt.com:2036/live/6.stream/playlist.m3u8"}
    },
    "河北经济生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live2.plus.hebtv.com/jjshx/playlist.m3u8"}
    },
    "河北都市": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live3.plus.hebtv.com/hbdsx/playlist.m3u8"}
    },
    "河南卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hnws/1300000/mnf.m3u8",
        "http://183.207.248.71/cntv/live1/henanstv/henanstv",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221225815/index.m3u8"
      }
    },
    "河源公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tmpstream.hyrtv.cn/hygg/sd/live.m3u8"}
    },
    "河源综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://tmpstream.hyrtv.cn/xwzh/sd/live.m3u8"}
    },
    "洛陽綜合頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live1.lytv.com.cn:1935/live/LYTV1-1/playlist.m3u8"}
    },
    "洪雅新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://117.172.215.250:8083/videos/live/35/39/GQVbrgob5CGJM/GQVbrgob5CGJM.m3u8"
      }
    },
    "济宁公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://lives.jnnews.tv/video/s10001-JTV3/index.m3u8"}
    },
    "济宁图文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://lives.jnnews.tv/video/s10001-JTV4/index.m3u8"}
    },
    "济宁教育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://lives.jnnews.tv/video/s10001-JTV2/index.m3u8"}
    },
    "浙江6套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel06/1080p.m3u8"
      }
    },
    "浙江": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel06/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel10/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel08/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel04/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel07/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel11/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel09/720p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel03/720p.m3u8",
        "http://live.shaoxing.com.cn/video/s10001-sxtv3/index.m3u8",
        "http://live.shaoxing.com.cn/video/s10001-sxtv1/index.m3u8"
      }
    },
    "浙江公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel07/1080p.m3u8"
      }
    },
    "浙江卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/G_ZHEJIANG/G_ZHEJIANG",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225703/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225744/index.m3u8",
        "http://183.207.249.34/PLTV/4/224/3221227393/index.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel01/1080p.m3u8",
        "http://112.25.48.68/live/program/live/zjwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=13&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=13&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-zhejiangstv/HD-2500k-1080P-zhejiangstv",
        "http://183.207.248.71/cntv/live1/zhejiangstv/zhejiangstv",
        "http://223.110.243.173/PLTV/3/224/3221227215/index.m3u8",
        "http://223.110.245.143/ott.js.chinamobile.com/PLTV/3/224/3221227483/index.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221227393/index.m3u8",
        "http://223.110.254.210:6610/cntv/live1/zhejiangstv/zhejiangstv/1.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227393/index.m3u8"
      }
    },
    "浙江国际": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel010/1080p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel10/1080p.m3u8"
      }
    },
    "浙江少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel008/1080p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel08/1080p.m3u8"
      }
    },
    "浙江影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel05/720p.m3u8",
        "http://yd-m-l.cztv.com/channels/lantian/channel05/1080p.m3u8"
      }
    },
    "浙江教科影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel004/1080p.m3u8"
      }
    },
    "浙江数码时代": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel012/1080p.m3u8"
      }
    },
    "浙江民生休闲": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel006/1080p.m3u8"
      }
    },
    "浙江留学": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel09/1080p.m3u8"
      }
    },
    "浙江经济生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel003/1080p.m3u8"
      }
    },
    "浙江钱江": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hw-m-l.cztv.com/channels/lantian/channel002/1080p.m3u8",
        "http://hw-m-l.cztv.com/channels/lantian/channel02/1080p.m3u8"
      }
    },
    "海南卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/lyws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225722/index.m3u8",
        "http://183.207.248.11/PLTV/4/224/3221225810/index.m3u8",
        "http://livelyws.chinamcache.com/lyws/zb01.m3u8?auth_key=1593241343-0-0-90b80e74457c94b2015f9428a1cb9b0e",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=114&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "海南州藏語頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.hnzzzzzdst.com/channel1/sd/live.m3u8"}
    },
    "海盐新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://haiyan.liveyun.hoge.cn/xwpd/sd/live.m3u8"}
    },
    "海西州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.haixitv.cn/1/sd/live.m3u8"}
    },
    "涡阳新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://220.180.110.101:8083/videos/live/36/57/hwEHU4UVQ1Iv5/hwEHU4UVQ1Iv5.m3u8"
      }
    },
    "深圳卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225700/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225741/index.m3u8",
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225741/index.m3u8",
        "http://117.169.120.140:8080/live/hdshenzhenstv/.m3u8",
        "http://183.207.249.37/PLTV/4/224/3221227307/index.m3u8",
        "http://39.134.39.39/PLTV/88888888/224/3221226199/index.m3u8",
        "http://112.25.48.68/live/program/live/szwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=42&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=42&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://223.110.243.171/PLTV/3/224/3221227217/index.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221227307/index.m3u8",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-shenzhenstv/HD-2500k-1080P-shenzhenstv"
      }
    },
    "湖北": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://jingmen.live.cjyun.org/video/s10101-jmggpd.m3u8"}
    },
    "湖北卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.16/PLTV/4/224/3221225877/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_HUBEI/G_HUBEI",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225699/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225740/index.m3u8",
        "http://117.169.120.140:8080/live/hdhubeistv/.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=18&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-hubeistv/HD-2500k-1080P-hubeistv",
        "http://223.110.243.171/PLTV/3/224/3221227211/index.m3u8",
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221227211/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221227211/index.m3u8",
        "http://223.110.254.136:6610/cntv/live1/HD-2500k-1080P-hubeistv/HD-2500k-1080P-hubeistv/1.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227377/index.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227565/index.m3u8"
      }
    },
    "湖南先锋乒羽": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=72&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "湖南卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/hls/Fsv_chan_hls_se_idx=006&FvSeid=1&Fsv_ctype=LIVES&Fsv_otype=1&Provider_id=0&Pcontent_id=8114.m3u8",
        "http://125.210.152.18:9090/live/HNWSHD_H265.m3u8",
        "http://hbpx.chinashadt.com:2036/live/px5.stream/playlist.m3u8",
        "http://183.207.248.71/gitv/live1/G_HUNAN/G_HUNAN",
        "http://223.110.245.165/ott.js.chinamobile.com/PLTV/3/224/3221225854/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225704/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225745/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=6&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=6&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-hunanstv/HD-2500k-1080P-hunanstv",
        "http://183.207.248.71/cntv/live1/hunanstv/hunanstv",
        "http://223.110.243.173/PLTV/3/224/3221227220/index.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221227404/index.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221227191/index.m3u8",
        "http://223.110.245.168/PLTV/4/224/3221227320/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221227191/index.m3u8",
        "http://223.110.254.134:6610/cntv/live1/hunanstv/hunanstv/1.m3u8"
      }
    },
    "湖南快乐垂钓": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=69&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "湖南快乐购": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=56&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "湖南茶": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=70&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "湖南都市": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hnsd.chinashadt.com:2036/live/stream:hunandushi.stream/playlist.m3u8"
      }
    },
    "湘潭公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.hnxttv.com:9601/live/dspd/800K/tzwj_video.m3u8"}
    },
    "湘潭新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.hnxttv.com:9601/live/xwzh/800K/tzwj_video.m3u8"}
    },
    "滁州公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.167.193.45:1935/live/cztvgg/playlist.m3u8"}
    },
    "滁州新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.167.193.45:1935/live/cztvzh/playlist.m3u8"}
    },
    "滁州科教": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.167.193.45:1935/live/cztvkj/playlist.m3u8"}
    },
    "滦县综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hblxx.chinashadt.com:2036/live/stream:lx1.stream/playlist.m3u8"
      }
    },
    "滦县综艺": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hblxx.chinashadt.com:2036/live/stream:lx2.stream/playlist.m3u8"
      }
    },
    "滨州公共电视剧": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.bzcm.net/1/sd/live.m3u8"}
    },
    "滨州新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.bzcm.net/2/sd/live.m3u8"}
    },
    "滨州测试": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.bzcm.net/4/sd/live.m3u8"}
    },
    "滨海新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://60.30.52.41/live/bhtv1/playlist.m3u8"}
    },
    "滨海新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://jsbh.chinashadt.com:2036/live/bh11.stream/playlist.m3u8"
      }
    },
    "滨海都市": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://60.30.52.41/live/bhtv2/playlist.m3u8"}
    },
    "漳州新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://31182.hlsplay.aodianyun.com/lms_31182/tv_channel_175.m3u8"
      }
    },
    "潮安综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://chaoan.chaoantv.com:8278/live/chaoanzongyi.m3u8"}
    },
    "潮州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/czzh/sd/live.m3u8"}
    },
    "澳亚卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=192&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.51:8114/hls/Fsv_chan_hls_se_idx=192&FvSeid=1&Fsv_ctype=LIVES&Fsv_otype=1&Provider_id=0&Pcontent_id=8114.m3u8",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=192&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://live.mastvnet.com/4rlff1m/live.m3u8"
      }
    },
    "澳视澳门": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.244.22.4/ch1/ch1.live/playelist.m3u8"}
    },
    "澳视葡文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.244.22.4/ch2/ch2.live/chunklist_w1632175875.m3u8"}
    },
    "澳门1": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.244.22.4/ch3/ch3.live/playelist.m3u8"}
    },
    "澳门2": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.244.22.4/ch2/ch2.live/playelist.m3u8"}
    },
    "澳门体育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.244.22.4/ch4/sport_ch4.live/playelist.m3u8"}
    },
    "灵台新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000145/index.m3u8"}
    },
    "炫动卡通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.255.188/live/program/live/xdkt/1300000/mnf.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221226388/index.m3u8"
      }
    },
    "点掌财经": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://cclive.aniu.tv/live/anzb.m3u8"}
    },
    "珠江": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=8&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "甘肃公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://hls.gstv.com.cn/49048r/3t5xyc.m3u8"}
    },
    "甘肃卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/gsws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225724/index.m3u8",
        "http://117.169.120.140:8080/live/gansustv/.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=142&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://183.207.248.71/gitv/live1/G_GANSU/G_GANSU",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=142&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://39.134.39.38/PLTV/88888888/224/3221226240/index.m3u8?from=26&hms_devid=685&icpid=88888888",
        "http://39.134.39.39/PLTV/88888888/224/3221226240/index.m3u8"
      }
    },
    "甘肃移动": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://hls.gstv.com.cn/49048r/y72q36.m3u8"}
    },
    "生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.153/ott.js.chinamobile.com/PLTV/3/224/3221227311/index.m3u8"
      }
    },
    "电白视窗": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://gddb.chinashadt.com:1935/live/video2.stream_360p/playlist.m3u8",
        "http://gddb.chinashadt.com:1935/live/video2.stream/playlist.m3u8"
      }
    },
    "电白综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://gddb.chinashadt.com:1935/live/video1.stream_360p/playlist.m3u8",
        "http://gddb.chinashadt.com:1935/live/video1.stream/playlist.m3u8"
      }
    },
    "白城新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/baicheng1/sd/live.m3u8"}
    },
    "白山新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/baishan1/sd/live.m3u8"}
    },
    "百事通体育1": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hdnba1/4000000/mnf.m3u8"
      }
    },
    "百事通体育2": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hdnba2/4000000/mnf.m3u8"
      }
    },
    "百事通体育3": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hdnba3/4000000/mnf.m3u8"
      }
    },
    "百事通体育5": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hdnba5/4000000/mnf.m3u8"
      }
    },
    "百事通体育7": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/hdnba7/4000000/mnf.m3u8"
      }
    },
    "石景山电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.sjsrm.com/bjsjs/sd/live.m3u8"}
    },
    "福山生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.jiaodong.net:82/tvfushan/hls/tv_shenghuo.m3u8"}
    },
    "福州少儿": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.zohi.tv/video/s10001-sepd-4/index.m3u8"}
    },
    "福州影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.zohi.tv/video/s10001-yspd-2/index.m3u8"}
    },
    "福州生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.zohi.tv/video/s10001-shpd-3/index.m3u8"}
    },
    "福州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.zohi.tv/video/s10001-FZTV-1/index.m3u8"}
    },
    "萬州三峽移民": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8017/c2F0hmi/1000/live.m3u8",
        "http://wanzhoulive.cbg.cn:8017/c2F0hmi/1000/live.m3u8"
      }
    },
    "萬州影視文藝": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://wanzhoulive.cbg.cn:8017/d4ceB1a/1000/live.m3u8",
        "http://123.146.162.24:8017/d4ceB1a/1000/live.m3u8"
      }
    },
    "萬州科教頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8017/Cz7WPb8/800/live.m3u8",
        "http://wanzhoulive.cbg.cn:8017/Cz7WPb8/800/live.m3u8"
      }
    },
    "萬州綜合頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://123.146.162.24:8017/iTXwrGs/800/live.m3u8",
        "http://wanzhoulive.cbg.cn:8017/iTXwrGs/800/live.m3u8"
      }
    },
    "积石山电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000152/index.m3u8"}
    },
    "篮球资讯": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.110.245.139/PLTV/4/224/3221227023/index.m3u8"}
    },
    "娄底": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://mms.ldntv.cn:1935/live/_definst_/zonghe/chunklist_w67585331.m3u8"
      }
    },
    "娄底综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://119.39.242.52:1935/live/zonghe/playlist.m3u8",
        "http://mms.ldntv.cn:1935/live/zonghe/playlist.m3u8"
      }
    },
    "精品电影": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/cntv/live1/jdianying/jdianying"}
    },
    "綦江综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://113.207.29.195:1935/app_2/_definst_/ls_25.stream/playlist.m3u8"
      }
    },
    "红牛REDBULL": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_3360.m3u8"
      }
    },
    "纪实人文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225655/index.m3u8"
      }
    },
    "纯享4K": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225786/index.m3u8"
      }
    },
    "继续教育": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://111.63.117.13:6060/030000001000/G_CETV-2/G_CETV-2.m3u8"
      }
    },
    "罗山电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.dxhmt.cn:9081/tv/11521-1.m3u8"}
    },
    "置业": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.161/ott.js.chinamobile.com/PLTV/3/224/3221227037/index.m3u8"
      }
    },
    "美国中文电视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://jpts.sinovision.net/livestream.m3u8"}
    },
    "美国亚美卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dcunilive30-lh.akamaihd.net/i/dclive_1@535522/master.m3u8"
      }
    },
    "美国狗狗宠物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://video.blivenyc.com/broadcast/prod/2061/22/desktop-playlist.m3u8"
      }
    },
    "翡翠台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=188&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "耀才财经": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://202.69.67.66/webcast/bshdlive-pc/playlist.m3u8",
        "http://202.69.67.66:443/webcast/bshdlive-mobile/playlist.m3u8"
      }
    },
    "肃州电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000123/index.m3u8"}
    },
    "肇庆综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/zqzh/playlist.m3u8"}
    },
    "舟山公共生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.wifizs.cn/ggsh/sd/live.m3u8"}
    },
    "舟山新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://live.wifizs.cn/xwzh/sd/live.m3u8",
        "http://stream.wifizs.cn/xwzh/sd/live.m3u8"
      }
    },
    "舟山群岛旅游": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.wifizs.cn/qdly/sd/live.m3u8"}
    },
    "芜湖公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live1.wuhubtv.com/channel3/sd/live.m3u8"}
    },
    "芜湖新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live1.wuhubtv.com/channel1/sd/live.m3u8"}
    },
    "芜湖生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live1.wuhubtv.com/channel2/sd/live.m3u8"}
    },
    "荣昌综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.64.181.25:40023/rongchang01.m3u8"}
    },
    "莒縣圖文頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.162.225.122:8181/live/test3.m3u8"}
    },
    "莒縣電視一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.162.225.122:8181/live/test1.m3u8"}
    },
    "莒縣電視二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://61.162.225.122:8181/live/test2.m3u8"}
    },
    "萍鄉公共頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://www.pxitv.com:8099/hls-live/livepkgr/_definst_/pxitvevent/pxtv3stream.m3u8"
      }
    },
    "萍鄉教育頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://www.pxitv.com:8099/hls-live/livepkgr/_definst_/pxitvevent/pxtv2stream.m3u8"
      }
    },
    "萍鄉新聞綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://www.pxitv.com:8099/hls-live/livepkgr/_definst_/pxitvevent/pxtv1stream.m3u8"
      }
    },
    "萧山新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXxiaoshan1/720p.m3u8"
      }
    },
    "蓝屏": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=109&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "蓬安新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://palive.patv123.com:8091/live/xwpd_800K.m3u8"}
    },
    "蕪湖教育頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live1.wuhubtv.com/channel4/sd/live.m3u8"}
    },
    "蕭山生活頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://l.cztvcloud.com/channels/lantian/SXxiaoshan2/720p.m3u8"
      }
    },
    "衡水影视娱乐": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.hsrtv.cn/hls/hstv2.m3u8"}
    },
    "衡水新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hls.hsrtv.cn/hls/hstv1.m3u8"}
    },
    "西安丝路": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.xiancity.cn/xatv5/playlist.m3u8"}
    },
    "西安乐购购物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.xiancity.cn/xatv6/playlist.m3u8"}
    },
    "西安商务资讯": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.xiancity.cn/xatv3/playlist.m3u8"}
    },
    "西安影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.xiancity.cn/xatv4/playlist.m3u8"}
    },
    "西安新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.xiancity.cn/xatv1/playlist.m3u8"}
    },
    "西安白鸽": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.xiancity.cn/xatv2/playlist.m3u8"}
    },
    "西藏卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225723/index.m3u8",
        "http://117.169.120.140:8080/live/xizangstv/.m3u8",
        "http://183.207.249.16/PLTV/3/224/3221225523/index.m3u8",
        "http://media.vtibet.com/masvod/HLSLive/9/hanyuTV_q1.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=208&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
    "西藏藏語": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://media.vtibet.com/masvod/HLSLive/7/zangyuTV_q1.m3u8"}
    },
    "西虹市首富": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://zuikzy.win7i.com/2018/07/30/hCt7GSGU1sAgOC8j/playlist.m3u8"
      }
    },
    "西青新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://221.238.209.44:81/hls/live1.m3u8"}
    },
    "贵州卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/GZWSHD_H265.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225728/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_GUIZHOU/G_GUIZHOU",
        "http://223.110.245.149/ott.js.chinamobile.com/PLTV/3/224/3221225787/index.m3u8"
      }
    },
    "赵县电视一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbzx.chinashadt.com:2036/zhibo/stream:zx1.stream_360p/playlist.m3u8",
        "http://hbzx.chinashadt.com:2036/zhibo/stream:zx1.stream/playlist.m3u8"
      }
    },
    "赵县电视二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbzx.chinashadt.com:2036/zhibo/stream:zx2.stream_360p/playlist.m3u8",
        "http://hbzx.chinashadt.com:2036/zhibo/stream:zx2.stream/playlist.m3u8"
      }
    },
    "辛集新聞頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://zsxj.chinashadt.com:1935/live/xjxw.stream_360p/playlist.m3u8"
      }
    },
    "辛集生活頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://zsxj.chinashadt.com:1935/live/xjsh.stream_360p/playlist.m3u8"
      }
    },
    "辽宁卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.249.12/PLTV/4/224/3221225802/index.m3u8",
        "http://183.207.248.71/cntv/live1/liaoningstv/liaoningstv",
        "http://183.207.249.71/PLTV/3/224/3221225566/index.m3u8",
        "http://125.210.152.18:9090/live/LNWSHD_H265.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225735/index.m3u8",
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225696/index.m3u8",
        "http://39.134.39.37/PLTV/88888888/224/3221226209/index.m3u8",
        "http://112.25.48.68/live/program/live/lnwshd/4000000/mnf.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=38&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://223.110.245.145/ott.js.chinamobile.com/PLTV/3/224/3221227410/index.m3u8"
      }
    },
    "辽源新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/liaoyuan1/sd/live.m3u8"}
    },
    "迪庆综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream01.dqtv123.com:1935/live/xinwenzonghe.stream/playlist.m3u8"
      }
    },
    "迪庆藏语": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream01.dqtv123.com:1935/live/diqingzangyu.stream/playlist.m3u8"
      }
    },
    "通化新闻": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/tonghua1/sd/live.m3u8"}
    },
    "通州电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://pull.dayuntongzhou.com/live/tztv.m3u8"}
    },
    "邗江资讯": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://223.110.245.139/PLTV/4/224/3221227154/index.m3u8"}
    },
    "邵东综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hnsd.chinashadt.com:2036/live/stream:shaodong.stream/playlist.m3u8"
      }
    },
    "酒泉新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000001/index.m3u8"}
    },
    "重庆卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/index.m3u8?Fsv_chan_hls_se_idx=10&Fsv_ctype=LIVES&Fsv_otype=1&FvSeid=1&Pcontent_id=.m3u8&Provider_id=",
        "http://112.25.48.68/live/program/live/cqws/1300000/mnf.m3u8",
        "http://183.207.249.5/PLTV/4/224/3221225812/index.m3u8",
        "http://183.207.248.71/gitv/live1/G_CHONGQING/G_CHONGQING",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225692/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225734/index.m3u8",
        "http://117.169.120.132:8080/live/chongqingstv/playlist.m3u8",
        "http://223.110.254.137:6610/cntv/live1/HD-8000k-1080P-chongqingstv/HD-8000k-1080P-chongqingstv/1.m3u8"
      }
    },
    "重庆忠县": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://qxlmlive.cbg.cn:1935/app_2/ls_35.stream/chunklist.m3u8"
      }
    },
    "重庆移动": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://qxlmlive.cbg.cn:1935/app_2/ls_57.stream/playlist.m3u8"
      }
    },
    "重庆移动机场": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://qxlmlive.cbg.cn:1935/app_2/ls_56.stream/playlist.m3u8"
      }
    },
    "金昌公共頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream4.liveyun.hoge.cn/ch01/sd/live.m3u8"}
    },
    "金昌綜合頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream4.liveyun.hoge.cn/ch02/sd/live.m3u8"}
    },
    "金鹰卡通": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://223.110.245.145/ott.js.chinamobile.com/PLTV/3/224/3221226303/index.m3u8",
        "http://223.110.241.149:6610/gitv/live1/G_JINYING/G_JINYING/1.m3u8",
        "http://112.25.48.68/live/program/live/jykt/1300000/mnf.m3u8"
      }
    },
    "银川公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.ycgbtv.com.cn/ycgg/sd/live.m3u8"}
    },
    "银川生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.ycgbtv.com.cn/ycxw/sd/live.m3u8"}
    },
    "長豐新聞綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://218.23.114.19:1935/live/xinwen/playlist.m3u8"}
    },
    "长乐综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://35908.hlsplay.aodianyun.com/guangdianyun_35908/tv_channel_327.m3u8"
      }
    },
    "长春综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/jlcc/sd/live.m3u8"}
    },
    "长沙地铁移动": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://35848.hlsplay.aodianyun.com/guangdianyun_35848/tv_channel_356.m3u8"
      }
    },
    "长沙女性": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://35848.hlsplay.aodianyun.com/guangdianyun_35848/tv_channel_349.m3u8"
      }
    },
    "长沙经贸": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://35848.hlsplay.aodianyun.com/guangdianyun_35848/tv_channel_350.m3u8"
      }
    },
    "长沙购物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://35848.hlsplay.aodianyun.com/guangdianyun_35848/tv_channel_354.m3u8"
      }
    },
    "阜城综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://hbfc.chinashadt.com:2036/live/2.stream/playlist.m3u8"}
    },
    "阳江综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://dslive.grtn.cn/yjzh/playlist.m3u8"}
    },
    "陕西卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/sxws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225729/index.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221227022/index.m3u8"
      }
    },
    "隆化影视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hblh.chinashadt.com:2036/live/stream:lh2.stream/playlist.m3u8"
      }
    },
    "隆化综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hblh.chinashadt.com:2036/live/stream:lh1.stream/playlist.m3u8"
      }
    },
    "集安综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream2.jlntv.cn/ja/sd/live.m3u8"}
    },
    "霍山综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://ahhs.chinashadt.com:1936/live/stream:hs1.stream/playlist.m3u8"
      }
    },
    "霸州公共頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbbz.chinashadt.com:2036/live/stream:bzgg.stream/playlist.m3u8"
      }
    },
    "霸州少兒頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbbz.chinashadt.com:2036/live/stream:bzse.stream/playlist.m3u8"
      }
    },
    "霸州文化頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbbz.chinashadt.com:2036/live/stream:bzwh.stream/playlist.m3u8"
      }
    },
    "霸州新聞頻道": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbbz.chinashadt.com:2036/live/stream:bzxw.stream/playlist.m3u8"
      }
    },
    "青州文化旅游": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://sdqz.chinashadt.com:2036/live/stream:3.stream/playlist.m3u8"
      }
    },
    "青州生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://sdqz.chinashadt.com:2036/live/stream:2.stream/playlist.m3u8"
      }
    },
    "青州综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://sdqz.chinashadt.com:2036/live/stream:1.stream/playlist.m3u8"
      }
    },
    "青海卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/qhws/1300000/mnf.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225727/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=206&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=206&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://live.geermurmt.com/qhws/sd/live.m3u8"
      }
    },
    "靖江新闻綜合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://58.222.151.43:1935/live/xwzhpc/playlist.m3u8",
        "http://visit.jjbctv.com:1935/live/xwzhpc/playlist.m3u8"
      }
    },
    "静宁综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000147/index.m3u8"}
    },
    "鞍山图文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/index.m3u8?Fsv_chan_hls_se_idx=12&Fsv_ctype=LIVES&Fsv_otype=1&FvSeid=1&Pcontent_id=.m3u8&Provider_id="
      }
    },
    "风尚购物": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://183.207.248.71/cntv/live1/fengshanggw/fengshanggw"}
    },
    "餘姚姚江文化": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://l.cztvcloud.com/channels/lantian/SXyuyao2/720p.m3u8"}
    },
    "马云对话": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://www.alibabapictures.com/movies/10/mayunduihua.mp4"}
    },
    "高台电视台": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://117.156.28.119/270000001111/1110000146/index.m3u8"}
    },
    "高清电影": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.19.76/dbiptv.sn.chinamobile.com/PLTV/88888888/224/3221226463/index.m3u8"
      }
    },
    "鹤壁新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://pili-live-hls.hebitv.com/hebi/hebi.m3u8"}
    },
    "鹤峰综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hefeng.live.tempsource.cjyun.org/videotmp/s10100-hftv.m3u8"
      }
    },
    "鹿泉一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hblq.chinashadt.com:2036/live/stream:luquan1.stream/playlist.m3u8"
      }
    },
    "鹿泉二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hblq.chinashadt.com:2036/live/stream:luquan2.stream/playlist.m3u8"
      }
    },
    "黃驊影視": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbhh.chinashadt.com:2111/live/hhys.stream/playlist.m3u8"
      }
    },
    "黃驊渤海新區": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbhh.chinashadt.com:2111/live/bhtv.stream/playlist.m3u8"
      }
    },
    "黄骅一套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbhh.chinashadt.com:2111/live/hhtv.stream/playlist.m3u8"
      }
    },
    "黄骅二套": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hbhh.chinashadt.com:2111/live/hhtv2.stream/playlist.m3u8"
      }
    },
    "黑龙卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://125.210.152.18:9090/live/HLJWSHD_H265.m3u8",
        "http://223.110.243.169/PLTV/3/224/3221227252/index.m3u8",
        "http://223.110.245.139/PLTV/4/224/3221227492/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221227252/index.m3u8"
      }
    },
    "黑龙江": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/gitv/live1/G_HEILONGJIANG/G_HEILONGJIANG",
        "http://223.110.245.161/ott.js.chinamobile.com/PLTV/3/224/3221227492/index.m3u8",
        "http://ott.js.chinamobile.com/PLTV/3/224/3221227252/index.m3u8"
      }
    },
    "黑龙江卫": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://183.207.248.71/cntv/live1/HD-2500k-1080P-heilongjiangstv/HD-2500k-1080P-heilongjiangstv"
      }
    },
    "黑龙江卫视": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=27&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225690/index.m3u8",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225736/index.m3u8",
        "http://183.207.249.36/PLTV/4/224/3221227323/index.m3u8",
        "http://223.110.254.143:6610/cntv/live1/HD-8000k-1080P-heilongjiangstv/HD-8000k-1080P-heilongjiangstv/1.m3u8"
      }
    },
    "黔西南公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.qxndt.com/channel3/sd/live.m3u8"}
    },
    "黔西南综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://live.qxndt.com/channel2/sd/live.m3u8"}
    },
    "點掌財經": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://cclive2.aniu.tv/live/anzb.m3u8"}
    },
    "龙口图文": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://yslk.chinashadt.com:1635/live/stream:di4.stream/playlist.m3u8"
      }
    },
    "龙口新闻综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://yslk.chinashadt.com:1635/live/stream:di1.stream/playlist.m3u8"
      }
    },
    "龙口生活": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://yslk.chinashadt.com:1635/live/stream:di2.stream/playlist.m3u8"
      }
    },
    "龙岩公共": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.lytv.net.cn/1/sd/live.m3u8"}
    },
    "龙岩综合": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.lytv.net.cn/2/sd/live.m3u8"}
    }
  };

  final _foreignTvLis = {
    "3ABN": {
      "tvg-id": "K17JIDT3.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/zI6jr9L.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://moiptvhls-i.akamaihd.net/hls/live/652313/secure/master.m3u8",
        "https://moiptvhls-i.akamaihd.net/hls/live/652312/secure/master.m3u8",
        "https://moiptvhls-i.akamaihd.net/hls/live/652318/secure/master.m3u8",
        "https://moiptvhls-i.akamaihd.net/hls/live/554145/secure/playlist.m3u8",
        "https://moiptvhls-i.akamaihd.net/hls/live/652317/secure/master.m3u8"
      }
    },
    "3AW": {
      "tvg-id": "3AW.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Uvie0ws.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://melb3awvid-lh.akamaihd.net/i/melbournevid_1@109381/master.m3u8"
      }
    },
    "5AAB": {
      "tvg-id": "5AABTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/k9M5ydW.png",
      "group-title": "Undefined",
      "tvg-url": {"http://158.69.124.9:1935/5aabtv/5aabtv/playlist.m3u8"}
    },
    "7flix": {
      "tvg-id": "7flix.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.101305020525.png",
      "group-title": "Undefined",
      "tvg-url": {"https://i.mjh.nz/au/Sydney/tv.101305020525.m3u8"}
    },
    "7mate": {
      "tvg-id": "7mate.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.101305020523.png",
      "group-title": "Undefined",
      "tvg-url": {"https://i.mjh.nz/au/Sydney/tv.101305020523.m3u8"}
    },
    "10": {
      "tvg-id": "10Bold.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.101406020627.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://i.mjh.nz/au/Sydney/tv.101406020627.m3u8",
        "https://i.mjh.nz/au/Sydney/tv.101406020628.m3u8",
        "https://i.mjh.nz/au/Sydney/tv.101406020623.m3u8"
      }
    },
    "30A": {
      "tvg-id": "30ADarcizzleOffshore.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/l2O0fY1.png",
      "group-title": "Outdoor",
      "tvg-url": {
        "https://30a-tv.com/darcizzle.m3u8",
        "https://30a-tv.com/feeds/xodglobal/30atv.m3u8",
        "https://30a-tv.com/music.m3u8",
        "https://30a-tv.com/sidewalks.m3u8",
        "https://30a-tv.com/beachy.m3u8"
      }
    },
    "100%": {
      "tvg-id": "100AutoMotoTV.bg",
      "tvg-country": "BG",
      "tvg-language": "Bulgarian;English",
      "tvg-logo": "https://i.imgur.com/PjBm4Ic.jpg",
      "group-title": "Auto",
      "tvg-url": {"http://100automoto.tv:1935/bgtv1/autotv/playlist.m3u8"}
    },
    "247": {
      "tvg-id": "247RetroTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/geonsey/Free2ViewTV/master/images/logos/247RetroTV.png",
      "group-title": "Classic",
      "tvg-url": {
        "http://hlsdpi-cdn-chqtx02.totalstream.net/dpilive/247retro/ret/dai/playlist.m3u8"
      }
    },
    "abc": {
      "tvg-id": "WPLGDT1.us",
      "tvg-country": "US-FL",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/abc.png",
      "group-title": "Undefined",
      "tvg-url": {"http://38.127.211.18/live/c2eds/ABC/HLS/index.m3u8"}
    },
    "ABC": {
      "tvg-id": "ABCKids.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo":
          "https://static-s.aa-cdn.net/img/ios/960892021/6dcf6804c2d739fe765563a1f28f493e",
      "group-title": "Kids",
      "tvg-url": {
        "https://c.mjh.nz/101002210222",
        "https://abc-iview-mediapackagestreams-2.akamaized.net/out/v1/6e1cc6d25ec0480ea099a5399d73bc4b/index.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-abcnews/CDN/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023560/abcnews1/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023561/abcnews2/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023562/abcnews3/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023563/abcnews4/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023564/abcnews5/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023565/abcnews6/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023566/abcnews7/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023567/abcnews8/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023568/abcnews9/master.m3u8",
        "https://abcnews-streams.akamaized.net/hls/live/2023569/abcnews10/master.m3u8",
        "http://51.161.118.146:8080/ISG03_ABC_SAN_FRANCISCO_CA_KGO/video.m3u8",
        "https://c.mjh.nz/3201026102E1",
        "https://c.mjh.nz/abc2"
      }
    },
    "ABP": {
      "tvg-id": "ABPHindi.in",
      "tvg-country": "IN",
      "tvg-language": "English",
      "tvg-logo":
          "https://static.abplive.in/wp-content/themes/abp-hindi/images/logo/hindiLogoD.png",
      "group-title": "News",
      "tvg-url": {
        "https://abp-i.akamaihd.net/hls/live/765529/abphindi/master.m3u8"
      }
    },
    "Absolute": {
      "tvg-id": "AbsoluteRealitybyWETV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/oOFjyYf.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://amc-absolutereality-1.imdbtv.wurl.com/manifest/playlist.m3u8"
      }
    },
    "ACC": {
      "tvg-id": "ACCNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/UHcFiHk.png",
      "group-title": "Sports",
      "tvg-url": {"https://a.jsrdn.com/broadcast/542cb2ce3c/+0000/c.m3u8"}
    },
    "AccuWeather": {
      "tvg-id": "AccuWeather.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yNDUzNzc0Mjlf/AccuWeather_500x500.png",
      "group-title": "Weather",
      "tvg-url": {
        "https://amg00684-accuweather-accuweather-rokuus-0endj.amagi.tv/playlist.m3u8"
      }
    },
    "Actionable": {
      "tvg-id": "Actionable.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c7e25a1932c8368bdbfd87d/playlist.m3u8"
      }
    },
    "ActionMax": {
      "tvg-id": "ActionMaxEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Snba5W2.jpg",
      "group-title": "Movies",
      "tvg-url": {
        "http://31.220.41.88:8081/live/us-cinemaxaction.stream/playlist.m3u8"
      }
    },
    "Adult": {
      "tvg-id": "AdultSwimAquaTeenHungerForce.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ixywxhs.jpg",
      "group-title": "Animation",
      "tvg-url": {
        "https://adultswim-vodlive.cdn.turner.com/live/aqua-teen/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/black-jesus/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/channel-5/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/DREAM-CORP-LLC/stream.m3u8",
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023183/aseast/noslate/VIDEO_1_5128000.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/infomercials/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/lsotl/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/metalocalypse/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/off-the-air/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/rick-and-morty/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/robot-chicken/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/samurai-jack/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/eric-andre/stream.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/venture-bros/stream.m3u8",
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023185/aswest/noslate/VIDEO_1_5128000.m3u8",
        "https://adultswim-vodlive.cdn.turner.com/live/ypf/stream.m3u8"
      }
    },
    "Adventure": {
      "tvg-id": "AdventureSportsNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ZbPFZOV.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2-xumo.fubo.tv/amagi_hls_data_xumo1212A-adventuresportsnetwork/CDN/master.m3u8",
        "https://gizmeon.s.llnwi.net/channellivev3/live/master.m3u8?channel=275"
      }
    },
    "Africa": {
      "tvg-id": "AfricaTV3.ng",
      "tvg-country": "NG",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/dzIFvwM.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://africatv.live.net.sa:1935/live/africatv3/playlist.m3u8"
      }
    },
    "AfricaNews": {
      "tvg-id": "Africanews.cg",
      "tvg-country": "CG",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.zap.co.ao/media/cache/movie_thumb/uploads/ao/channels/5e7b5a7adf3e8.png",
      "group-title": "News",
      "tvg-url": {
        "https://rakuten-africanews-1-dk.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Afrobeats": {
      "tvg-id": "Afrobeats.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/V0uKTmB.jpeg",
      "group-title": "Music",
      "tvg-url": {"https://stream.ecable.tv/afrobeats/index.m3u8"}
    },
    "AFV": {
      "tvg-id": "AFV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lG3OHxA.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/18_lZXPySFa5_GRVEbOX_A/master.m3u8"
      }
    },
    "Ahlulbayt": {
      "tvg-id": "AhlulbaytTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/qLqHPhK.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://109.123.126.14:1935/live/livestream1.sdp/playlist.m3u8"
      }
    },
    "Akaal": {
      "tvg-id": "AkaalTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English;Panjabi",
      "tvg-logo": "https://i.imgur.com/62IpVDn.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://cdnamd-hls-globecast.akamaized.net/live/ramdisk/akaal_tv/hls1_smart_akaal/akaal_tv.m3u8"
      }
    },
    "Akaku": {
      "tvg-id": "Akaku53.us",
      "tvg-country": "US-HI",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/MQET539.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://akaku.vod.castus.tv/live/ch1.m3u8",
        "https://akaku.vod.castus.tv/live/ch2.m3u8",
        "https://akaku.vod.castus.tv/live/ch3.m3u8"
      }
    },
    "AKC": {
      "tvg-id": "AKCTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/2nzRS60.png",
      "group-title": "Outdoor",
      "tvg-url": {
        "https://broadcast.blivenyc.com/speed/broadcast/22/desktop-playlist.m3u8",
        "https://broadcast.blivenyc.com/speed/broadcast/71/desktop-playlist.m3u8",
        "https://broadcast.blivenyc.com/speed/broadcast/29/desktop-playlist.m3u8"
      }
    },
    "Al": {
      "tvg-id": "AlJazeeraEnglish.qa",
      "tvg-country": "QA",
      "tvg-language": "English",
      "tvg-logo":
          "https://rndcdn.dstv.com/dstvcms/2016/06/14/DStvNowApp_AlJazeera_new4-4logo_001_xlrg.png",
      "group-title": "News",
      "tvg-url": {"https://live-hls-web-aje.getaj.net/AJE/index.m3u8"}
    },
    "Amazing": {
      "tvg-id": "AmazingDiscoveriesTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/zXWgbVk.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://uni01rtmp.tulix.tv/amazingdtv/amazingdtv/playlist.m3u8"
      }
    },
    "AMC": {
      "tvg-id": "AMCEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.directv.com/images/logos/channels/dark/large/313.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://bcovlive-a.akamaihd.net/ebf15ff84e98490e8b00209ed77c77f5/us-east-1/6240731308001/playlist.m3u8",
        "http://209.91.213.10:8088/play/a013",
        "https://amc-amcpresents-1.imdbtv.wurl.com/manifest/playlist.m3u8"
      }
    },
    "America": {
      "tvg-id": "AmericavsAddiction.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://3gz8cg829c.execute-api.us-west-2.amazonaws.com/prod/image-renderer/16x9/full/600/center/90/a0e4b00e-239d-484d-9d86-2ba28295ad94-large16x9_STIRR_0721_EPG_AmericaVsAddiction_1920x1080.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/-A9339ixSzydnZQZHd1u2A/master.m3u8"
      }
    },
    "America's": {
      "tvg-id": "AmericasVoice.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/jtFBBGs.jpg",
      "group-title": "News",
      "tvg-url": {
        "https://content.uplynk.com/channel/26bd482ffe364a1282bc3df28bd3c21f.m3u8"
      }
    },
    "American": {
      "tvg-id": "AmericanClassics.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/WUAXiq1.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxamericanclassics/CDN/playlist.m3u8",
        "http://170.178.189.66:1935/live/Stream1/playlist.m3u8"
      }
    },
    "Ameritrade": {
      "tvg-id": "Ameritrade.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images-na.ssl-images-amazon.com/images/I/71CZKwin9mL.png",
      "group-title": "Business",
      "tvg-url": {"https://tdameritrade-vizio.amagi.tv/playlist.m3u8"}
    },
    "AMG": {
      "tvg-id": "AMGTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://upload.wikimedia.org/wikipedia/en/b/b1/Amgtv.PNG",
      "group-title": "Family",
      "tvg-url": {
        "https://2-fss-2.streamhoster.com/pl_138/201660-1270634-1/playlist.m3u8"
      }
    },
    "Amga": {
      "tvg-id": "AmgaTV.us",
      "tvg-country": "AM",
      "tvg-language": "Armenian;English;Russian",
      "tvg-logo": "https://i.imgur.com/3vQVwUV.jpg",
      "group-title": "General",
      "tvg-url": {"https://streamer1.connectto.com/AMGA_WEB_1202/playlist.m3u8"}
    },
    "An": {
      "tvg-id": "AnAmericanChristmasCarol.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/Generic_Christmas_715x715.png?raw",
      "group-title": "Movies",
      "tvg-url": {
        "https://cloudfront.tubi.video/5b97b1f5-a605-44a5-a192-12e10beece40/sd846jzc/stream.m3u8"
      }
    },
    "Architectural": {
      "tvg-id": "ArchitecturalDigest.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/AD_246x246.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxarchitecturaldigest/CDN/playlist.m3u8"
      }
    },
    "Arirang": {
      "tvg-id": "ArirangTV.kr",
      "tvg-country": "KR",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Arirang.svg/500px-Arirang.svg.png",
      "group-title": "General;News",
      "tvg-url": {
        "http://amdlive-ch01.ctnd.com.edgesuite.net/arirang_1ch/smil:arirang_1ch.smil/playlist.m3u8"
      }
    },
    "Arise": {
      "tvg-id": "AriseNews.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/BlNMp0k.png",
      "group-title": "News",
      "tvg-url": {
        "https://news.ashttp9.visionip.tv/live/visiontvuk-news-arise-tv-hsslive-25f-16x9-SD/playlist.m3u8"
      }
    },
    "Ark": {
      "tvg-id": "ArkTV.ug",
      "tvg-country": "UG",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/aa/ark-tv-ug.png",
      "group-title": "Undefined",
      "tvg-url": {"https://arktelevision.org/hlslive/test/test.m3u8"}
    },
    "Aruba.TV": {
      "tvg-id": "ArubaTV.aw",
      "tvg-country": "AW",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9fWY09U.png",
      "group-title": "General",
      "tvg-url": {"https://ed1ov.live.opencaster.com/GzyysAAvEhht/index.m3u8"}
    },
    "Asylum": {
      "tvg-id": "Asylum.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/j98vGQp.jpg",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-theasylum/CDN/playlist.m3u8"
      }
    },
    "Atlanta": {
      "tvg-id": "AtlantaChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/hSYez3V.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://media4.tripsmarter.com:1935/LiveTV/ACVBHD/playlist.m3u8"
      }
    },
    "ATV": {
      "tvg-id": "ATV.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/aa/atv_pk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamone.simpaisa.com:8443/pitvlive1/atv.smil/playlist.m3u8"
      }
    },
    "Audio": {
      "tvg-id": "AudioDungeon.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.prunderground.com/wp-content/uploads/2019/04/Audio-Dungeon-1.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://content.uplynk.com/channel/5688add7ce704ce1a27ab62bb44044b9.m3u8"
      }
    },
    "Australia": {
      "tvg-id": "AustraliaChannel.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "News",
      "tvg-url": {
        "https://austchannel-live.akamaized.net/hls/live/2002729/austchannel-news/master.m3u8"
      }
    },
    "AWE": {
      "tvg-id": "AWE.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://d2pggiv3o55wnc.cloudfront.net/awe/wp-content/uploads/2015/09/AWELogoBlk.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://n1.klowdtv.net/live1/awe_720p/chunks.m3u8",
        "https://aweencore-vizio.amagi.tv/playlist.m3u8"
      }
    },
    "AXN": {
      "tvg-id": "AXNEastAsia.us",
      "tvg-country": "ID;TH",
      "tvg-language": "English;Thai",
      "tvg-logo": "https://www.img09.xyz/assets/img/ch_logo/hd-axn.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://htv-drm-live-cdn.fptplay.net/CDN-FPT02/AXN-HD-1080p/playlist.m3u8"
      }
    },
    "AXS": {
      "tvg-id": "AXSTVNow.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/605d1bba10396351a3042dd4",
      "group-title": "General",
      "tvg-url": {"https://dikcfc9915kp8.cloudfront.net/hls/main.m3u8"}
    },
    "Baby": {
      "tvg-id": "BabyTVEurope.uk",
      "tvg-country": "EUR",
      "tvg-language": "English;German",
      "tvg-logo": "https://i.imgur.com/z5E8vLR.png",
      "group-title": "Kids",
      "tvg-url": {"http://okkotv-live.cdnvideo.ru/channel/BabyTV.m3u8"}
    },
    "BabyFirst": {
      "tvg-id": "BabyFirst.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5f4fb4cf605ddf000748e16f/colorLogoPNG.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://babyfirst.akamaized.net/hls/live/2028842/bftvusaott/playlist.m3u8"
      }
    },
    "Baeble": {
      "tvg-id": "Baeble.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/mDxouc8.png",
      "group-title": "Music",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxbaeble/CDN/playlist.m3u8"
      }
    },
    "Bahrain": {
      "tvg-id": "BahrainTV.bh",
      "tvg-country": "BH",
      "tvg-language": "Arabic;English",
      "tvg-logo": "https://i.imgur.com/LTD0jIm.png",
      "group-title": "General",
      "tvg-url": {"http://185.105.4.106:1935/live/Bahrain+TV/playlist.m3u8"}
    },
    "Battery": {
      "tvg-id": "BatteryPopXUMO.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/5VUZTa1.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxbatterypop/CDN/playlist.m3u8"
      }
    },
    "BBC": {
      "tvg-id": "BBCAlba.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/bb/bbc-alba-uk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_alba/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://bcovlive-a.akamaihd.net/8e64fad5ddbe4d3e95b23b0f9c062f03/us-east-1/6240731308001/playlist.m3u8",
        "https://livecdn.fptplay.net/qnetlive/bbcearth_hls.smil/chunklist_b2500000.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_four_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_four_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://livecdn.fptplay.net/qnetlive/bbclifestyle_2000.stream/chunklist.m3u8",
        "https://cdnuk001.broadcastcdn.net/KUK-BBCNEWSHD/index.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_cambridge/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_channel_islands/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_east/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_east_midlands/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_east_yorkshire/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-push-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://vs-hls-push-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_london/mobile_wifi_main_sd_abr_v2.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_north_east/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_north_west/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_northern_ireland_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_northern_ireland_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_oxford/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_scotland_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_scotland_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_south/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_south_east/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_south_west/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_wales_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_wales_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_west/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_west_midlands/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_one_yorks/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_parliament/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_scotland_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/content/x=3/v=pv14/b=5070016/t=3840/i=urn:bbc:pips:service:bbc_scotland_hd/main.m3u8",
        "http://start.agmediachandigarh.com/gaundapunjab/tv/playlist.m3u8",
        "https://vs-hls-push-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_two_hd/mobile_wifi_main_sd_abr_v2.m3u8",
        "https://vs-hls-push-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_two_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_two_northern_ireland_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_two_northern_ireland_hd/t=3840/v=pv14/b=5070016/main.m3u8",
        "https://vs-hls-push-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:bbc_two_wales_digital/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8",
        "https://a.files.bbci.co.uk/media/live/manifesto/audio_video/webcast/dash/uk/full/ak/uhd_stream_01.mpd",
        "https://a.files.bbci.co.uk/media/live/manifesto/audio_video/webcast/dash/uk/full/ak/uhd_stream_02.mpd",
        "https://a.files.bbci.co.uk/media/live/manifesto/audio_video/webcast/dash/uk/full/ak/uhd_stream_03.mpd",
        "https://a.files.bbci.co.uk/media/live/manifesto/audio_video/webcast/dash/uk/full/ak/uhd_stream_04.mpd",
        "https://a.files.bbci.co.uk/media/live/manifesto/audio_video/webcast/dash/uk/full/ak/uhd_stream_05.mpd",
        "http://103.199.161.254/Content/bbcworld/Live/Channel(BBCworld)/index.m3u8"
      }
    },
    "Beach": {
      "tvg-id": "BeachTVCSULB.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/oct3pIq.jpg",
      "group-title": "Education",
      "tvg-url": {
        "http://stream04.amp.csulb.edu:1935/Beach_TV/smil:BeachTV.smil/playlist.m3u8",
        "http://media4.tripsmarter.com:1935/LiveTV/DTVHD/playlist.m3u8",
        "https://5ed325193d4e1.streamlock.net:444/LiveTV/KTVHD/playlist.m3u8",
        "http://media4.tripsmarter.com:1935/LiveTV/MTVHD/playlist.m3u8",
        "http://media4.tripsmarter.com:1935/LiveTV/BTVHD/playlist.m3u8"
      }
    },
    "Beauty": {
      "tvg-id": "BeautyIQ.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/qtirIFA.png",
      "group-title": "Shop",
      "tvg-url": {
        "https://lsqvc4us-lh.akamaihd.net/i/lsqvc4us_01@802711/master.m3u8"
      }
    },
    "Bek": {
      "tvg-id": "BekSportsEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://pbs.twimg.com/media/DfLqnf4VMAA0m27.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://wowzaprod188-i.akamaihd.net/hls/live/728897/54d0bcd5/playlist.m3u8",
        "https://wowzaprod188-i.akamaihd.net/hls/live/728897/89b077e6/playlist.m3u8"
      }
    },
    "BeritaSatu": {
      "tvg-id": "BeritaSatuWorld.id",
      "tvg-country": "ID",
      "tvg-language": "English;Indonesian",
      "tvg-logo": "https://i.imgur.com/GIGcX5K.png",
      "group-title": "News",
      "tvg-url": {
        "https://b1world.beritasatumedia.com/Beritasatu/B1World_manifest.m3u8"
      }
    },
    "Better": {
      "tvg-id": "BetterHealthTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/paFX8ZJ.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://uni5rtmp.tulix.tv/betterhealth/betterhealth/playlist.m3u8",
        "https://uni5rtmp.tulix.tv/betternature/betternature/playlist.m3u8",
        "https://uni5rtmp.tulix.tv/betterlife/betterlife/playlist.m3u8"
      }
    },
    "Bible": {
      "tvg-id": "BibleExplorations.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/wwUtlBi.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://stream.iphonewebtown.com:1935/bibleexplorations/bexplorationsmobile.stream/playlist.m3u8"
      }
    },
    "Big": {
      "tvg-id": "BigLifeTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/bjTeasa.png",
      "group-title": "Lifestyle",
      "tvg-url": {"https://biglife.sinclair.wurl.com/manifest/playlist.m3u8"}
    },
    "Biz": {
      "tvg-id": "BizTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/4pEmcFH.png",
      "group-title": "Lifestyle",
      "tvg-url": {"https://thegateway.app/BizAndYou/BizTV/playlist.m3u8"}
    },
    "Black": {
      "tvg-id": "BlackNewsChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/GMAT4VE.jpg",
      "group-title": "News",
      "tvg-url": {"http://redbox-blacknewschannel-xumo.amagi.tv/playlist.m3u8"}
    },
    "Blaze": {
      "tvg-id": "BlazeTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/wvr1F1i.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://theblaze4.akamaized.net/hls/live/699982/theblaze/cm-dvr/master.m3u8"
      }
    },
    "Bloody": {
      "tvg-id": "BloodyDisgusting.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/602dd011302f4d7da05d4bf3",
      "group-title": "Movies",
      "tvg-url": {
        "https://bloodydisgusting-ingest-roku-us.cinedigm.com/playlist.m3u8"
      }
    },
    "Bloomberg": {
      "tvg-id": "BloombergQuicktake.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.adweek.com/wp-content/uploads/2019/12/quicktake-bloomberg-tictoc-CONTENT-2019-640x360.jpg",
      "group-title": "General",
      "tvg-url": {
        "https://bloomberg-quicktake-1-fi.samsung.wurl.com/manifest/playlist.m3u8",
        "https://liveprodapnortheast.global.ssl.fastly.net/ap1/Channel-APTVqvs-AWS-tokyo-1/Source-APTVqvs-1000-1_live.m3u8",
        "https://www.bloomberg.com/media-manifest/streams/asia-event.m3u8",
        "https://liveprodapnortheast.akamaized.net/oz1/Channel-OZTVqvs-AWS-tokyo-1/Source-OZTVqvs-440-1_live.m3u8",
        "https://www.bloomberg.com/media-manifest/streams/eu-event.m3u8",
        "https://bloomberg-bloombergtv-1-it.samsung.wurl.com/manifest/playlist.m3u8",
        "https://bloomberg-bloomberg-1-fi.samsung.wurl.com/manifest/playlist.m3u8",
        "https://www.bloomberg.com/media-manifest/streams/us-event.m3u8",
        "https://www.bloomberg.com/media-manifest/streams/politics.m3u8",
        "https://bloomberg-bloombergtv-1-es.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Bluegrass": {
      "tvg-id": "BluegrassMusic4U.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/nm3N3aw.png",
      "group-title": "Music",
      "tvg-url": {
        "https://59d39900ebfb8.streamlock.net/blugrassmusic/blugrassmusic/playlist.m3u8"
      }
    },
    "bon": {
      "tvg-id": "bonappetit.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/YhFFxlE.png",
      "group-title": "Cooking",
      "tvg-url": {"https://bonappetit-samsung.amagi.tv/playlist.m3u8"}
    },
    "Bounce": {
      "tvg-id": "BounceXL.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/6176fd25e83a5f0007a464c9/colorLogoPNG.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://c217322ca48e4d1e98ab33fe41a5ed01.mediatailor.us-east-1.amazonaws.com/v1/master/04fd913bb278d8775298c26fdca9d9841f37601f/Samsung_BounceXL/playlist.m3u8"
      }
    },
    "Box": {
      "tvg-id": "BoxHits.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://tvepg.eu/img/united_kingdom/logo/box_hits.png",
      "group-title": "Music",
      "tvg-url": {
        "https://csm-e-boxplus.tls1.yospace.com/csm/extlive/boxplus01,boxhits-alldev.m3u8?yo.up=http://boxtv-origin-elb.cds1.yospace.com/uploads/boxhits/"
      }
    },
    "Brat": {
      "tvg-id": "BratTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lhjj94a.png",
      "group-title": "Kids",
      "tvg-url": {"https://brat-rakuten.amagi.tv/playlist.m3u8"}
    },
    "Breeze": {
      "tvg-id": "BreezeTV.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/3dpH9XF.jpg",
      "group-title": "Music",
      "tvg-url": {
        "https://livestreamdirect-breezetv.mediaworks.nz/breezetv.m3u8"
      }
    },
    "British": {
      "tvg-id": "BritishMuslimTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9k7fsqw.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://api.visionip.tv/live/ASHTTP/visiontvuk-international-britishmuslimtv-hsslive-25f-16x9-MB/playlist.m3u8"
      }
    },
    "bspoketv": {
      "tvg-id": "bspoketv.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/jsiHrMV.png",
      "group-title": "Lifestyle",
      "tvg-url": {"https://bspoketv.s.llnwi.net/streams/322/master.m3u8"}
    },
    "Bumblebee": {
      "tvg-id": "BumblebeeTVAnimalsLive.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/YbD8uHc.png",
      "group-title": "Relax",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c9537b8932c837b49397343/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c953819932c837b49397345/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node01.powr.com/live/5bf220fad5eeee0f5a40941a/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c95396f932c837b49397360/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5e7559e8a46b495a2283c5e8/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf225aed5eeee0f5a4094bd/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf22518d5eeee0f5a409486/playlist.m3u8",
        "https://0813a4e76b5d404a97a4070b8e087bc4.mediatailor.us-east-1.amazonaws.com/v1/master/82ded7a88773aef3d6dd1fedce15ba2d57eb6bca/wse_powr_com_5f8609d9d6344257cbfb6ee4/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf22225d5eeee0f5a40941d/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5e2624990145130f25474620/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c953836932c837b49397355/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5e2625030145130f25474622/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf22526d5eeee0f5a4094b8/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c95385c932c837b49397356/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf22549d5eeee0f5a4094ba/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5e2625700145130f25474624/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf22681932c8304fc453418/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf2256ed5eeee0f5a4094bb/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf2218bd5eeee0f5a40941b/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c95387b932c837b49397357/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node01.powr.com/live/5b284f40d5eeee07522b775e/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5d4b21643f4d602ba521b06c/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c7dff0f932c8368bdbfd5fd/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c95388f932c837b4939735a/playlist.m3u8",
        "https://b29da26d9a17436eafe339c08e488f33.mediatailor.us-east-1.amazonaws.com/v1/master/82ded7a88773aef3d6dd1fedce15ba2d57eb6bca/wse_powr_com_5f8609010d552957bf5aa546/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5e2625af5748670f12a3bee9/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c9538a5932c837b4939735b/playlist.m3u8",
        "https://2459f78c2f5d42c996bb24407b76877a.mediatailor.us-east-1.amazonaws.com/v1/master/82ded7a88773aef3d6dd1fedce15ba2d57eb6bca/wse_powr_com_60f88620abf1e257404a9250/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5bf22491932c8304fc4533e4/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5e2626030145130f25474626/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c9538b9932c837b4939735c/playlist.m3u8",
        "https://95771f8415a84e31bd152fe9c6c9905c.mediatailor.us-east-1.amazonaws.com/v1/master/82ded7a88773aef3d6dd1fedce15ba2d57eb6bca/wse_powr_com_5c953910932c837b4939735d/playlist.m3u8"
      }
    },
    "Business": {
      "tvg-id": "BusinessRockstars.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/BusinessRockstars_1400x1400.png?raw",
      "group-title": "Business",
      "tvg-url": {
        "https://content.uplynk.com/channel/7ad2b600b40b4a89933ab6981757f8b3.m3u8"
      }
    },
    "Buzzr": {
      "tvg-id": "Buzzr.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/en/8/84/NewBUZZRLogo2021.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://buzzr-roku-us.amagi.tv/playlist.m3u8"}
    },
    "C31": {
      "tvg-id": "C31Melbourne.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Ge1EutY.png",
      "group-title": "General",
      "tvg-url": {"https://d1k6kax80wecy5.cloudfront.net/RLnAKY/index.m3u8"}
    },
    "C-SPAN": {
      "tvg-id": "CSPAN2.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/240x135/cspan2.png",
      "group-title": "Legislative",
      "tvg-url": {
        "https://skystreams-lh.akamaihd.net/i/SkyC2_1@500807/master.m3u8",
        "https://skystreams-lh.akamaihd.net/i/SkyC3_1@500808/master.m3u8"
      }
    },
    "Cable": {
      "tvg-id": "CableHits.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/zl7Gzwm.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://bk7l2w4nlx53-hls-live.5centscdn.com/AETV/514c04b31b5f01cf00dd4965e197fdda.sdp/playlist.m3u8"
      }
    },
    "California": {
      "tvg-id": "CaliforniaMusicChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/L38mC6H.png",
      "group-title": "Music",
      "tvg-url": {
        "https://cmctv.ios.internapcdn.net/cmctv_vitalstream_com/live_1/CMCU-92/playlist.m3u8"
      }
    },
    "Camera": {
      "tvg-id": "CameraSmileTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/NG9W4vU.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://playout4multirtmp.tulix.tv/live7/Stream1/playlist.m3u8"
      }
    },
    "Camp": {
      "tvg-id": "CampSpoopy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/t3Jsks7.png",
      "group-title": "Kids",
      "tvg-url": {"https://stream.ads.ottera.tv/playlist.m3u8?network_id=269"}
    },
    "Canada": {
      "tvg-id": "CanadaOne.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/zr6KoiS.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://cdn8.live247stream.com/canadaone/tv/playlist.m3u8",
        "http://live.canadastartv.com:1935/canadastartv/canadastartv/playlist.m3u"
      }
    },
    "Canal": {
      "tvg-id": "CanalMotor.no",
      "tvg-country": "NO",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/BHm0wem.png",
      "group-title": "Sports",
      "tvg-url": {"http://digicom.hls.iptvdc.com/canalmotor/index.m3u8"}
    },
    "Captital": {
      "tvg-id": "CaptitalOTBBetting.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.capitalotb.com/wp-content/uploads/2019/09/COTB-Logo.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://d2up1hmow19bcd.cloudfront.net/livecf/liveracing/playlist.m3u8"
      }
    },
    "Cartoon": {
      "tvg-id": "CartoonNetworkAsia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://cms.dmpcdn.com/livetv/2017/10/18/01393493-1e29-4eb5-869b-1bd3e60b7b76.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://198.16.106.62:8278/streams/d/Cn/playlist.m3u8",
        "http://209.91.213.10:8088/play/a00k"
      }
    },
    "Catholic": {
      "tvg-id": "CatholicTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/RI9GbLX.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/master.m3u8"
      }
    },
    "Cats": {
      "tvg-id": "Cats247.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/599375885ceaac3cabccbed7/colorLogoPNG.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/599375885ceaac3cabccbed7/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=599375885ceaac3cabccbed7&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=635&terminate=false&userId="
      }
    },
    "CBBC": {
      "tvg-id": "CBBC.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/en/thumb/3/37/CBBC_2016_logo.svg/600px-CBBC_2016_logo.svg.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://vs-hls-pushb-uk-live.akamaized.net/x=3/i=urn:bbc:pips:service:cbbc_hd/mobile_wifi_main_sd_abr_v2_akamai_hls_live_http.m3u8"
      }
    },
    "CBC": {
      "tvg-id": "CBC.az",
      "tvg-country": "AZ;GE;TR",
      "tvg-language": "Armenian;Azerbaijani;English;Persian;Russian",
      "tvg-logo": "https://i.imgur.com/wVT0dwO.png",
      "group-title": "News",
      "tvg-url": {
        "http://cbctvlive.flashmediacast.com:1935/CBCTVLive/livestream/playlist.m3u8",
        "https://cbclivedai4-i.akamaihd.net/hls/live/567230/event2/CBRT/master5.m3u8",
        "https://cbclivedai6-i.akamaihd.net/hls/live/567239/event2/CBCT/master5.m3u8",
        "https://cbclivedai4-i.akamaihd.net/hls/live/567231/event2/CBXT/master5.m3u8",
        "https://cbclivedai7-i.akamaihd.net/hls/live/567244/event2/CBAT/master5.m3u8",
        "https://cbclivedai3-i.akamaihd.net/hls/live/566977/event2/CBHT/master5.m3u8",
        "https://cbclivedai3-i.akamaihd.net/hls/live/566976/event2/CBMT/master5.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxcbcnews/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-cbcnews/CDN/master.m3u8",
        "https://csm-e-eb.csm.tubi.video/csm/live/243017997.m3u8",
        "https://livecbcdai-i.akamaihd.net/hls/live/567245/event2/CBCNN/master5.m3u8",
        "https://cbclivedai5-i.akamaihd.net/hls/live/567235/event2/CBOT/master5.m3u8",
        "https://cbclivedai2-i.akamaihd.net/hls/live/566969/event2/CBKT/master5.m3u8",
        "https://cbclivedai5-i.akamaihd.net/hls/live/567236/event2/CBNT/master5.m3u8",
        "https://cbclivedai1-i.akamaihd.net/hls/live/566940/event2/CBLT/master5.m3u8",
        "https://cbclivedai2-i.akamaihd.net/hls/live/566968/event2/CBUT/master5.m3u8",
        "https://cbclivedai1-i.akamaihd.net/hls/live/566941/event2/CBET/master5.m3u8",
        "https://cbclivedai6-i.akamaihd.net/hls/live/567237/event2/CBWT/master5.m3u8",
        "https://cbclivedai7-i.akamaihd.net/hls/live/567240/event2/CFYK/master5.m3u8"
      }
    },
    "CBN": {
      "tvg-id": "CBNFamily.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/XpS19dt.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/master.m3u8",
        "https://bcliveunivsecure-lh.akamaihd.net/i/news_1@500579/master.m3u8"
      }
    },
    "CBS": {
      "tvg-id": "WFORDT1.us",
      "tvg-country": "US-FL",
      "tvg-language": "English",
      "tvg-logo":
          "https://zap2it.tmsimg.com/h5/NowShowing/10098/s10098_h5_aa.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://38.127.211.18/live/c2eds/CBS/HLS/index.m3u8",
        "https://16live00.akamaized.net/CBS_EAST/index.m3u8",
        "http://trn03.tulix.tv/teleup-cbs-whp-new1/playlist.m3u8",
        "http://51.161.118.146:8080/ISG03_CBS_LOS_ANGELES_CA_KCBS/video.m3u8",
        "https://cbsnews.akamaized.net/hls/live/2020607/cbsnlineup_8/master.m3u8",
        "https://cbsn-dal.cbsnstream.cbsnews.com/out/v1/ffa98bbf7d2b4c038c229bd4d9122708/master.m3u8",
        "https://cbsn-la.cbsnstream.cbsnews.com/out/v1/57b6c4534a164accb6b1872b501e0028/master.m3u8",
        "https://cbsn-mia.cbsnstream.cbsnews.com/out/v1/ac174b7938264d24ae27e56f6584bca0/master.m3u8",
        "http://51.161.118.146:8080/ISG03_CBS_SAN_FRANCISCO_CA_KPIX/video.m3u8"
      }
    },
    "CBSN": {
      "tvg-id": "CBSNLiveEvent.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://tvpmlogopus.samsungcloud.tv/platform/image/sourcelogo/vc/70/06/67/USBA370000104_20200915T081312.png",
      "group-title": "News",
      "tvg-url": {
        "https://cbsnewshd-lh.akamaihd.net/i/cbsnewsLivePlayer_1@196305/master.m3u8"
      }
    },
    "CC-TV": {
      "tvg-id": "CCTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/feFWTb8.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://granicusliveus3-a.akamaihd.net/charlotte/G0055_002/playlist.m3u8"
      }
    },
    "CCX": {
      "tvg-id": "CCXMediaNorthBrooklynParkMN.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/EOeoqsd.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://156.142.85.152/live/WIFI-2096k-1080p/WIFI-2096k-1080p.m3u8"
      }
    },
    "Celebrity": {
      "tvg-id": "CelebritySceneTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/2D1e2bH.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://playout4multirtmp.tulix.tv/live8/Stream1/playlist.m3u8"
      }
    },
    "Cerritos": {
      "tvg-id": "CerritosTV3.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://live-tv-channels.org/pt-data/uploads/logo/us-cerritos-tv3.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://granicusliveus4-a.akamaihd.net/cerritos/G0010_002/playlist.m3u8"
      }
    },
    "CGTN": {
      "tvg-id": "CGTN.cn",
      "tvg-country": "CN",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/CGTN.svg/800px-CGTN.svg.png",
      "group-title": "News",
      "tvg-url": {
        "http://live.cgtn.com/500/prog_index.m3u8",
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225645/index.m3u8",
        "https://dai.google.com/linear/hls/event/r4sa-f6GSN2XIvzKv5jVng/master.m3u8"
      }
    },
    "Channel": {
      "tvg-id": "Channel5.sg",
      "tvg-country": "SG",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://ddftztnzt6o79.cloudfront.net/hls/clr4ctv_okto/master.m3u8",
        "https://wowzaprod3-i.akamaihd.net/hls/live/252233/15b8d438/playlist.m3u8",
        "https://d1k6kax80wecy5.cloudfront.net/WFqZJc/index.m3u8",
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=68"
      }
    },
    "Charge!": {
      "tvg-id": "Charge.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/fuw0hHE.png",
      "group-title": "Movies",
      "tvg-url": {
        "http://content.uplynk.com/channel/37eb732888614810b512fdd82604244e.m3u8"
      }
    },
    "Cheddar": {
      "tvg-id": "Cheddar.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/607766d942e7e542aa73ddf2",
      "group-title": "News",
      "tvg-url": {
        "https://cheddar-cheddar-3.roku.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Chef": {
      "tvg-id": "ChefChampion.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/15a9pG9.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://rpn1.bozztv.com/36bay2/gusa-chefchampion/mono.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-chefrock/mono.m3u8"
      }
    },
    "Chelsea": {
      "tvg-id": "ChelseaTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/cc/chelsea_tv.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://c0.cdn.trinity-tv.net/stream/hujuv8xpr4gdugis2szd4rqrvpzip8iuwn2jwpt68wmvpmdz79qime8idwrxga95rnghp64hfimevyvrp6n7p3c52yg3rfsuhxe9u9az35ti8te625sxerfwaxr2cbefyau4tmfa4nwqvca6ckmtwv2=.m3u8"
      }
    },
    "Chicken": {
      "tvg-id": "ChickenSoupForTheSoul.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://3gz8cg829c.execute-api.us-west-2.amazonaws.com/prod/image-renderer/16x9/full/600/center/90/1be0cbf7-1ca2-4564-b6dd-3170128b70fb-large16x9_STIRR_Logo_1021_ChickenSoupfortheSoul_1920x1080_EPG.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/2C5P0JGUSj65s8KpeyIDcQ/master.m3u8"
      }
    },
    "Chive": {
      "tvg-id": "ChiveTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://yt3.ggpht.com/a-/AN66SAz6Ssqjkt5Zn__8q2-hhZEPzoma1h3_IshrpQ",
      "group-title": "Outdoor",
      "tvg-url": {"https://a.jsrdn.com/broadcast/4df1bf71c1/+0000/c.m3u8"}
    },
    "Choppertown": {
      "tvg-id": "Choppertown.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5f9c5eb78083e72bec0d0522",
      "group-title": "Auto",
      "tvg-url": {
        "https://linear-11.frequency.stream/dist/plex/11/hls/master/playlist.m3u8"
      }
    },
    "Christian": {
      "tvg-id": "ChristianYouthChannelCYC.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/PfFJy5E.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://media3.smc-host.com:1935/cycnow.com/smil:cyc.smil/playlist.m3u8"
      }
    },
    "Cine": {
      "tvg-id": "CineRomantico.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://odishaexpo.com/wp-content/uploads/2020/10/UP_Entertainment_Cine_Romantico_Logo.jpg",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokucineromantico/CDN/playlist.m3u8"
      }
    },
    "CineLife": {
      "tvg-id": "CineLife.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://play-lh.googleusercontent.com/TRj4zx_xl4QA3JO7DwqalxZwshmhxEzg0QzP1sT3Uv99p4izfj9S_yPZD4oVkFUxMNA",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://magselect-stirr.amagi.tv/playlist1080p.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36",
        "https://livecdn.fptplay.net/hda1/cinemax_hls.smil/playlist.m3u8"
      }
    },
    "Cinemax": {
      "tvg-id": "CinemaxEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://static.epg.best/ph/Cinemax.ph.png",
      "group-title": "Movies",
      "tvg-url": {
        "http://31.220.41.88:8081/live/us-cinemax.stream/playlist.m3u8"
      }
    },
    "Cinevault": {
      "tvg-id": "Cinevault80s.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzI4NjIyODdf/Cinevault-80s_700x700.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://gsn-cinevault-80s-1-us.vizio.wurl.tv/playlist.m3u8",
        "https://20995731713c495289784ab260b3c830.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Roku_CinevaultWesterns/playlist.m3u8"
      }
    },
    "Circle": {
      "tvg-id": "Circle.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://web.opendrive.com/api/v1/download/file.json/MF8yMjY2MjYwMTlf?inline",
      "group-title": "Entertainment",
      "tvg-url": {"https://circle-roku.amagi.tv/playlist.m3u8"}
    },
    "Citizen": {
      "tvg-id": "CitizenTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo":
          "https://kenyatv.tech/wp-content/uploads/2021/05/Webp.net-resizeimage.png",
      "group-title": "General",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://www.youtube.com/user/kenyacitizentv/live"
      }
    },
    "Civilized.": {
      "tvg-id": "Civilized.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Ge5SMLV.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c7e2531932c8368bdbfd87c/playlist.m3u8"
      }
    },
    "Classic": {
      "tvg-id": "ClassicCinema.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/tC4AePW.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://rpn1.bozztv.com/36bay2/gusa-classiccinema/mono.m3u8",
        "https://dai.google.com/linear/hls/event/wnQPvAN9QBODw9hP-H0rZA/master.m3u8",
        "https://broadcast.mytvtogo.net/classictv4u/classictv4u/playlist.m3u8"
      }
    },
    "Cloudflare": {
      "tvg-id": "CloudflareTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://blog-cloudflare-com-assets.storage.googleapis.com/2020/06/twitter-1-1.png",
      "group-title": "Education",
      "tvg-url": {"https://cloudflare.tv/hls/live.m3u8"}
    },
    "CNA": {
      "tvg-id": "CNA.sg",
      "tvg-country": "SG",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/CNA_new_logo.svg/225px-CNA_new_logo.svg.png",
      "group-title": "News",
      "tvg-url": {
        "https://d2e1asnsl7br7b.cloudfront.net/7782e205e72f43aeb4a48ec97f66ebbe/index.m3u8"
      }
    },
    "CNBC": {
      "tvg-id": "CNBC.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/cnbc.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://16live00.akamaized.net/CNBC/index.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148",
        "http://ott-cdn.ucom.am/s65/index.m3u8"
      }
    },
    "CNN": {
      "tvg-id": "CNNChile.cl",
      "tvg-country": "CL;US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/CNN_Chile_logo_2017.svg/300px-CNN_Chile_logo_2017.svg.png",
      "group-title": "News",
      "tvg-url": {
        "https://unlimited1-cl-movistar.dps.live/cnn/cnn.smil/playlist.m3u8",
        "http://209.91.213.10:8088/play/a014",
        "https://cnn-cnninternational-1-de.samsung.wurl.com/manifest/playlist.m3u8",
        "https://streaming.cnnphilippines.com/live/myStream/playlist.m3u8"
      }
    },
    "Cocoro": {
      "tvg-id": "Cocoro.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Z4hIjPn.jpg",
      "group-title": "Kids",
      "tvg-url": {
        "https://4ea7abcc97144832b81dc50c6e8d6330.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Roku_Cocoro/playlist.m3u8"
      }
    },
    "Comedy": {
      "tvg-id": "ComedyCentralEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Comedy_Central_2018.svg/360px-Comedy_Central_2018.svg.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d4947590ba40f75dc29c26b/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d4947590ba40f75dc29c26b&deviceLat=51.2993&deviceLon=9.4910&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=400&terminate=false&userId=",
        "https://uksono1-samsunguk.amagi.tv/playlist.m3u8",
        "https://cinedigm.vo.llnwd.net/conssui/amagi_hls_data_xumo-host-comedydynamics/CDN/master.m3u8"
      }
    },
    "Comet": {
      "tvg-id": "Comet.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/5/53/Comet_TV_Logo.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "http://content.uplynk.com/channel/3e45c6b5354a40f787e0b2aadb0f5d6a.m3u8"
      }
    },
    "Complex": {
      "tvg-id": "Complex.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/aBseWYR.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-complextv/CDN/playlist.m3u8"
      }
    },
    "CONtv": {
      "tvg-id": "CONtv.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5fa07ec3fc8cbc647f034483",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://contv-junction.cinedigm.com/ingest/playlist.m3u8",
        "https://contvanime-littlstar.cinedigm.com/ingest/master.m3u8"
      }
    },
    "Cooking": {
      "tvg-id": "CookingPanda.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Z6pDpzl.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=46"
      }
    },
    "Cornerstone": {
      "tvg-id": "CornerstoneTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/cV8FKR9.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://cdn.media9.truegod.tv/ctvnlive/smil:ctvn.smil/playlist.m3u8"
      }
    },
    "Court": {
      "tvg-id": "CourtTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/60526b849849524498245b78",
      "group-title": "Documentary",
      "tvg-url": {
        "https://cdn-katz-networks-01.vos360.video/Content/HLS/Live/channel(courttv)/index.m3u8",
        "https://5e6cea03e25b6.streamlock.net/live/QVC.stream/playlist.m3u8"
      }
    },
    "CPAC": {
      "tvg-id": "CPACOttawa.ca",
      "tvg-country": "CA",
      "tvg-language": "English;French",
      "tvg-logo": "https://i.imgur.com/5ym6eJS.png",
      "group-title": "Legislative",
      "tvg-url": {
        "https://d7z3qjdsxbwoq.cloudfront.net/groupa/live/f9809cea-1e07-47cd-a94d-2ddd3e1351db/live.isml/.m3u8"
      }
    },
    "Crackle": {
      "tvg-id": "Crackle.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjUyNDQ4NjZf/Crackle_365x365.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://crackle-plex.amagi.tv/playlist.m3u8",
        "http://crackle-xumo.amagi.tv/playlist.m3u8"
      }
    },
    "Craft": {
      "tvg-id": "CraftStoreTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://thecraftstore.com/Styles/craft_store_logo.svg",
      "group-title": "Shop",
      "tvg-url": {
        "https://live-hochanda.simplestreamcdn.com/hochanda/live.m3u8"
      }
    },
    "Crime": {
      "tvg-id": "Crime360.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/fYXChY0.png",
      "group-title": "Documentary",
      "tvg-url": {
        "https://aenetworks-crime360-1.samsung.wurl.com/manifest/playlist.m3u8",
        "https://crimetimebamca-roku.amagi.tv/playlist.m3u8"
      }
    },
    "Cruise1st": {
      "tvg-id": "Cruise1stTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/q50kqOG.jpg",
      "group-title": "Shop",
      "tvg-url": {
        "https://cdnamd-hls-globecast.akamaized.net/live/ramdisk/cruise_tv/hls_video/index.m3u8"
      }
    },
    "CSat": {
      "tvg-id": "CSatTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/cigpFzt.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://media.smc-host.com:1935/csat.tv/smil:csat.smil/playlist.m3u8"
      }
    },
    "CSPAN1": {
      "tvg-id": "CSPAN.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.dailydot.com/wp-content/uploads/2020/08/CSpan.png",
      "group-title": "Legislative",
      "tvg-url": {"http://trn03.tulix.tv/teleup-cspan/playlist.m3u8"}
    },
    "CT-N": {
      "tvg-id": "CTNCourtFeed.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/He6Ugfn.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://video.ct-n.com/live/ctnSupreme/playlist_DVR.m3u8",
        "http://video.ct-n.com/live/web2stream/playlist.m3u8",
        "http://video.ct-n.com/live/ctnstream/playlist_DVR.m3u8"
      }
    },
    "CTN": {
      "tvg-id": "WFGCDT1.us",
      "tvg-country": "US-FL",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/ctn.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://hls1.livestreamingcdn.com:1935/livecdn631/myStream.sdp/playlist.m3u8",
        "http://admin.ottdemo.rrsat.com:1935/ctntv/ctntv2/playlist.m3u8"
      }
    },
    "CTV": {
      "tvg-id": "CTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/nfcjHAW.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://pe-fa-lp02a.9c9media.com/live/News1Digi/p/hls/00000201/38ef78f479b07aa0/index/0c6a10a2/live/stream/h264/v1/3500000/manifest.m3u8"
      }
    },
    "CW": {
      "tvg-id": "CWSeed.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/PZrtfPb.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://cwseedlive.cwtv.com/ingest/playlist.m3u8"}
    },
    "Dabl": {
      "tvg-id": "Dabl.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/Tapiosinn/tv-logos/master/countries/united-states/dabl-us.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "http://dai.google.com/linear/hls/event/oIKcyC8QThaW4F2KeB-Tdw/master.m3u8"
      }
    },
    "Dallas": {
      "tvg-id": "DallasCowboysCheerleaders.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5d40855b3fb0855028c99b6f/colorLogoPNG.png",
      "group-title": "Documentary",
      "tvg-url": {
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d40855b3fb0855028c99b6f/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY"
      }
    },
    "DC": {
      "tvg-id": "DCCouncilChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ZHST0G2.png",
      "group-title": "Legislative",
      "tvg-url": {
        "https://video.oct.dc.gov/out/u/15_12.m3u8",
        "http://americaneagle-lh.akamaihd.net/i/AEF_DC1@31049/master.m3u8"
      }
    },
    "Deal": {
      "tvg-id": "DealorNoDeal.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5e9debf8c881310007d7bde1/colorLogoPNG.png",
      "group-title": "Series",
      "tvg-url": {
        "https://endemol-dealornodeal-1.sinclair.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Degrassi": {
      "tvg-id": "DegrassiTheNextGeneration.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/mRBQKp3.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dhx-degrassi-1-us.samsung.wurl.tv/playlist.m3u8",
        "http://dhx-degrassi-2-ca.samsung.wurl.tv/playlist.m3u8"
      }
    },
    "Demand": {
      "tvg-id": "DemandAfrica.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5f061242a7951e00075d7413/colorLogoPNG.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://demandafrica-klowdtv.amagi.tv/playlist.m3u8",
        "https://demandafrica-samsungmexico.amagi.tv/playlist.m3u8"
      }
    },
    "Dharti": {
      "tvg-id": "DhartiTV.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/dd/dharti_tv_pk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamone.simpaisa.com:8443/pitvlive1/dhartitv.smil/playlist.m3u8"
      }
    },
    "Dick": {
      "tvg-id": "DickCavett.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://static.wikia.nocookie.net/logopedia/images/2/2e/Dick_Cavett_Show_logo.jpg",
      "group-title": "Classic",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/-NacIpMDTZ2y1bhkJN96Vg/master.m3u8"
      }
    },
    "District": {
      "tvg-id": "DistrictofColumbiaNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/GcSXd5s.png",
      "group-title": "Legislative",
      "tvg-url": {"https://video.oct.dc.gov/out/u/DCN.m3u8"}
    },
    "Ditty": {
      "tvg-id": "DittyTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/p5rREUo.png",
      "group-title": "Undefined",
      "tvg-url": {"https://azroe0x-lh.akamaihd.net/i/test_1@775856/master.m3u8"}
    },
    "Divine": {
      "tvg-id": "DivineVision.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/wjCFvLR.png",
      "group-title": "Religious",
      "tvg-url": {"https://divineplayout-us2.tulix.tv/live/Stream1/.m3u8"}
    },
    "Docurama": {
      "tvg-id": "Docurama.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/5X5Z5eg.png",
      "group-title": "Documentary",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxdocurama/CDN/playlist.m3u8"
      }
    },
    "Dove": {
      "tvg-id": "DoveChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FVWqYQG.png",
      "group-title": "Family",
      "tvg-url": {
        "https://cinedigm.vo.llnwd.net/conssui/amagi_hls_data_xumo1234A-dovenow/CDN/master.m3u8"
      }
    },
    "Dr.": {
      "tvg-id": "DrGeneScott.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FppLahc.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "https://wescottcchls-lh.akamaihd.net/i/wcc_wowlivehls@24607/master.m3u8"
      }
    },
    "Drama": {
      "tvg-id": "DramaLife.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.samsung.com/us/smg/content/dam/s7/home/televisions-and-home-theater/tvs/tvplus/all-channels/10062020/Drama_Life_190x190.png?raw",
      "group-title": "Movies",
      "tvg-url": {
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f24662bebe0f0000767de32/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY"
      }
    },
    "DryBar": {
      "tvg-id": "DryBarComedy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/l61qxIE.jpg",
      "group-title": "Comedy",
      "tvg-url": {"https://a.jsrdn.com/broadcast/e29bdbbbf3/+0000/c.m3u8"}
    },
    "Dubai": {
      "tvg-id": "DubaiOne.ae",
      "tvg-country": "ARAB;MAGHREB",
      "tvg-language": "Arabic;English",
      "tvg-logo": "https://i.imgur.com/WjJ8MHC.png",
      "group-title": "General",
      "tvg-url": {
        "http://dminnvll.cdn.mangomolo.com/dubaione/smil:dubaione.stream.smil/playlist.m3u8"
      }
    },
    "Duck": {
      "tvg-id": "DuckTV.sk",
      "tvg-country": "SK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Qw8x6Os.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://mmm-ducktv-4-no.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Dust": {
      "tvg-id": "Dust.us",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FxYhME9.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/xuMJ1vhQQDGjEWlxK9Qh4w/master.m3u8"
      }
    },
    "DUSTx": {
      "tvg-id": "DUSTx.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9Xc7Q7S.jpg",
      "group-title": "Movies",
      "tvg-url": {"https://dust.sinclair.wurl.com/manifest/playlist.m3u8"}
    },
    "DW": {
      "tvg-id": "DWEnglish.de",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/A1xzjOI.png",
      "group-title": "News",
      "tvg-url": {
        "https://dwamdstream102.akamaized.net/hls/live/2015525/dwstream102/index.m3u8"
      }
    },
    "Ebru": {
      "tvg-id": "EbruTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo":
          "https://kenyatv.tech/wp-content/uploads/2020/11/download-1.jpg",
      "group-title": "General",
      "tvg-url": {"https://tvsn-i.akamaihd.net/hls/live/261837/tvsn/tvsn.m3u8"}
    },
    "EDGESport": {
      "tvg-id": "EDGESport.us",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzA3OTUzMjhf/EdgeSport_400x400.png",
      "group-title": "Sports",
      "tvg-url": {"https://edgesports-sportstribal.amagi.tv/playlist.m3u8"}
    },
    "EET": {
      "tvg-id": "EETTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/k0Hzr3X.png",
      "group-title": "Undefined",
      "tvg-url": {"https://eu.streamjo.com/eetlive/eettv.m3u8"}
    },
    "Electric": {
      "tvg-id": "ElectricNow.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjgzOTI0NjRf/ElectricNow_300x300.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-electricnow/CDN/master.m3u8"
      }
    },
    "Eman": {
      "tvg-id": "EmanChannel.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/NWljgKa.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://ap02.iqplay.tv:8082/iqb8002/3m9n/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148",
        "http://ott-cdn.ucom.am/s37/index.m3u8"
      }
    },
    "Entertainment": {
      "tvg-id": "EntertainmentTonight.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/TXamgdB.png",
      "group-title": "News",
      "tvg-url": {
        "https://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest.m3u8"
      }
    },
    "Entrepreneur": {
      "tvg-id": "Entrepreneur.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Wb4WPPK.jpg",
      "group-title": "Series",
      "tvg-url": {"https://a.jsrdn.com/broadcast/7582ed85f7/+0000/c.m3u8"}
    },
    "eScapes": {
      "tvg-id": "eScapesXUMO.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lb0ddYv.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-escapes/CDN/master.m3u8"
      }
    },
    "ET": {
      "tvg-id": "ETLive.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5dc0c78281eddb0009a02d5e/colorLogoPNG.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/xrVrJYTmTfitfXBQfeZByQ/master.m3u8",
        "https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/master.m3u8"
      }
    },
    "Eurodance": {
      "tvg-id": "Eurodance90HD.ru",
      "tvg-country": "RU",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Music",
      "tvg-url": {"https://eurodance90.catcast.tv/content/36987/index.m3u8"}
    },
    "Everyday": {
      "tvg-id": "EverydayHeroes.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Iam3ol3.png",
      "group-title": "Undefined",
      "tvg-url": {"https://a.jsrdn.com/broadcast/7b1451fa52/+0000/c.m3u8"}
    },
    "EWTN": {
      "tvg-id": "EWTNAsiaPacific.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjQyNTQ1MzNf/EWTN_450x450.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://cdn3.wowza.com/1/QmVNUVhTNTZSS3Uz/YWQ0aHpi/hls/live/playlist.m3u8",
        "https://cdn3.wowza.com/1/YW5wSWZiRGd2eFlU/bGV0aVBq/hls/live/playlist.m3u8",
        "https://cdn3.wowza.com/1/T2NXeHF6UGlGbHY3/WFluRldQ/hls/live/playlist.m3u8"
      }
    },
    "Expo": {
      "tvg-id": "ExpoChannel.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/2KzCShW.png",
      "group-title": "Shop",
      "tvg-url": {"https://tvsn-i.akamaihd.net/hls/live/261837/expo/expo.m3u8"}
    },
    "External": {
      "tvg-id": "ExternalOttera.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://otteravision-tg.ottera.tv/live/master.m3u8?channel=tg_tg_us"
      }
    },
    "Extrema": {
      "tvg-id": "ExtremaTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.unored247.com/bill/templates/smartlinehost/html/images/extrema_client_logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://livestreamcdn.net:1935/ExtremaTV/ExtremaTV/playlist.m3u8"
      }
    },
    "FailArmy": {
      "tvg-id": "FailArmy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/554158e864526b29254ff105/colorLogoPNG.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxfailarmy/CDN/playlist.m3u8"
      }
    },
    "Fashion": {
      "tvg-id": "FashionTVEurope.fr",
      "tvg-country": "EUR",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Fashion_TV_logo.svg/240px-Fashion_TV_logo.svg.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://fashiontv-fashiontv-2-es.samsung.wurl.com/manifest/playlist.m3u8",
        "https://fash2043.cloudycdn.services/slive/ftv_ftv_gmt_-5_qko_43090_default_1225_hls.smil/playlist.m3u8",
        "https://fash1043.cloudycdn.services/slive/ftv_pg13_adaptive.smil/playlist.m3u8",
        "http://fash1043.cloudycdn.services/slive/ftv_pg16_adaptive.smil/media.m3u8",
        "https://fash2043.cloudycdn.services/slive/ftv_ftv_asia_ada_xiv_42149_default_137_hls.smil/playlist.m3u8",
        "https://fash1043.cloudycdn.services/slive/ftv_ftv_pg13_zw9_27065_ftv_pg13_sam_197_hls.smil/playlist.m3u8",
        "https://fash2043.cloudycdn.services/slive/ftv_ftv_4k_hevc_73d_42080_default_466_hls.smil/playlist.m3u8"
      }
    },
    "FashionTV": {
      "tvg-id": "FashionTVCzechSlovak.fr",
      "tvg-country": "CZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/zejADLy.png",
      "group-title": "Lifestyle",
      "tvg-url": {"http://lb.streaming.sk/fashiontv/stream/playlist.m3u8"}
    },
    "Fido": {
      "tvg-id": "FidoTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/kvdqP3H.jpg",
      "group-title": "Entertainment",
      "tvg-url": {"http://n1.klowdtv.net/live3/fido_720p/chunks.m3u8"}
    },
    "Fight": {
      "tvg-id": "FightNetwork.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo":
          "https://zap2it.tmsimg.com/h3/NowShowing/81448/s81448_h3_aa.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d12a2vxqkkh1bo.cloudfront.net/hls/1080p/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148",
        "http://ott-cdn.ucom.am/s86/index.m3u8"
      }
    },
    "Fighting": {
      "tvg-id": "FightingSpirit.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OeVsflz.png",
      "group-title": "Undefined",
      "tvg-url": {"https://a.jsrdn.com/broadcast/47cff5378f/+0000/c.m3u8"}
    },
    "Fiji": {
      "tvg-id": "FijiTV.fj",
      "tvg-country": "FJ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/z4AuQtX.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://api.new.livestream.com/accounts/19514369/events/6947821/live.m3u8"
      }
    },
    "Film": {
      "tvg-id": "FilmHub.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/AQkhR58.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxfilmhub/CDN/playlist.m3u8"
      }
    },
    "FilmRise": {
      "tvg-id": "FilmRiseAction.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/FilmRise-Action_442x442.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokufilmriseaction/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-filmriseclassictv/CDN/playlist.m3u8",
        "http://dai2.xumo.com/xumocdn/p=roku/amagi_hls_data_xumo1212A-filmrisefamily/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuforensicfiles/CDN/master.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxunsolvedmysteries/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-filmrisefreemovies/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxfilmrisefreemovies/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-filmrisecooking/CDN/playlist.m3u8",
        "http://dai2.xumo.com/xumocdn/p=roku/amagi_hls_data_xumo1212A-filmrisecrime/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokufilmrisesci-fi/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-filmrisecrime/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokufilmrisewestern/CDN/playlist.m3u8"
      }
    },
    "Fireman": {
      "tvg-id": "FiremanSam.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/umyEio1.jpg",
      "group-title": "Kids",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokufiremansam/CDN/playlist.m3u8"
      }
    },
    "Fireplace": {
      "tvg-id": "FireplaceLounge.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/1VZZCZU.jpg",
      "group-title": "Relax",
      "tvg-url": {"https://a.jsrdn.com/broadcast/aee08372e5/+0000/c.m3u8"}
    },
    "Firstlight": {
      "tvg-id": "Firstlight.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/2TKL6BX.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://uni01rtmp.tulix.tv/firstlight/firstlight.smil/playlist.m3u8"
      }
    },
    "Fish": {
      "tvg-id": "FishTank.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/L5JDAkh.png",
      "group-title": "Relax",
      "tvg-url": {"https://a.jsrdn.com/broadcast/8b43a16c1e/+0000/c.m3u8"}
    },
    "Fite": {
      "tvg-id": "Fite.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images-na.ssl-images-amazon.com/images/I/21QWq2v0DGL.png",
      "group-title": "Sports",
      "tvg-url": {"https://cdn-cf.fite.tv/linear/fite247/playlist.m3u8"}
    },
    "Folk": {
      "tvg-id": "FolkTVEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/hV46zMX.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://584b0aa350b92.streamlock.net/folk-tv/myStream.sdp/playlist.m3u8"
      }
    },
    "Food": {
      "tvg-id": "Food52.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/BVrMQch.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://cinedigm.vo.llnwd.net/conssui/amagi_hls_data_xumo1212A-redboxfood52A/CDN/master.m3u8"
      }
    },
    "Football": {
      "tvg-id": "FootballDailyXUMO.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/VJyUVQ2.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2-xumo.fubo.tv/amagi_hls_data_xumo1212A-footballdaily/CDN/master.m3u8"
      }
    },
    "Fox": {
      "tvg-id": "WSVNDT1.us",
      "tvg-country": "US-FL",
      "tvg-language": "English",
      "tvg-logo":
          "https://cdn.tvpassport.com/image/station/100x100/foxcable.png",
      "group-title": "Undefined",
      "tvg-url": {"http://38.127.211.18/live/c2eds/FOX/HLS/index.m3u8"}
    },
    "FOX": {
      "tvg-id": "WWCPDT1.us",
      "tvg-country": "US-PA",
      "tvg-language": "English",
      "tvg-logo":
          "https://cdn.tvpassport.com/image/station/100x100/foxcable.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://trn03.tulix.tv/teleup-fox-wpmt-new1/playlist.m3u8",
        "http://199.66.95.242/1/1172/index.m3u8?token=test",
        "http://51.161.118.146:8080/ISG03_FOX_LOS_ANGELES_CA_KTTV/video.m3u8",
        "http://trn03.tulix.tv/AsEAeOtIxz/playlist.m3u8",
        "https://fox-foxnewsnow-samsungus.amagi.tv/playlist.m3u8",
        "https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/master.m3u8",
        "http://51.161.118.146:8080/ISG03_FOX_SAN_FRANCISCO_CA_KTVU/video.m3u8",
        "http://fox-foxsoul-roku.amagi.tv/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-foxweather-xumo/CDN/master.m3u8"
      }
    },
    "France": {
      "tvg-id": "France24English.fr",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/8/8a/France24.png",
      "group-title": "News",
      "tvg-url": {
        "http://f24hls-i.akamaihd.net/hls/live/221147/F24_EN_HI_HLS/master.m3u8"
      }
    },
    "Freebie": {
      "tvg-id": "FreebieTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d1h1d6qoy9vnra.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/Freebie-Plex/187.m3u8"
      }
    },
    "FrightFlix": {
      "tvg-id": "FrightFlix.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/rgNQYAl.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://content.uplynk.com/channel/4b3fda1ff2c24556bc2c6034307d117d.m3u8"
      }
    },
    "FTF": {
      "tvg-id": "FTF.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/IRWahfD.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://eleven-rebroadcast-samsung.roku.wurl.com/manifest/playlist.m3u8",
        "https://elevensports-uk.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Fuel": {
      "tvg-id": "FuelTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/XboGSjX.png",
      "group-title": "Sports",
      "tvg-url": {
        "http://fueltv-fueltv-14-nl.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Fun": {
      "tvg-id": "FunRoads.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://funroads.tv/wp-content/uploads/fun-roads-header-horizontal-1.png",
      "group-title": "Travel",
      "tvg-url": {"http://104.143.4.5:2080/funroads.m3u8"}
    },
    "Funny": {
      "tvg-id": "FunnyorDie.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/PMMsywm.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokufunnyordie/CDN/master.m3u8"
      }
    },
    "Fuse": {
      "tvg-id": "FuseEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/mijRpPQ.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxfuse/CDN/playlist.m3u8"
      }
    },
    "Futurism": {
      "tvg-id": "Futurism.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/DX7wYuN.png",
      "group-title": "News",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/YakHdnr_RpyszducVuHOpQ/master.m3u8"
      }
    },
    "FX": {
      "tvg-id": "FXPeru.us",
      "tvg-country": "PE",
      "tvg-language": "English;Spanish",
      "tvg-logo": "https://i.imgur.com/E32ISMV.png",
      "group-title": "Entertainment",
      "tvg-url": {"http://209.91.213.10:8088/play/a01z"}
    },
    "Galveston": {
      "tvg-id": "GalvestonCountyTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://img.new.livestream.com/accounts/000000000141794a/1769dc58-4a38-4815-9cb7-feb1140db5ec_170x170.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream.swagit.com/live-edge/galvestontx/smil:hd-16x9-1-b/playlist.m3u8"
      }
    },
    "Galxy": {
      "tvg-id": "GalxyTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/oPnzAPC.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://content.uplynk.com/channel/f467430e4a8e49a59ff3183cf51092b2.m3u8"
      }
    },
    "Game": {
      "tvg-id": "GameShowNetworkEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.gameshownetwork.com/storage/app/media/2020/Navigation/gsn_logo.jpg",
      "group-title": "Entertainment",
      "tvg-url": {"http://n1.klowdtv.net/live2/gsn_720p/chunks.m3u8"}
    },
    "Ganj": {
      "tvg-id": "GanjeHozourTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/pHZGx5L.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://topfi.ios.internapcdn.net/topfi/live_1/Test/Test.m3u8"
      }
    },
    "GB": {
      "tvg-id": "GBNews.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/gg/gb-news-uk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://live-gbnews.simplestreamcdn.com/gbnews/gbnews/bitrate1.isml/live.m3u8"
      }
    },
    "GBS": {
      "tvg-id": "GBSTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo":
          "https://kenyatv.tech/wp-content/uploads/2021/04/GBS-TV-1.jpg",
      "group-title": "General",
      "tvg-url": {
        "https://goliveafrica.media:9998/live/6045ccbac3484/index.m3u8"
      }
    },
    "Gems": {
      "tvg-id": "GemsTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9fJlCNW.png",
      "group-title": "Shop",
      "tvg-url": {
        "http://57d6b85685bb8.streamlock.net:1935/abrgemporiaukgfx/livestream_360p/index.m3u8"
      }
    },
    "GFN": {
      "tvg-id": "GFNTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/V5CTsI0.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d3jxchypmk8fja.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/GFNTV-Plex/169.m3u8"
      }
    },
    "Glamour": {
      "tvg-id": "Glamour.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/o3jWnc5.jpg",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxglamour/CDN/playlist.m3u8"
      }
    },
    "Glendale": {
      "tvg-id": "Glendale11AZ.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Zxb1Xyj.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream.swagit.com/live-edge/glendaleaz/smil:std-4x3-1-a/playlist.m3u8"
      }
    },
    "Glewed": {
      "tvg-id": "GlewedTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/W4Bx9pG.jpg",
      "group-title": "General",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/ChWV1GupQOWE92uG4DvbkQ/master.m3u8"
      }
    },
    "Global": {
      "tvg-id": "GlobalFashionChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/s4eGYEP.jpg",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://vcngfcssai.teleosmedia.com/linear/globalfashionchannel/globalfashionchannel/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokugottalentglobal/CDN/playlist.m3u8"
      }
    },
    "Glory": {
      "tvg-id": "GloryKickboxing.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/AQbc1ER.jpg",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxglorykickboxing/CDN/playlist.m3u8"
      }
    },
    "Go": {
      "tvg-id": "GoTraveler.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzE5OTIyMjBf/Redbox_512x512.png",
      "group-title": "Travel",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxgotraveler/CDN/playlist.m3u8"
      }
    },
    "God": {
      "tvg-id": "GodTVUK.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://ocdn.eu/program-tv-transforms/1/dXCktlEYWRtL2IzNzk5OGMwYTExODlhNWNmYzA4ZWY5OTQwNTllNTQ4N2Q3N2U2Y2RkMWVlMTIxMGU4NTRmYjdiYzllNmNmNjKSlQJkAMLDlQIAKMLD",
      "group-title": "Religious",
      "tvg-url": {
        "https://zypelive-lh.akamaihd.net/i/default_1@745545/master.m3u8",
        "https://zypelive-lh.akamaihd.net/i/default_1@710958/master.m3u8"
      }
    },
    "Golden": {
      "tvg-id": "GoldenTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/kAYiaJS.png",
      "group-title": "Classic",
      "tvg-url": {"https://rpn1.bozztv.com/36bay2/gusa-goldentv/mono.m3u8"}
    },
    "GoodLife": {
      "tvg-id": "GoodLife45.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/t9xHfSV.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://1-fss29-s0.streamhoster.com/lv_goodlife45f1/broadcast1/playlist.m3u8"
      }
    },
    "Gospel": {
      "tvg-id": "GospelTruthTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/7vQrPvk.png",
      "group-title": "Religious",
      "tvg-url": {"https://bstna.tulix.tv/live/bs_2m/index.m3u8"}
    },
    "GQ": {
      "tvg-id": "GQ.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/tprQSxT.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxgq/CDN/playlist.m3u8"
      }
    },
    "Gravitas": {
      "tvg-id": "GravitasMovies.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/H2hD4vT.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxgravitas/CDN/playlist.m3u8"
      }
    },
    "Great": {
      "tvg-id": "GreatCommissionTVGCTV.ph",
      "tvg-country": "PH",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"http://45.32.115.103/live/livestream/index.m3u8"}
    },
    "grvty": {
      "tvg-id": "grvty.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/6065639a7ec4e2633f0c7d83",
      "group-title": "Sports",
      "tvg-url": {"https://d37j5jg7ob6kji.cloudfront.net/index.m3u8"}
    },
    "Gusto": {
      "tvg-id": "GustoTV.us",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ygVGi3s.png",
      "group-title": "Cooking",
      "tvg-url": {"https://d3cajslujfq92p.cloudfront.net/playlist.m3u8"}
    },
    "Hallmark": {
      "tvg-id": "HallmarkMoviesMore.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/JMn9sxk.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuhallmark/CDN/playlist.m3u8"
      }
    },
    "HappyKids": {
      "tvg-id": "HappyKids.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/7IMycQ7.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://happykids-roku.amagi.tv/playlist.m3u8",
        "https://happykidsjunior-vizio.amagi.tv/playlist.m3u8"
      }
    },
    "Hard": {
      "tvg-id": "HardKnocks.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ixAkq26.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d3uyzhwvmemdyf.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/HardKnocks-PLEX/121.m3u8",
        "https://d3uyzhwvmemdyf.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/HardKnocks-SportsTribal/121.m3u8"
      }
    },
    "Harley": {
      "tvg-id": "HarleyDavidsonFactoryTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/DQOp8Ft.png",
      "group-title": "Auto",
      "tvg-url": {
        "https://hdtv.prod2.ioio.tv/broker/play/e529407a-cb61-45ce-a9ad-94f0ad5e0ad9.m3u8",
        "https://hdtv.prod2.ioio.tv/broker/play/de245a96-516c-413d-81e9-419c05bbc6a7.m3u8",
        "https://hdtv.prod2.ioio.tv/broker/play/d4b0111a-3dcb-46fb-b2bb-1c27eca5df35.m3u8"
      }
    },
    "Haunt": {
      "tvg-id": "HauntTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/jCaWSFK.png",
      "group-title": "Series",
      "tvg-url": {"https://haunttv-roku.amagi.tv/playlist.m3u8"}
    },
    "HBO": {
      "tvg-id": "HBOAsia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.now-tv.com/shares/channelPreview/img/en_hk/color/ch115_160_115",
      "group-title": "Undefined",
      "tvg-url": {
        "https://vips-livecdn.fptplay.net/hda1/hbo_vhls.smil/chunklist.m3u8"
      }
    },
    "Hello": {
      "tvg-id": "Hello.my",
      "tvg-country": "MY",
      "tvg-language": "English",
      "tvg-logo":
          "https://astrocontent.s3.amazonaws.com/Images/ChannelLogo/Pos/702_300.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://agsplayback01.astro.com.my/CH1/master_HELLOGOSHOP6.m3u8"
      }
    },
    "High": {
      "tvg-id": "HighTimes.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/TaeeQnn.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c7e2503932c8368bdbfd875/playlist.m3u8"
      }
    },
    "Himlen": {
      "tvg-id": "HimlenTV7.fi",
      "tvg-country": "FI",
      "tvg-language": "English;Swedish",
      "tvg-logo": "https://i.imgur.com/pW6pPFF.jpg",
      "group-title": "Religious",
      "tvg-url": {"https://vod.tv7.fi/tv7-se/smil:tv7-se.smil/playlist.m3u8"}
    },
    "History": {
      "tvg-id": "HistoryEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ynZiWvC.jpg",
      "group-title": "Documentary",
      "tvg-url": {
        "https://bk7l2w4nlx53-hls-live.5centscdn.com/HISTORY/961ac1c875f5884f31bdd177365ef1e3.sdp/playlist.m3u8"
      }
    },
    "HLN": {
      "tvg-id": "HLN.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://yt3.ggpht.com/ia9B0dcvykqfeoPpckovKdWyc7DuwlaejOKha2f6-oNfVdUdkXw4dWBIPUArMEqNljg5uvL6AiU",
      "group-title": "News",
      "tvg-url": {
        "https://tve-live-lln.warnermediacdn.com/hls/live/586496/cnngo/hln/VIDEO_0_3564000.m3u8"
      }
    },
    "HNC": {
      "tvg-id": "HNCFree.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/xXr4Cnq.png",
      "group-title": "Undefined",
      "tvg-url": {"https://hncfree-vizio.amagi.tv/playlist.m3u8"}
    },
    "Honor": {
      "tvg-id": "HonorTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/caGRikb.png",
      "group-title": "Classic",
      "tvg-url": {"https://a.jsrdn.com/broadcast/d5b48/+0000/c.m3u8"}
    },
    "Hope": {
      "tvg-id": "HopeChannelInternational.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/pLeCUEV.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://hcintlinc.mmdlive.lldns.net/hcintlinc/60f14a7fec64454e90712421a46ac6f1/manifest.m3u8",
        "https://hcfilipino.mmdlive.lldns.net/hcfilipino/f6e775755f2647159e0adefe01a44a0e/manifest.m3u8"
      }
    },
    "Horrify": {
      "tvg-id": "Horrify.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/NCbpYa4.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://olympusamagi.pc.cdn.bitgravity.com/Horrify-roku/master.m3u8"
      }
    },
    "Horse": {
      "tvg-id": "HorseCountryTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://horseandcountry.tv/wp-content/themes/hctv/img/hc_logo_header.png",
      "group-title": "Outdoor",
      "tvg-url": {
        "https://hnc-free-viewlift.amagi.tv/HNC_AUSTRALIA.m3u8",
        "https://hncfree-samsungau.amagi.tv/playlist.m3u8",
        "https://hncfree-samsung-uk.amagi.tv/playlist.m3u8",
        "https://uplynkcontent.sinclairstoryline.com/channel/26c7a77fd6ed453da6846a16ad0625d9.m3u8"
      }
    },
    "HSN": {
      "tvg-id": "HSN2.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://live-tv-channels.org/pt-data/uploads/logo/us-hsn-2.jpg",
      "group-title": "Shop",
      "tvg-url": {
        "https://hsn2html5-lh.akamaihd.net/i/hsn2html5_01@13178/master.m3u8",
        "https://hsn.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "HTV": {
      "tvg-id": "HTV1HoustonTelevision.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/zvj1boM.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream.swagit.com/live-edge/houstontx/smil:hd-16x9-2-a/playlist.m3u8",
        "https://stream.swagit.com/live-edge/houstontx/smil:hd-16x9-2-b/playlist.m3u8"
      }
    },
    "Humor": {
      "tvg-id": "HumorMill.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lYqcF1P.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://damkf751d85s1.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/HumorMill-DistroTV/152.m3u8"
      }
    },
    "Hungry": {
      "tvg-id": "Hungry.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/MIUDYh0.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxhungry/CDN/playlist.m3u8"
      }
    },
    "Hunt": {
      "tvg-id": "HuntChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/DkvWWbE.png",
      "group-title": "Outdoor",
      "tvg-url": {"https://1111296894.rsc.cdn77.org/LS-ATL-56868-1/index.m3u8"}
    },
    "IBN": {
      "tvg-id": "IBNTV.tz",
      "tvg-country": "TZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Wf2BlTG.png",
      "group-title": "Religious",
      "tvg-url": {"http://138.68.138.119:8080/low/5a8993709ea19/index.m3u8"}
    },
    "Ideal": {
      "tvg-id": "IdealWorldTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.idealworld.tv/gb/common/images/Cms/Header/iw-square.jpg",
      "group-title": "Shop",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://www.youtube.com/c/IdealworldTvShopping/live"
      }
    },
    "IDG": {
      "tvg-id": "IDG.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/M0omWCW.jpg",
      "group-title": "News",
      "tvg-url": {"https://a.jsrdn.com/broadcast/529a360c04/+0000/c.m3u8"}
    },
    "IFC": {
      "tvg-id": "IFCEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.directv.com/images/logos/channels/dark/large/256.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://bcovlive-a.akamaihd.net/070ffdaa203f439cacbf0d45a1ddb356/us-east-1/6240731308001/playlist.m3u8",
        "https://amc-ifc-films-picks-1.imdbtv.wurl.com/manifest/playlist.m3u8"
      }
    },
    "iFood.TV": {
      "tvg-id": "iFoodTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/GnmHLNB.png",
      "group-title": "Cooking",
      "tvg-url": {"https://ft-ifood-roku.amagi.tv/playlist.m3u8"}
    },
    "IGN": {
      "tvg-id": "IGN.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5f8ecee24576bc0007a13b79/colorLogoPNG.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://ign-plex.amagi.tv/hls/amagi_hls_data_ignAAAAAA-ign-plexA/CDN/playlist.m3u8"
      }
    },
    "IIPC": {
      "tvg-id": "IIPCTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/G7hGk8y.png",
      "group-title": "Religious",
      "tvg-url": {"https://uni10rtmp.tulix.tv/iipctv/iipctv.smil/playlist.m3u8"}
    },
    "Imam": {
      "tvg-id": "ImamHusseinTV3English.iq",
      "tvg-country": "IQ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ocyh4DD.jpg",
      "group-title": "Religious",
      "tvg-url": {"https://live.imamhossaintv.com/live/ih3.m3u8"}
    },
    "IMPACT!": {
      "tvg-id": "ImpactWrestling.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/59b722526996084038c01e1b/colorLogoPNG.png",
      "group-title": "Sports",
      "tvg-url": {"https://d2p372oxiwmcn1.cloudfront.net/hls/main.m3u8"}
    },
    "INC": {
      "tvg-id": "INCTV.ph",
      "tvg-country": "PH",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FcLAaMT.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://churchrus2-lh.akamaihd.net/i/coctesting_1@57550/master.m3u8"
      }
    },
    "InfoWars": {
      "tvg-id": "InfoWars.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/MBsQp1e.png",
      "group-title": "News",
      "tvg-url": {
        "http://wpc.9ec1.edgecastcdn.net/249EC1/infowarshd-edgecast/hd720.m3u8"
      }
    },
    "Insight": {
      "tvg-id": "InsightTV.nl",
      "tvg-country": "NL",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5f06bc60e236570007793f31/colorLogoPNG.png",
      "group-title": "Sports",
      "tvg-url": {"https://insighttv-vizio.amagi.tv/playlist.m3u8"}
    },
    "Inspiration": {
      "tvg-id": "InspirationTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/CQnD7yU.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://inspnetworks-lh.akamaihd.net/i/insp_2@393793/master.m3u8"
      }
    },
    "InTrouble": {
      "tvg-id": "InTrouble.nl",
      "tvg-country": "NL",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/gKhDcQY.png",
      "group-title": "Undefined",
      "tvg-url": {"https://introuble-rakuten.amagi.tv/playlist.m3u8"}
    },
    "InWild": {
      "tvg-id": "InWild.nl",
      "tvg-country": "NL",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/VSiG39E.png",
      "group-title": "Undefined",
      "tvg-url": {"https://inwild-samsung-uk.amagi.tv/playlist.m3u8"}
    },
    "InWonder": {
      "tvg-id": "InWonder.nl",
      "tvg-country": "NL",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/YqF4usD.png",
      "group-title": "Undefined",
      "tvg-url": {"https://inwonder-eng-rakuten.amagi.tv/playlist.m3u8"}
    },
    "Iqra": {
      "tvg-id": "IqraBangla.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/GK5BlnN.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "https://ap02.iqplay.tv:8082/iqb8002/iq53la/playlist.m3u8",
        "https://ap02.iqplay.tv:8082/iqb8002/iq6a7k/playlist.m3u8"
      }
    },
    "Iqraa": {
      "tvg-id": "IqraaEuropeAfrica.sa",
      "tvg-country": "SA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/3bug9dU.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://iqraac.cdn.mangomolo.com/iqraa/smil:iqraar2.stream.smil/playlist.m3u8",
        "http://wowzaprod3-lh.akamaihd.net/i/83372732_1@141298/master.m3u8"
      }
    },
    "Irane": {
      "tvg-id": "IraneFarda.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/QlEmGaH.jpg",
      "group-title": "Undefined",
      "tvg-url": {"http://51.210.199.53/hls/stream.m3u8"}
    },
    "Islam": {
      "tvg-id": "IslamChannel.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://simplestream-portal.s3.eu-west-1.amazonaws.com/172/642f780c-islamtv.png",
      "group-title": "Religious",
      "tvg-url": {"https://live.islamchannel.tv/islamtv_english/live.m3u8"}
    },
    "Island": {
      "tvg-id": "IslandEscape.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ZvF6Yin.png",
      "group-title": "Relax",
      "tvg-url": {"https://a.jsrdn.com/broadcast/41e3e6703e/+0000/c.m3u8"}
    },
    "ISN": {
      "tvg-id": "ISN.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/pmqYFk9.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "https://cpdc101-lh.akamaihd.net/i/ISNCPDCMB1_1@314337/master.m3u8"
      }
    },
    "ITV2": {
      "tvg-id": "ITV2.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.sms.cz/kategorie/televize/bmp/loga/velka/itv2.png",
      "group-title": "Undefined",
      "tvg-url": {"http://31.220.41.88:8081/live/itv2.stream/chunks.m3u8"}
    },
    "ITV3": {
      "tvg-id": "ITV3.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.sms.cz/kategorie/televize/bmp/loga/velka/itv3.png",
      "group-title": "Undefined",
      "tvg-url": {"http://31.220.41.88:8081/live/itv3.stream/chunks.m3u8"}
    },
    "ITV4": {
      "tvg-id": "ITV4.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.sms.cz/kategorie/televize/bmp/loga/velka/itv4.png",
      "group-title": "Undefined",
      "tvg-url": {"http://31.220.41.88:8081/live/itv4.stream/chunks.m3u8"}
    },
    "ITV": {
      "tvg-id": "ITV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/SsgOgRF.png",
      "group-title": "Undefined",
      "tvg-url": {"http://31.220.41.88:8081/live/itv1.stream/chunks.m3u8"}
    },
    "JakartaGlobe": {
      "tvg-id": "BeritaSatuEnglish.id",
      "tvg-country": "ID",
      "tvg-language": "English",
      "tvg-logo":
          "https://m3u-editor.com/storage/channel-logos/07cd9d90-3cc5-11ea-9aa8-0b5bd3ba261d/92697/14040323.png",
      "group-title": "News",
      "tvg-url": {
        "https://b1english.beritasatumedia.com/Beritasatu/B1English_manifest.m3u8"
      }
    },
    "Jamaica": {
      "tvg-id": "JamaicaTV.jm",
      "tvg-country": "JM",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://vse2-sa-all4.secdn.net/tvstartup11-channel/live/mp4:jotvedge/playlist.m3u8"
      }
    },
    "JBS": {
      "tvg-id": "JBS.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/pHJm3I0.png",
      "group-title": "Religious",
      "tvg-url": {
        "http://uni8rtmp.tulix.tv:1935/shalomtv-pc/smil:shalomtv.smil/master.m3u8"
      }
    },
    "Jess": {
      "tvg-id": "JessTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "#EXTVLCOPT:http-referrer=https://ssh101.com/",
        "https://tna5.bozztv.com/jesstv/index.m3u8"
      }
    },
    "Jewelery": {
      "tvg-id": "JewelleryMaker.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/azSptPw.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://lo2-1.gemporia.com/abrjewellerymaker/smil:livestream.smil/playlist.m3u8"
      }
    },
    "Jewelry": {
      "tvg-id": "JewelryTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/1HJraea.png",
      "group-title": "Shop",
      "tvg-url": {
        "https://cdn3.wowza.com/1/eUdsNEcyMmRvckor/K3pydHZw/hls/live/playlist.m3u8",
        "https://cdn.igocast.com/channel12_hls/channel12_master.m3u8"
      }
    },
    "Johnny": {
      "tvg-id": "JohnnyCarsonTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5e66928133461100077dfd73/colorLogoPNG.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://johnnycarson-redbox.amagi.tv/hls/amagi_hls_data_redboxAAA-johnnycarson-redbox/CDN/playlist.m3u8"
      }
    },
    "Journy": {
      "tvg-id": "Journy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://web.opendrive.com/api/v1/download/file.json/MF8yMjg5MzMxNjNf?inline",
      "group-title": "Travel",
      "tvg-url": {"http://d3lzjtrf5mvf3p.cloudfront.net/playlist.m3u8"}
    },
    "Journy's": {
      "tvg-id": "JournysBourdainAllDay.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://provider-static.plex.tv/epg/cms/staging/da04b14e-5a31-4296-bf2e-bbbf0b237255/Journy_s_Bourdain_All_Day_logo_dark.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://plexpab.teleosmedia.com/linear/ovation/journypresentsanthonybourdain/playlist.m3u8?did=62274240-07e7-5d94-8dc8-ef68cf19e175&dnt=0&pid=6182cd0df4e62961d9c2ccf6&ptoken=PLbo_Jw_s1xgoB_1Srgg"
      }
    },
    "Judge": {
      "tvg-id": "JudgeKarensCourt.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/rku6tmo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://cb5273f195a147f2bcf23544e4495f66.mediatailor.us-east-1.amazonaws.com/v1/master/82ded7a88773aef3d6dd1fedce15ba2d57eb6bca/wse_powr_com_5eb1e7261474f9020c06f9ec/playlist.m3u8"
      }
    },
    "Juice": {
      "tvg-id": "JuiceTV.nz",
      "tvg-country": "AU;NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.juice.png",
      "group-title": "Undefined",
      "tvg-url": {"https://juicex.nz/hls/mystream.m3u8"}
    },
    "Just": {
      "tvg-id": "JustforLaughsGags.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OiMMkP3.jpg",
      "group-title": "Comedy",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokujustforlaughsgags/CDN/master.m3u8"
      }
    },
    "K21": {
      "tvg-id": "K21News.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/kk/k21_pk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamone.simpaisa.com:8443/pitvlive1/k21.smil/playlist.m3u8"
      }
    },
    "kabillion": {
      "tvg-id": "kabillion.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/2Ybvtlg.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxkabillion/CDN/playlist.m3u8"
      }
    },
    "Kameme": {
      "tvg-id": "KamemeTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo":
          "https://kenyatv.tech/wp-content/uploads/2020/11/ke-kameme-tv-1383.jpg",
      "group-title": "General",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://dai.ly/x6ol8sj"
      }
    },
    "Kartoon": {
      "tvg-id": "KartoonCircus.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/KartoonFunTime_209x209.png?raw",
      "group-title": "Kids",
      "tvg-url": {
        "https://simultv.s.llnwi.net/n4s4/KartoonCircus/interlink.m3u8"
      }
    },
    "Kass": {
      "tvg-id": "KassTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo":
          "https://kenyatv.tech/wp-content/uploads/2020/11/kasstvlogo.png",
      "group-title": "General",
      "tvg-url": {
        "https://goliveafrica.media:9998/live/60755313b36db/index.m3u8"
      }
    },
    "KBC": {
      "tvg-id": "KBC.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo": "https://kenyatv.tech/wp-content/uploads/2021/04/KBC-1.jpg",
      "group-title": "General",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://dai.ly/x74211t"
      }
    },
    "KBP": {
      "tvg-id": "KBPSports.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/QleHNMl.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://live-k2302-kbp.1plus1.video/sport/smil:sport.smil/playlist.m3u8"
      }
    },
    "KBSV/AssyriaSat": {
      "tvg-id": "KBSVAssyriaSat.us",
      "tvg-country": "US",
      "tvg-language": "Assyrian",
      "tvg-logo": "https://i.imgur.com/zEWSSdf.jpg",
      "group-title": "Undefined",
      "tvg-url": {"http://66.242.170.53/hls/live/temp/index.m3u8"}
    },
    "Kerrang": {
      "tvg-id": "Kerrang.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Nn2VfkP.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://csm-e-boxplus.tls1.yospace.com/csm/extlive/boxplus01,kerrang-alldev.m3u8?yo.up=http://boxtv-origin-elb.cds1.yospace.com/uploads/kerrang/",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-px.theus6tv.tk/hls/13.3/playlist.m3u8"
      }
    },
    "KidsClick": {
      "tvg-id": "KidsClick.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/geonsey/Free2ViewTV/master/images/logos/KidsClick.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://usgeowall.sinclairstoryline.com/channel/1698bf57810a48c486b83d542bca298d.m3u8"
      }
    },
    "KidsFlix": {
      "tvg-id": "KidsFlix.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ZbAVzad.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=50"
      }
    },
    "KMTV": {
      "tvg-id": "kMTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://www.kentonline.co.uk/_assets/kmtvlogo2017_2.png",
      "group-title": "Undefined",
      "tvg-url": {"https://dk7psf0dh3v1r.cloudfront.net/KMTV/playlist.m3u8"}
    },
    "Knowledge": {
      "tvg-id": "Knowledge.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/kdgMVOI.png",
      "group-title": "Kids",
      "tvg-url": {"http://knstream1.azureedge.net/knlive/knlive_high.m3u8"}
    },
    "Kocowa": {
      "tvg-id": "KocowaClassic.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Px8a1JY.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokukocowa/CDN/playlist.m3u8"
      }
    },
    "Kohenoor": {
      "tvg-id": "KohenoorNews.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/kk/kohenoor-news-pk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamer12.vdn.dstreamone.net/dsone/kohenoortv/playlist.m3u8"
      }
    },
    "Kool": {
      "tvg-id": "KoolLondonRadio.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Kv3Htqy.png",
      "group-title": "Music",
      "tvg-url": {
        "http://w10.streamgb.com:1935/kool/kool/playlist.m3u8",
        "http://209.182.219.50:1935/roku/roku/playlist.m3u8"
      }
    },
    "Kordia": {
      "tvg-id": "KordiaTV.nz",
      "tvg-country": "AU;NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/7FCjq7C.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://ptvlive.kordia.net.nz/out/v1/3fc2254c865a457c8d7fbbce227a2aae/index.m3u8"
      }
    },
    "KTN": {
      "tvg-id": "KTNNews.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo": "https://kenyatv.tech/wp-content/uploads/2020/11/unnamed.jpg",
      "group-title": "News",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://www.youtube.com/user/standardgroupkenya/live"
      }
    },
    "Kweli": {
      "tvg-id": "KweliTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/x9tjDhu.png",
      "group-title": "Culture",
      "tvg-url": {
        "https://a.jsrdn.com/broadcast/9c897f1973/+0000/c.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/3.1/playlist.m3u8"
      }
    },
    "Lagos": {
      "tvg-id": "LagosTelevision.ng",
      "tvg-country": "NG",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/rjLxSfx.png",
      "group-title": "Undefined",
      "tvg-url": {"http://185.105.4.193:1935/ltv/myStream/playlist.m3u8"}
    },
    "Lahore": {
      "tvg-id": "LahoreNews.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/ll/lahore_news_pk.png",
      "group-title": "News",
      "tvg-url": {
        "https://vcdn.dunyanews.tv/lahorelive/_definst_/ngrp:lnews_1_all/playlist.m3u8"
      }
    },
    "Lake": {
      "tvg-id": "LakeHavasuCity4.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/REqqKQ9.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://granicusliveus3-a.akamaihd.net/lakehavasucity/G0643_002/playlist.m3u8"
      }
    },
    "Lao": {
      "tvg-id": "LaoChampaTV1.vn",
      "tvg-country": "VN",
      "tvg-language": "English;Vietnamese",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://livefta.malimarcdn.com/ftaedge00/laochampa1.sdp/playlist.m3u8"
      }
    },
    "Latinos": {
      "tvg-id": "LatinosNCTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.revistalatinanc.com/wp-content/uploads/2019/02/3287_LatinosncTV.jpg",
      "group-title": "Undefined",
      "tvg-url": {"https://live.latinosnc.tv:1443/MRR/live/playlist.m3u8"}
    },
    "Law": {
      "tvg-id": "LawCrime.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/HY64Nhe.png",
      "group-title": "Documentary",
      "tvg-url": {
        "http://lawandcrime.samsung.wurl.com/manifest/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1234A-lawcrime/CDN/playlist.m3u8"
      }
    },
    "Lax": {
      "tvg-id": "LaxSportsNetworkTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Lt9ZUYA.png",
      "group-title": "Sports",
      "tvg-url": {"https://1840769862.rsc.cdn77.org/FTF/LSN_SCTE.m3u8"}
    },
    "Lego": {
      "tvg-id": "LegoChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/xePwW13.png",
      "group-title": "Kids",
      "tvg-url": {"https://legochannel-roku.amagi.tv/playlist.m3u8"}
    },
    "Leominster": {
      "tvg-id": "LeominsterTVEducational.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lTzoshf.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://edu.leominster.tv/Edu/smil:Edu.smil/playlist.m3u8",
        "http://gov.leominster.tv/Gov/smil:Gov.smil/playlist.m3u8",
        "http://gov.leominster.tv/Pub/smil:Pub.smil/playlist.m3u8"
      }
    },
    "Level": {
      "tvg-id": "LevelOne.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Kids",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node04.powr.com/live/5af61be7d5eeee7af3d1db47/playlist.m3u8"
      }
    },
    "Lex": {
      "tvg-id": "LexTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OyUrnuD.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://granicusliveus2-a.akamaihd.net/lfucg/G0264_002/playlist.m3u8"
      }
    },
    "LifevisionTV": {
      "tvg-id": "LifevisionTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/pF6Wowj.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "https://uni5rtmp.tulix.tv/lifevision/lifevision.stream/playlist.m3u8"
      }
    },
    "Lively": {
      "tvg-id": "LivelyPlace.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5dc1cb279c91420009db261d/colorLogoPNG.png",
      "group-title": "Series",
      "tvg-url": {
        "https://aenetworks-ae-1.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "LIVExLIVE": {
      "tvg-id": "LIVExLIVE.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OaSFTnV.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-xumolivexlive/CDN/master.m3u8"
      }
    },
    "LNKTV": {
      "tvg-id": "LNKTVCity.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/dGgmOY0.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://5tv.lincoln.ne.gov/live/WIFI-2096k-1080p/WIFI-2096k-1080p.m3u8",
        "http://80tv.lincoln.ne.gov/live/WIFI-2096k-1080p/WIFI-2096k-1080p.m3u8",
        "http://10tv.lincoln.ne.gov/live/WIFI-2096k-1080p/WIFI-2096k-1080p.m3u8"
      }
    },
    "Localish": {
      "tvg-id": "Localish.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://media-usla.mybtv.net/logos/7.2.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://live-news-manifest.tubi.video/live-news-manifest/csm/extlive/tubiprd01,Localish.m3u8"
      }
    },
    "Logos": {
      "tvg-id": "LogosTVEnglish.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://logoschannel.com/images/logo.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://5aafcc5de91f1.streamlock.net/logoschannel.com/logoseng/playlist.m3u8"
      }
    },
    "Lone": {
      "tvg-id": "LoneStar.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzMxMzM1NzJf/LoneStar_250x250.png",
      "group-title": "Classic",
      "tvg-url": {"https://lonestar-rakuten.amagi.tv/playlist.m3u8"}
    },
    "Loop": {
      "tvg-id": "Loop80sEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lDmxwji.png",
      "group-title": "Music",
      "tvg-url": {
        "https://55e014b3437040d08777729c863a2097.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Roku_Loop80s-1/playlist.m3u8",
        "https://a500d902bdf94ea69ad343720add6036.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/80s_party_littlstar/master.m3u8",
        "https://7626362bfa104137aded60d8d7e72ff5.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/90s_kids_littlstar/master.m3u8",
        "https://884a4c762d524aad88d463477402fb7d.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/beast_mode_littlstar/master.m3u8",
        "https://3bbe22c035b4409d80f997adc8ad33ee.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/bedroom_beats_littlstar/master.m3u8",
        "https://0bdf3efc906045538c63468aa2f86a96.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/electro_anthems_littlstar/master.m3u8",
        "https://957d71ce01dc447384d3978d3cdc55d9.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/that_70s_channel_littlstar/master.m3u8",
        "https://ea86081fb9454be9b3b50037f9117024.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/like_yesterday_littlstar/master.m3u8",
        "https://e4d2547e0c8c492a883054acd48276be.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/hip_hop_bangers_littlstar/master.m3u8",
        "https://2e9a0ef101a14c2ebe97c713bc5340be.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/hottest_of_the_hot_v2_littlstar/master.m3u8",
        "https://c3b9df023def467086d10677827171f8.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/latin_x_pop_littlstar/master.m3u8",
        "https://1d79349342334eb0bdeddd168b5c6e1a.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/party_littlstar/master.m3u8",
        "https://0cf4f660964046daa9e0b7b6467a4e84.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/hot_rnb_littlstar/master.m3u8",
        "https://2807722353b745629456a555257b16bc.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/neural_focused_littlstar/master.m3u8",
        "https://2fb88e730c2647d69629c6f90b0b98b9.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/texas_sized_hits_littlstar/master.m3u8",
        "https://480e67fe68b64c35ae48b77192cb1fdf.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/friday_feels_littlstar/master.m3u8",
        "https://dccd6216f2c9471399015e69d64818cd.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/thats_hot_littlstar/master.m3u8",
        "https://3d26c463850c48c788975a9aad86c508.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/trending_littlstar/master.m3u8",
        "https://8c455e94c5ff44d0ada529dffef58ae5.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/unwind_littlstar/master.m3u8",
        "https://90a0d12cbaff4b959ea24bb8a3560adf.mediatailor.us-west-2.amazonaws.com/v1/master/6b8beeb9ed833d048c8c8155a25a28fe617c5474/yacht_rock_littlstar/master.m3u8"
      }
    },
    "Loupe": {
      "tvg-id": "Loupe4K.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.samsung.com/us/smg/content/dam/s7/home/televisions-and-home-theater/tvs/tvplus/03232021/Loupe4K_190x190.png?raw",
      "group-title": "Undefined",
      "tvg-url": {"http://d2dw21aq0j0l5c.cloudfront.net/playlist.m3u8"}
    },
    "Love": {
      "tvg-id": "LoveandHipHop.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.samsung.com/us/smg/content/dam/s7/home/televisions-and-home-theater/tvs/tv-plus/all-channels/08182020/Love%20&%20Hip%20Hop_190x190.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d51ddf0369acdb278dfb05e/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY",
        "http://bamus-eng-roku.amagi.tv/playlist.m3u8"
      }
    },
    "Loveworld": {
      "tvg-id": "Loveworld.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/6orW2BN.png",
      "group-title": "Religious",
      "tvg-url": {"https://cdn.lwuk.live/live/smil:lwukweb.smil/playlist.m3u8"}
    },
    "Mad": {
      "tvg-id": "MadDogandMerrill.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Ot9wh52.png",
      "group-title": "General",
      "tvg-url": {"https://rpn1.bozztv.com/36bay2/gusa-mwg/playlist.m3u8"}
    },
    "Magellan": {
      "tvg-id": "MagellanTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/oIy673i.png",
      "group-title": "Documentary",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/5xreV3X4T9WxeIbrwOmdMA/master.m3u8"
      }
    },
    "Marvel": {
      "tvg-id": "MarvelHQ.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/sNq67x4.png",
      "group-title": "Undefined",
      "tvg-url": {"https://feed.play.mv/live/10005200/niZoVrR2vD/master.m3u8"}
    },
    "Maverick": {
      "tvg-id": "MaverickBlackCinema.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OEamqFg.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redbox-maverickmovies/CDN/playlist.m3u8"
      }
    },
    "MavTV": {
      "tvg-id": "MavTVSelect.us",
      "tvg-country": "EUR",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/KMGUuAX.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://mavtv-mavtvglobal-1-eu.rakuten.wurl.com/manifest/playlist.m3u8"
      }
    },
    "MBC": {
      "tvg-id": "MBC.mw",
      "tvg-country": "MW",
      "tvg-language": "Chewa;English",
      "tvg-logo": "https://i.imgur.com/YtaF4oP.png",
      "group-title": "General",
      "tvg-url": {"http://41.216.229.205:8080/live/livestream/index.m3u8"}
    },
    "MCN6": {
      "tvg-id": "MCN6.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/KOgoXoG.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d18fcxaqfnwjhj.cloudfront.net/CDN_Ingest/MCN6_MAIN.smil/Playlist.m3u8",
        "https://d18fcxaqfnwjhj.cloudfront.net/CDN_Ingest/MCN6_COMEDY.smil/Playlist.m3u8",
        "https://d18fcxaqfnwjhj.cloudfront.net/CDN_Ingest/MCN6_MUSIC.smil/Playlist.m3u8"
      }
    },
    "Mehran": {
      "tvg-id": "MehranTV.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/mm/mehran-tv-pk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamone.simpaisa.com:8443/pitvlive1/mehran.smil/playlist.m3u8"
      }
    },
    "Metal": {
      "tvg-id": "MetalTV.ru",
      "tvg-country": "RU",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Music",
      "tvg-url": {"https://v2.catcast.tv/content/33816/index.m3u8"}
    },
    "MeTV": {
      "tvg-id": "WCTVDT2.us",
      "tvg-country": "US-FL",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/metv.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://5e6cea03e25b6.streamlock.net/live/WCTVDT2.stream/playlist.m3u8",
        "https://16live00.akamaized.net/ME_TV_EAST/index.m3u8"
      }
    },
    "MGM": {
      "tvg-id": "MGMHDUSA.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/giHZyYC.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://c0.cdn.trinity-tv.net/stream/uq2t763988wmx82xs37vrzrtrvaz686y22jd9gcgvgbhu88g6dntdb82kggx9zgvpvwj5wisyi5mgwwgdqzm7d6xbf7yvctwzvhsu3t57ms3wa4qxwyeuqk3ayrdwx3k2b6cdtnrydx9qa3ezqzea===.m3u8"
      }
    },
    "Miami": {
      "tvg-id": "MiamiCityTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/HJohrzO.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://granicusliveus9-a.akamaihd.net/miamifl/G2076_003/playlist.m3u8"
      }
    },
    "Midnight": {
      "tvg-id": "MidnightPulp.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjQwMDkyNjVf/MidnightPulp_200x200.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://369f2966f62841f4affe37d0b330a13c.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Plex_MidnightPulp/playlist.m3u8?ads.app_bundle=&ads.app_store_url=&ads.consent=0&ads.gdpr=0&ads.plex_id=5ef4e1b40d9ad000423c4427&ads.plex_token=z1MCPUpbxYcHru-5hdyq&ads.psid=&ads.targetopt=1&ads.ua=Mozilla/5.0+(Windows+NT+10.0;+Win64;+x64)+AppleWebKit/537.36+(KHTML,+like+Gecko)+Chrome/84.0.4147.89+Safari/537.36+OPR/70.0.3728.71&ads.us_privacy=1---&ads.wurl_channel=263&ads.wurl_name=MidnightPulp"
      }
    },
    "Millennium": {
      "tvg-id": "MillenniumTV24.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://millenniumtv24.com/wp-content/uploads/2020/07/logo-new-24-02.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://cdn.appv.jagobd.com:444/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI/mnews24.stream/playlist.m3u8",
        "https://cdn.appv.jagobd.com:444/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI/millenniumtv-odr-up2.stream/playlist.m3u8"
      }
    },
    "Minecraftv": {
      "tvg-id": "MinecrafTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5812b821249444e05d09cc4c/colorLogoPNG.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5812b821249444e05d09cc4c/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&us_privacy=1YNY"
      }
    },
    "Mirror": {
      "tvg-id": "MirrorNow.in",
      "tvg-country": "IN",
      "tvg-language": "English",
      "tvg-logo":
          "https://yt3.ggpht.com/-XmvqPl571Ak/AAAAAAAAAAI/AAAAAAAAAAA/mMm0Tpd90kU/s900-c-k-no-mo-rj-c0xffffff/photo.jpg",
      "group-title": "Undefined",
      "tvg-url": {"https://mbnowweb-lh.akamaihd.net/i/MRN_1@346545/master.m3u8"}
    },
    "MIS": {
      "tvg-id": "MISTelevizija.rs",
      "tvg-country": "AU;NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/XaXRbxj.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://5afd52b55ff79.streamlock.net/MISTV/myStream/playlist.m3u8"
      }
    },
    "Mission": {
      "tvg-id": "MissionTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/1qJkLDZ.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://6096a9cf11ae5.streamlock.net:1943/live/missiontv/playlist.m3u8"
      }
    },
    "MMA": {
      "tvg-id": "MMAJunkie.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/nSUiODh.jpg",
      "group-title": "Sports",
      "tvg-url": {"https://a.jsrdn.com/broadcast/80f6ba72c8/+0000/c.m3u8"}
    },
    "Mohabat": {
      "tvg-id": "MohabatTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/tucTC1O.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://media.mohabat.tv:1935/live_transcoder/ngrp:mohabat.stream_all/playlist.m3u8"
      }
    },
    "Monarch": {
      "tvg-id": "MonarchChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/iSqYInb.png",
      "group-title": "Documentary",
      "tvg-url": {"https://a.jsrdn.com/broadcast/0c9a09c94c/+0000/c.m3u8"}
    },
    "Moonbug": {
      "tvg-id": "MoonbugKids.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/nuzIBbN.png",
      "group-title": "Kids",
      "tvg-url": {"https://moonbug-rokuus.amagi.tv/playlist.m3u8"}
    },
    "Motorvision": {
      "tvg-id": "MotorvisionXUMO.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/WPklHVE.jpg",
      "group-title": "Auto",
      "tvg-url": {
        "https://dai2-xumo.fubo.tv/amagi_hls_data_xumo1212A-motorvisiontv/CDN/master.m3u8"
      }
    },
    "Movee": {
      "tvg-id": "Movee4U.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://mytvtogo.net/wp-content/uploads/2018/11/Network_Movee4U-196x126.jpg",
      "group-title": "Movies",
      "tvg-url": {
        "https://broadcast.mytvtogo.net/movee4u/movee4u/playlist.m3u8"
      }
    },
    "Movie": {
      "tvg-id": "MovieKingdom.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/pIuJqYk.png",
      "group-title": "Movies",
      "tvg-url": {"https://a.jsrdn.com/broadcast/e9b4093a41/+0000/c.m3u8"}
    },
    "MovieSphere": {
      "tvg-id": "MovieSphere.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjM1Njg1NTFf/MovieSphere_400x400.png",
      "group-title": "Movies",
      "tvg-url": {"https://moviesphere-plex.amagi.tv/playlist.m3u8"}
    },
    "MST3K": {
      "tvg-id": "MST3K.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/545943f1c9f133a519bbac92/colorLogoPNG.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://mst3k-redbox.amagi.tv/hls/amagi_hls_data_redboxAAA-mst3k/CDN/playlist.m3u8"
      }
    },
    "MTV": {
      "tvg-id": "MTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Entertainment",
      "tvg-url": {"http://209.91.213.10:8088/play/a01a"}
    },
    "Museum": {
      "tvg-id": "MuseumTVFast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://tvpmlogopeu.samsungcloud.tv/platform/image/sourcelogo/vc/70/01/66/FRBA3300064WS_20211110T010724.png",
      "group-title": "Culture",
      "tvg-url": {
        "https://cdn-ue1-prod.tsv2.amagi.tv/linear/amg01492-secomsasmediart-museumtv-en-plex/playlist.m3u8"
      }
    },
    "My": {
      "tvg-id": "WISCDT2.us",
      "tvg-country": "US-WI",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/mnt.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://ad-playlistserver.aws.syncbak.com/playlist/13613390/master.m3u8?access_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkdyYXkyMDE2MDgyOSJ9.eyJtaWQiOjEzNjEzMzkwLCJtZDUiOiI2Y2M5MzczYjIxZWIwNzQ4ZDA0YTRlYzYyMjU2YjBhMiIsImlhdCI6MTQ5NzM4MTU5NywiaXNzIjoiU3luY2JhayIsInN1YiI6IkdyYXkifQ.qJPiMCbnGjAn9wgPrGjVl3M9Xfc4CVSyoZTZ5OH-1jo"
      }
    },
    "Mystery": {
      "tvg-id": "MysteryScienceTheater3000.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5f9ace054964ba19ff258256",
      "group-title": "Comedy",
      "tvg-url": {"https://mst3k-vizio.amagi.tv/playlist.m3u8"}
    },
    "MyTime": {
      "tvg-id": "MyTimemovienetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjU5ODE1MzJf/MyTime_260x260.png",
      "group-title": "Movies",
      "tvg-url": {"https://mytime-roku-ingest.cinedigm.com/playlist.m3u8"}
    },
    "NACTV": {
      "tvg-id": "NACTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FzM95rH.png",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.pivotalelements.com/nactv/stream.m3u8"}
    },
    "NASA": {
      "tvg-id": "NASATV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/bKVNdeh.jpg",
      "group-title": "Science",
      "tvg-url": {
        "http://iphone-streaming.ustream.tv/uhls/6540154/streams/live/iphone/playlist.m3u8",
        "http://iphone-streaming.ustream.tv/uhls/9408562/streams/live/iphone/playlist.m3u8",
        "https://ntv2.akamaized.net/hls/live/2013923/NASA-NTV2-HLS/master.m3u8",
        "https://ntv1.akamaized.net/hls/live/2014075/NASA-NTV1-HLS/master.m3u8"
      }
    },
    "National": {
      "tvg-id": "NationalGeographicEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://1000logos.net/wp-content/uploads/2017/04/Color-National-Geographic-Logo-500x250.jpg",
      "group-title": "Documentary",
      "tvg-url": {
        "https://livecdn.fptplay.net/foxlive/natgeohd_hls.smil/playlist.m3u8"
      }
    },
    "NAU-TV": {
      "tvg-id": "NAUTVNorthernArizonaUniversity.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/uNKEoa4.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream.ec.nau.edu/live/amlst:channelfour/playlist.m3u8"
      }
    },
    "NBC": {
      "tvg-id": "WTVJDT1.us",
      "tvg-country": "US-FL",
      "tvg-language": "English",
      "tvg-logo": "https://zap2it.tmsimg.com/assets/s28717_h5_aa.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://38.127.211.18/live/c2eds/NBC/HLS/index.m3u8",
        "http://trn03.tulix.tv/teleup-nbc-wgal-new1/playlist.m3u8",
        "http://51.161.118.146:8080/ISG03_NBC_LOS_ANGELES_CA_KNBC/video.m3u8",
        "http://nbcnews2.akamaized.net/hls/live/723426-b/NBCNewsPlaymaker24x7Linear99a3a827-ua/master.m3u8",
        "https://nbcnews-lh.akamaihd.net/i/nbc_live11@183427/master.m3u8",
        "https://nbcnews-lh.akamaihd.net/i/nbc_live12@187393/master.m3u8",
        "https://nbcnews-lh.akamaihd.net/i/nbc_live13@187394/master.m3u8",
        "https://nbcnews-lh.akamaihd.net/i/nbc_live14@187395/master.m3u8",
        "http://51.161.118.146:8080/ISG03_NBC_SAN_FRANCISCO_CA_KNTV/video.m3u8"
      }
    },
    "NBCLX": {
      "tvg-id": "NBCLX.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/JSCsJc5.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://lxlive-lh.akamaihd.net/i/LX_LIVE@148206/master.m3u8"}
    },
    "NBS": {
      "tvg-id": "NBSTV.ug",
      "tvg-country": "UG",
      "tvg-language": "English",
      "tvg-logo":
          "https://rndcdn.dstv.com/dstvcms/2018/07/03/NBS_logo_4-3_001_xlrg.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://vse-cdn1-readymedia.rea.cdn.moderntv.eu/readymedia/stream/NBSTV/5-20-hls/live.m3u8"
      }
    },
    "NDTV": {
      "tvg-id": "NDTVProfit.in",
      "tvg-country": "IN",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/bkGH7q3.jpg",
      "group-title": "Business",
      "tvg-url": {
        "https://ndtvprofitelemarchana.akamaized.net/hls/live/2003680-b/ndtvprofit/master.m3u8"
      }
    },
    "Neo": {
      "tvg-id": "NeoNewsHD.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/nn/neo-news-hd-pk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamone.simpaisa.com:8443/pitvlive1/neo.smil/playlist.m3u8"
      }
    },
    "NESN": {
      "tvg-id": "NESNNational.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://lh3.googleusercontent.com/zO2IQHNsszQEwBR_WkdlGo--3qbOfBIDTxNH4CNDpu8jtuASA6CvL7Aw_wcmPFItMSBy",
      "group-title": "Sports",
      "tvg-url": {
        "https://bcovlive-a.akamaihd.net/bea11a7dfef34b08be06aaca4a72bcdf/us-east-1/6141518204001/playlist.m3u8"
      }
    },
    "New": {
      "tvg-id": "NewJapanProWrestlingWorld.jp",
      "tvg-country": "JP",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/New_Japan_Pro_Wrestling_Logo_2.svg/480px-New_Japan_Pro_Wrestling_Logo_2.svg.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://aka-amd-njpwworld-hls-enlive.akamaized.net/hls/video/njpw_en/njpw_en_channel01_3/playlist_DVR.m3u8",
        "https://b9860b21629b415987978bdbbfbc3095.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Roku_NewKID/playlist.m3u8",
        "http://media4.tripsmarter.com:1935/LiveTV/NOTVHD/playlist.m3u8"
      }
    },
    "News": {
      "tvg-id": "News12NewYork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5f9c57ad92cd1774a1091752",
      "group-title": "News",
      "tvg-url": {"https://lnc-news12.tubi.video/index.m3u8"}
    },
    "Newsmax": {
      "tvg-id": "NewsmaxTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://gitee.com/radioer/radioer/raw/main/newsmax.jpg",
      "group-title": "News",
      "tvg-url": {
        "https://newsmax-plex.amagi.tv/hls/amagi_hls_data_plexAAAAA-newsmax-plex/CDN/playlist.m3u8"
      }
    },
    "NewsNet": {
      "tvg-id": "NewsNet.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/geonsey/Free2ViewTV/master/images/logos/NewsNet.png",
      "group-title": "News",
      "tvg-url": {
        "https://2-fss-2.streamhoster.com/pl_138/amlst:201950-1311088/playlist.m3u8"
      }
    },
    "Newsy": {
      "tvg-id": "Newsy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/eEqyFBX.jpg",
      "group-title": "News",
      "tvg-url": {
        "https://547f72e6652371c3.mediapackage.us-east-1.amazonaws.com/out/v1/e3e6e29095844c4ba7d887f01e44a5ef/index.m3u8",
        "https://content.uplynk.com/channel/387c33ce09da4de699668c0c7d1244a8.m3u8"
      }
    },
    "NHK": {
      "tvg-id": "NHKWorldJapan.jp",
      "tvg-country": "JP",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/SQISXoD.jpg",
      "group-title": "Culture;News",
      "tvg-url": {
        "https://nhkwlive-ojp.akamaized.net/hls/live/2003459/nhkwlive-ojp-en/index.m3u8"
      }
    },
    "Nick": {
      "tvg-id": "NickJrTooUK.uk",
      "tvg-country": "IE;UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/e/ea/Nick_Jr_Too.png",
      "group-title": "Kids",
      "tvg-url": {
        "http://212.224.98.213:2200/EX/Nick_Jr_Too-uk/index.m3u8?token="
      }
    },
    "Nickelodeon": {
      "tvg-id": "NickelodeonAustralia.au",
      "tvg-country": "AU;NZ",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Nickelodeon_2009_logo.svg/500px-Nickelodeon_2009_logo.svg.png",
      "group-title": "Kids",
      "tvg-url": {
        "http://c0.cdn.trinity-tv.net/stream/7tsewn83ddjifz69us9je7eftbm5nuausb4dsvz9g5aydin9672n734qbb9jgcfpiqtpwudvs9dpi2udjc3eh4h462eie5azjmfbfgfjeqfuhjmmgx9zuj736ijg7nffhf8rviq5svkgxbp639y9nfgc.m3u8",
        "http://31.220.41.88:8081/live/us-nick.stream/playlist.m3u8"
      }
    },
    "Nitro": {
      "tvg-id": "NitroCircus.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Ri0sB6I.jpg",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxnitrocircus/CDN/playlist.m3u8"
      }
    },
    "NITV": {
      "tvg-id": "NITV.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.320203000305.png",
      "group-title": "Undefined",
      "tvg-url": {"https://i.mjh.nz/au/Sydney/tv.320203000305.m3u8"}
    },
    "Nosey": {
      "tvg-id": "Nosey.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5aec96ec5126c2157123c657/colorLogoPNG.png",
      "group-title": "Series",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redbox-nosey/CDN/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/powr/ngrp:5eb1e76d1474f9020c06f9ee_all/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node04.powr.com/powr_480pt/ngrp:5eb1e7f848f1ff2e1d2555a2_all/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node02.powr.com/powr/ngrp:5eb1e7261474f9020c06f9ec_all/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node04.powr.com/powr_480pt/ngrp:5eb1e88458ad7801fa2cfc2e_all/playlist.m3u8",
        "https://stitcheraws.unreel.me/wse-node04.powr.com/powr_480pt/ngrp:5eb1e84c95ee0253b97679d7_all/playlist.m3u8"
      }
    },
    "Nothing": {
      "tvg-id": "NothingScripted.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/QSH4Z4p.png",
      "group-title": "Undefined",
      "tvg-url": {"https://30a-tv.com/NothingScripted.m3u8"}
    },
    "Now": {
      "tvg-id": "NowThis.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Now_This_Logo_White.svg/1200px-Now_This_Logo_White.svg.png",
      "group-title": "General",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxnowthis/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-nowthis/CDN/master.m3u8"
      }
    },
    "NRB": {
      "tvg-id": "NRBTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/S3Ujv10.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://uni6rtmp.tulix.tv/nrbnetwork/myStream.sdp/playlist.m3u8"
      }
    },
    "NTA": {
      "tvg-id": "NTAInternational.ng",
      "tvg-country": "NG",
      "tvg-language": "English",
      "tvg-logo":
          "https://rndcdn.dstv.com/dstvcms/2018/07/19/NTA_Plus_logo_4-3_001_xlrg.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://api.visionip.tv/live/ASHTTP/visiontvuk-entertainment-ntai-hsslive-25f-4x3-MB/playlist.m3u8"
      }
    },
    "NTV": {
      "tvg-id": "NTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo": "https://kenyatv.tech/wp-content/uploads/2021/04/NTV-1.jpg",
      "group-title": "General",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://dai.ly/x6shkab",
        "https://2-fss-1.streamhoster.com/pl_122/201748-1282644-1/playlist.m3u8",
        "https://cdn.appv.jagobd.com:444/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI/ntvuk00332211.stream/playlist.m3u8"
      }
    },
    "NYXT": {
      "tvg-id": "NYXT.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/KiIzWmO.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://api.new.livestream.com/accounts/19770665/events/5522162/live.m3u8"
      }
    },
    "OAN": {
      "tvg-id": "OneAmericaNewsNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/G6e7Hcl.png",
      "group-title": "News",
      "tvg-url": {
        "http://oneamericanews-roku-us.amagi.tv/playlist.m3u8",
        "https://cdn.herringnetwork.com/80A4DFF/oane_oregon/OAN_Encore.m3u8"
      }
    },
    "Oireachtas": {
      "tvg-id": "OireachtasTV.ie",
      "tvg-country": "IE",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/7/75/Official_Houses_of_the_Oireachtas_Logo.jpg",
      "group-title": "Legislative",
      "tvg-url": {
        "https://d33zah5htxvoxb.cloudfront.net/el/live/oirtv/hls.m3u8",
        "https://d33zah5htxvoxb.cloudfront.net/el/live/cr1/hls.m3u8",
        "https://d33zah5htxvoxb.cloudfront.net/el/live/cr2/hls.m3u8",
        "https://d33zah5htxvoxb.cloudfront.net/el/live/cr3/hls.m3u8",
        "https://d33zah5htxvoxb.cloudfront.net/el/live/cr4/hls.m3u8",
        "https://d33zah5htxvoxb.cloudfront.net/el/live/dail/hls.m3u8",
        "https://d33zah5htxvoxb.cloudfront.net/el/live/seanad/hls.m3u8"
      }
    },
    "Olelo": {
      "tvg-id": "Olelo49.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Z7RBRkZ.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://granicusliveus12-a.akamaihd.net/olelo/G0125_009/playlist.m3u8",
        "http://granicusliveus12-a.akamaihd.net/olelo/G0125_011/playlist.m3u8",
        "https://granicusliveus12-a.akamaihd.net/olelo/G0125_012/playlist.m3u8",
        "https://granicusliveus12-a.akamaihd.net/olelo/G0125_013/playlist.m3u8"
      }
    },
    "Omid": {
      "tvg-id": "OmidJavedan.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/8pfSswY.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://livestream.5centscdn.com/shaditv/23abe62a446fc05ce0a6c810f4045308.sdp/index.m3u8"
      }
    },
    "One": {
      "tvg-id": "OneGolf.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/CKnSeT7.png",
      "group-title": "Sports",
      "tvg-url": {"http://162.250.201.58:6211/pk/ONEGOLF/index.m3u8"}
    },
    "Ontario": {
      "tvg-id": "OntarioParliamentaryNetwork.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/BQWfhEr.jpg",
      "group-title": "Legislative",
      "tvg-url": {
        "http://origin-http-delivery.isilive.ca/live/_definst_/ontla/house-en/playlist.m3u8"
      }
    },
    "Open": {
      "tvg-id": "OpenShop.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/cdw3teq.png",
      "group-title": "Undefined",
      "tvg-url": {"https://i.mjh.nz/au/Sydney/tv.7openshop.m3u8"}
    },
    "Opportunities": {
      "tvg-id": "OURTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9uz9lyg.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://hls-cdn.tvstartup.net/barakyah-channel/play/mp4:ourtvedge/playlist.m3u8"
      }
    },
    "Orange": {
      "tvg-id": "OrangeTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/I41K90P.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://otv3.ocfl.net:1936/OrangeTV/smil:OrangeTV.smil/playlist.m3u8"
      }
    },
    "Outdoor": {
      "tvg-id": "OutdoorAmerica.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ldh9sFG.png",
      "group-title": "Outdoor",
      "tvg-url": {
        "https://d18toqrnfyz3v1.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/OutdoorAmerica-PLEX/159.m3u8",
        "http://ott.watch/stream/E7Q3UVKI5H/211.m3u8"
      }
    },
    "Outside": {
      "tvg-id": "OutsideTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/snuV96y.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://outside-tv-samsung-ca.samsung.wurl.com/manifest/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxoutsidetv/CDN/playlist.m3u8",
        "https://outsidetvplus-xumo.amagi.tv/hls/amagi_hls_data_outsidetv-outsidetvplusxumo/CDN/master.m3u8"
      }
    },
    "Pac": {
      "tvg-id": "Pac12Insider.us",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzA3OTUzMjdf/PAC12_720x720.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://pac12-redbox.amagi.tv/hls/amagi_hls_data_pac-12AAA-pac12-redbox/CDN/playlist.m3u8"
      }
    },
    "Panarmenian": {
      "tvg-id": "KNETCD2.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/A3kHNyp.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://granicusliveus6-a.akamaihd.net/torrance/G0057_005/playlist.m3u8"
      }
    },
    "Paramount": {
      "tvg-id": "ParamountComedyRussia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.magticom.ge/images/channels/MjAxOC8wOS8xMC82ZTY2ZDc2MC04YzJlLTRhOWMtODM2Mi1jMmQ4OWFiMDAxZTQuanBn.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "http://45.145.32.11:20007/paramount_comedy/video.m3u8",
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5cb0cae7a461406ffe3f5213/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY"
      }
    },
    "Pardesi": {
      "tvg-id": "PardesiTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/CwAdPpZ.jpg",
      "group-title": "Undefined",
      "tvg-url": {"http://stream.pardesitv.online/pardesi/index.m3u8"}
    },
    "Parliament": {
      "tvg-id": "parliament.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/BsHt9f2.png",
      "group-title": "Legislative",
      "tvg-url": {
        "https://ptvlive.kordia.net.nz/out/v1/daf20b9a9ec5449dadd734e50ce52b74/index.m3u8"
      }
    },
    "Party": {
      "tvg-id": "PartyTymeKaraoke.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Jj4zvOK.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=64"
      }
    },
    "Pattrn": {
      "tvg-id": "pattrn.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5f976cdcd40f5d6678647013",
      "group-title": "Weather",
      "tvg-url": {
        "https://live-news-manifest.tubi.video/live-news-manifest/csm/extlive/tubiprd01,Cloudfront-Pattrn.m3u8"
      }
    },
    "Payvand": {
      "tvg-id": "PayvandTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/w3LaJja.png",
      "group-title": "News",
      "tvg-url": {"http://uni6rtmp.tulix.tv:1935/ucur1/Payvand/playlist.m3u8"}
    },
    "PBS": {
      "tvg-id": "WPSUDT1.us",
      "tvg-country": "US-PA",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/pbs.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://trn03.tulix.tv/lnABbIUBrO/playlist.m3u8",
        "https://pbs-samsunguk.amagi.tv/playlist.m3u8",
        "https://livestream.pbskids.org/out/v1/2963202df0c142c69b5254a546473308/akst.m3u8",
        "https://livestream.pbskids.org/out/v1/1e3d77b418ad4a819b3f4c80ac0373b5/est.m3u8",
        "https://livestream.pbskids.org/out/v1/19d1d62bf61b4aea9ec20f83b6450a4e/hast.m3u8",
        "https://livestream.pbskids.org/out/v1/00a3b9014fa54c40bee6ca68a104a8a4/mst.m3u8",
        "https://livestream.pbskids.org/out/v1/c707b9310f2848de849b336f9914adbc/pst.m3u8",
        "https://2-fss-2.streamhoster.com/pl_138/amlst:201814-1291584/playlist.m3u8",
        "https://pbs.lls.cdn.pbs.org/est/index.m3u8",
        "https://pbs.lls.cdn.pbs.org/pst/index.m3u8",
        "https://cs.ebmcdn.net/eastbay-live-hs-1/apt/mp4:apt-world/playlist.m3u8"
      }
    },
    "PCC-TV": {
      "tvg-id": "PCCTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9PEAPwY.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://granicusliveus1-a.akamaihd.net/pinellas/G1551_004/playlist.m3u8"
      }
    },
    "People": {
      "tvg-id": "PeopleTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/7SarjaU.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://d1qaz9zojo1ayt.cloudfront.net/playlist.m3u8"}
    },
    "Pinkfong": {
      "tvg-id": "PinkfongBabyShark.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/1MGJg18.jpg",
      "group-title": "Kids",
      "tvg-url": {
        "https://fc2f8d2d3cec45bb9187e8de15532838.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Roku_BabySharkTV/playlist.m3u8"
      }
    },
    "Plant": {
      "tvg-id": "PlantBasedNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/iwd9Jxb.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://hls-cdn.tvstartup.net/barakyah-channel/live/pbtv/playlist.m3u8"
      }
    },
    "Play.Works": {
      "tvg-id": "PlayWorks.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/McoboB1.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://b12eca572da7423284734ca3a6242ea2.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Plex_PlayWorks/playlist.m3u8?ads.app_bundle=com.plexapp.desktop&ads.app_store_url=https://app.plex.tv&ads.consent=0&ads.gdpr=1&ads.plex_id=5f0ff263d71dcb00449ec01e&ads.plex_token=MorUy57ijWhGe4ixZb_T&ads.psid=df8e1a36-847d-5096-86a7-3803ed330ede&ads.targetopt=0&ads.ua=Mozilla/5.0+(Windows+NT+6.1;+rv:83.0)+Gecko/20100101+Firefox/83.0&ads.us_privacy=1---&ads.wurl_channel=512&ads.wurl_name=PlayWorks"
      }
    },
    "Players": {
      "tvg-id": "PlayersTV.us",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/d3EaS41.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-xumo-playerstv/CDN/master.m3u8"
      }
    },
    "Pluto": {
      "tvg-id": "70sCinema.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5f4d878d3d19b30007d2e782/colorLogoPNG.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f4d878d3d19b30007d2e782/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f4d86f519358a00072b978e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f4d83e0a382c00007bc02e7/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e84f54a82f05300080e6746/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e84f54a82f05300080e6746&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=605&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d815e489b315b154db2e053/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d815e489b315b154db2e053&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=303&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e8db96bccae160007c71eec/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ddf8ea0d000120009bcad83/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ddf8ea0d000120009bcad83&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=550&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ad9b6f57ef2767e1846e59f/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=d548b050-1c0f-11eb-8801-b9710ba01352&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=b6f8a12a-554c-4970-82ca-4dc1f84a4016&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5be4c6311843b56328bce619/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5812b7d3249444e05d09cc49/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5812b7d3249444e05d09cc49&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=830&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ce44810b421747ae467b7cd/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ce44810b421747ae467b7cd&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=621&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/600adbdf8c554e00072125c9/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5595e43c66ace1652e63c6a2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5595e43c66ace1652e63c6a2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=194&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5cabdf1437b88b26947346b2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5cabdf1437b88b26947346b2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=755&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d815eb889bca2ce7b746fdd/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d815eb889bca2ce7b746fdd&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=142&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fb5844bf5514d0007945bda/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fb5836fe745b600070fc743/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ea18c138c32460007cc6b46/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ebc8688f3697d00072f7cf8/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ebc8688f3697d00072f7cf8&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=730&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5887ba337b8e94223eb121bd/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5887ba337b8e94223eb121bd&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=630&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ca670f6593a5d78f0e85aed/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ca670f6593a5d78f0e85aed&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=174&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d51e6949ab8e2b35bdcaa9f/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d51e6949ab8e2b35bdcaa9f&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=175&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5db81695a95186000941ee8b/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f1aa7aab66c76000790ee7e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&is_lat=1&platform=web&rdid=channel&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d4af2a24f1c5ab2d298776b/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/58af4c093a41ca9d4ecabe96/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d51e2bceca5b4b2c0e06c50/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d51e2bceca5b4b2c0e06c50&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=285&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e46fba0c43b0d00096e5ac1/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e46fba0c43b0d00096e5ac1&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=238&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fac425f949b4600079938f3/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b68a18823ecb93393cba2f1/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b68a18823ecb93393cba2f1&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=154&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e8b5a4bb7da5c0007e5c9e9/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5e8b5a4bb7da5c0007e5c9e9&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=5c631817-0713-11eb-9df2-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5812b3a4249444e05d09cc46/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5a6b92f6e22a617379789618/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5a6b92f6e22a617379789618&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=204&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5eb1afb21486df0007abc57c/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://cbsn-bos.cbsnstream.cbsnews.com/out/v1/589d66ec6eb8434c96c28de0370d1326/master.m3u8",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5eb1aeb2fd4b8a00076c2047/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5eb1b0bf2240d8000732a09c/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5dc48170e280c80009a861ab/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5dc48170e280c80009a861ab&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=206&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5eb1b05ea168cc000767ba67/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5eb1b17aa5277e00083f6521/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d8bf1472907815f66a866dd/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d8bf1472907815f66a866dd&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=320&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b6b285823ecb93393cbf766/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b6b285823ecb93393cbf766&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=687&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e8c4c3f141f350007936f7d/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5e8c4c3f141f350007936f7d&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=8ae325bb-0580-11eb-9df2-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5cf96b1c4f1ca3f0629f4bf0/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5cf96b1c4f1ca3f0629f4bf0&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=902&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d134a74ca91eedee1630faa/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d134a74ca91eedee1630faa&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=903&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/562ea53fa9060c5a7d463e74/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=562ea53fa9060c5a7d463e74&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=548&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e46ae801f347500099d461a/master.m3u8?appName=web&appVersion=unknown&clientTime=0&deviceDNT=0&deviceId=35f76fb0-e986-11eb-a0af-c3b401f46211&deviceMake=Chrome&deviceModel=web&deviceType=web&deviceVersion=unknown&includeExtendedEvents=false&serverSideAds=false&sid=2fac39a7-56bc-492e-ae1e-3f6fb6cef1bc",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f15e32b297f96000768f928/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5f15e32b297f96000768f928&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=501&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f779951372da90007fd45e8/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5dcc42446750e200093b15e2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5dcc42446750e200093b15e2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=182&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f68f53eb1e5800007390bf8/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b4e94282d4ec87bdcbb87cd/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b4e94282d4ec87bdcbb87cd&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=103&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5421f71da6af422839419cb3/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5421f71da6af422839419cb3&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=209&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5c37d6712de254456f7ec340/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5c37d6712de254456f7ec340&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=373&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5bb1ac3e268cae539bcedb07/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5bb1ac3e268cae539bcedb07&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=970&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5a4d3a00ad95e4718ae8d8db/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5a4d3a00ad95e4718ae8d8db&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=57&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d4947590ba40f75dc29c26b/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5d4947590ba40f75dc29c26b&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=5ca4fefb-0728-11eb-a18c-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d4948418101147596fd6c5a/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5d4948418101147596fd6c5a&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=91083755-0728-11eb-aeab-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f99e24636d67d0007a94e6d/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5cf96dad1652631e36d43320/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5cf96dad1652631e36d43320&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=967&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e1f7e089f23700009d66303/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e1f7e089f23700009d66303&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=367&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f31fd1b4c510e00071c3103/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/6000a5a9e767980007b497ca/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f4d8594eb979c0007706de7/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5efbd29e4aa26700076c0d06/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5efbd29e4aa26700076c0d06&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=355&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5c665db3e6c01b72c4977bc2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5c665db3e6c01b72c4977bc2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=109&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e843d849109b700075d5ada/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5e843d849109b700075d5ada&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=ddc64e1e-0581-11eb-82fe-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ef3958c66ac540007d6e6a7/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ef3958c66ac540007d6e6a7&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=535&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ca1df0d50be2571e393ad31/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5c6eeb85c05dfc257e5a50c4/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5c6eeb85c05dfc257e5a50c4&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=144&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ce4475cd43850831ca91ce7/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ce4475cd43850831ca91ce7&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=532&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b85a7582921777994caea63/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b85a7582921777994caea63&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=91&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5bee1a7359ee03633e780238/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b329e0a7b9d8872aeb49ceb/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b329e0a7b9d8872aeb49ceb&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=636&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d14fb6c84dd37df3b4290c5/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d14fb6c84dd37df3b4290c5&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=985&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ddf91149880d60009d35d27/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ddf91149880d60009d35d27&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=402&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f24662bebe0f0000767de32/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ffebb618f6cb4000728082c/master.m3u8?appName=web&appVersion=unknown&clientTime=0&deviceDNT=0&deviceId=2c8a9390-e98a-11eb-a932-2f3c780ff9ff&deviceMake=Chrome&deviceModel=web&deviceType=web&deviceVersion=unknown&includeExtendedEvents=false&serverSideAds=false&sid=7eed86a2-2fee-402b-9978-ecaffe0235c0",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f6b54b9e67cf60007d4cef1/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/60d3583ef310610007fb02b1/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&serverSideAds=false&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ad9b8551b95267e225e59c1/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5c58a539fae3812612f33ca3/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5dc3fc6b9133f500099c7d98/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f77939a630f530007dde654/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5b64a245a202b3337f09e51d/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&us_privacy=1YNY",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5cb6f6f9a461406ffe4022cf/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/588128d17d64bc0d0f385c34/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=588128d17d64bc0d0f385c34&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=301&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ca1de9208ee5378be82db3b/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ad9bda9fd87eb3a2717cce0/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5ad9bda9fd87eb3a2717cce0&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=5c2fb668-242f-4e7f-a025-087099fd0aca&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d4af39510fd17b31a528eda/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e8b0c92783b3f0007a4c7df/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5e8b0c92783b3f0007a4c7df&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=3b0b1ee4-3c26-4c24-8a7c-1b12f2e4e536&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/58e55b14ad8e9c364d55f717/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f3bd0e63f793300071574cd/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5f3bd0e63f793300071574cd&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=95e98e2b-3403-11eb-b13a-0242ac110002&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ddf930548ff9b00090d5686/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ddf930548ff9b00090d5686&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=500&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e94cd036cc69d0007e8a1ba/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e94cd036cc69d0007e8a1ba&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=933&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5a74b8e1e22a61737979c6bf/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5a74b8e1e22a61737979c6bf&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=705&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e78faa05a0e200007a6f487/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/580e87ff497c73ba2f321dd3/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=580e87ff497c73ba2f321dd3&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=450&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e54187aae660e00093561d6/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e54187aae660e00093561d6&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=167&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ca7f16c37b88b2694731c79/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ca7f16c37b88b2694731c79&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=801&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5dc2a69bc928a600093a7976/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5c45f5a9d40d58066869fa60/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f27bbe4779de70007a6d1c1/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ad9be1be738977e2c312134/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5ad9be1be738977e2c312134&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=f6e88030-d7c8-47c8-8fed-7e24dd0a038a&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f1aa89d42a0500007363ea3/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&is_lat=1&platform=web&rdid=channel&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b4e99f4423e067bd6df6903/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b4e99f4423e067bd6df6903&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=294&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f7794162a4559000781fc12/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5c5c2d7ae59bf23c192c411c/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e4bf0db50560a000948ce52/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d486b87428fe37d8cadba44/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d486b87428fe37d8cadba44&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=898&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5eb96303f5bb020008e7e44f/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5eb96303f5bb020008e7e44f&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=8044788b-0583-11eb-a18c-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5c5c2e9d8002db3c3e0b1c72/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://stitcher.pluto.tv/stitch/hls/channel/569546031a619b8f07ce6e25/master.m3u8?advertisingId=&appName=&appStoreUrl=&appVersion=2.0.0&app_name=&deviceDNT=0&deviceId=889540f0-712d-11e8-b9ec-8ba319deeadf&deviceLat=38.5783&deviceLon=-90.6666&deviceMake=Chrome&deviceModel=Chrome&deviceType=web&deviceVersion=37.0.2049.0&serverSideAds=false&sid=6e360db0-724b-11e8-be77-bf4d1417b012&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5c99f5810c95814ff92512f9/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ce40f42ba7f7f5ea9518fe1/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5ce40f42ba7f7f5ea9518fe1&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=aeca4ad7-0583-11eb-8b9f-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ce40e59246a395e9758923e/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5ce40e59246a395e9758923e&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=aa724654-057a-11eb-8b9f-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5dbc2d1ce10f0b0009e6cf9e/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5dbc2d1ce10f0b0009e6cf9e&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=efbfa162-0713-11eb-9b92-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e9decb953e157000752321c/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e9decb953e157000752321c&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=160&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5af09e645126c2157123f9eb/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5af09e645126c2157123f9eb&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=462&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5db0ad56edc89300090d2ebb/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5db0ad56edc89300090d2ebb&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=976&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ff5ebe299d30c0007b1f12a/master.m3u8?appName=web&appVersion=unknown&clientTime=0&deviceDNT=0&deviceId=2c89d040-e98a-11eb-a932-2f3c780ff9ff&deviceMake=Chrome&deviceModel=web&deviceType=web&deviceVersion=unknown&includeExtendedEvents=false&serverSideAds=false&sid=8f06f039-4f3e-499b-a415-5cf7148a64d7",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5eb301b7395671000780d100/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5eb301b7395671000780d100&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=995&terminate=false&userId=",
        "http://stitcher.pluto.tv/stitch/hls/channel/5873fc21cad696fb37aa9054/master.m3u8?appVersion=5.2.7&deviceDNT=web&deviceId=web24163643069&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=1&serverSideAds=false&sid=web24157571521",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d8beeb39b5d5d5f8c672530/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d8beeb39b5d5d5f8c672530&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=276&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ce5a8954311f992edbe1da2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ce5a8954311f992edbe1da2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=187&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d51ddf0369acdb278dfb05e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f15e181520cfa000771ce79/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5f15e181520cfa000771ce79&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=147&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e14486590ba3e0009d912ff/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ea18e5df6dd1d0007cf7bad/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5cbf6a868a1bce4a3d52a5e9/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5cbf6a868a1bce4a3d52a5e9&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=385&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5bb3fea0f711fd76340eebff/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5bb3fea0f711fd76340eebff&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=655&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f77977bd924d80007eee60c/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e66968a70f34c0007d050be/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5cb626cfcaf83414128f439c/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=2.7.4-9a7fc53e0c1da468e3c566c3f53e98a36ca1f97b&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=9f228953-21cb-4b82-a393-dd32d047379f&deviceLat=45.4994&deviceLon=-73.5703&deviceMake=Chrome&deviceModel=Chrome&deviceType=web&deviceVersion=76.0.3809.132&serverSideAds=true&sid=d1634607-2892-447a-b316-17a106f905fb&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ad8d3a31b95267e225e4e09/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ad8d3a31b95267e225e4e09&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=50&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5caf325764025859afdd6c4d/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5caf325764025859afdd6c4d&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=1b711cc8-0587-11eb-9df2-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5caf325764025859afdd6c4d/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5caf325764025859afdd6c4d&deviceLat=51.2993&deviceLon=9.4910&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=2&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f6108d8cc331900075e98e4/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://pluto-live.plutotv.net/egress/chandler/pluto01/live/VIACBS02/master.m3u8",
        "http://pluto-live.plutotv.net/egress/chandler/pluto01/live/VIACBS03/master.m3u8",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ca6899a37b88b269472ea4b/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ca6899a37b88b269472ea4b&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=330&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/600ae79fa46e17000794e84c/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&is_lat=1&platform=web&rdid=channel&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f1aadf373bed3000794d1d7/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5f1aadf373bed3000794d1d7&deviceLat=41.1167&deviceLon=1.2500&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=ES&serverSideAds=false&sid=300&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f9847fd513250000728a9a5/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://pluto-live.plutotv.net/egress/chandler/pluto01/live/VIACBS07/master.m3u8",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5cffcf5686dfe15595fb3f56/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5cffcf5686dfe15595fb3f56&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=7ca1fec5-0587-11eb-aeab-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d00e86bf0bac55fe7f75736/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5caf32c2a5068259a32320fc/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5caf32c2a5068259a32320fc&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=d49824ea-0587-11eb-82fe-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f98471110cca20007d39f76/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e8dc008d4422e00072d2405/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d2c571faeb3e2738ae27933/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5bd833b41843b56328bac189/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5da0c85bd2c9c10009370984/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5da0c85bd2c9c10009370984&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=836&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5be1c3f9851dd5632e2c91b2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5be1c3f9851dd5632e2c91b2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=1e26d24e-0585-11eb-82fe-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5812bd9f249444e05d09cc4e/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5812bd9f249444e05d09cc4e&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=692&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5268abcd0ce20a8472000114/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5268abcd0ce20a8472000114&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=202&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ced7d5df64be98e07ed47b6/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ced7d5df64be98e07ed47b6&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=708&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ca673e0d0bd6c2689c94ce3/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ca673e0d0bd6c2689c94ce3&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=977&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ca6748a37b88b269472dad9/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ca6748a37b88b269472dad9&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=978&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f7790b3ed0c88000720b241/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ff8c708653d080007361b14/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5de94dacb394a300099fa22a/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ca525b650be2571e3943c63/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ca525b650be2571e3943c63&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=95&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5be1be871843b56328bc3ef1/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5be1be871843b56328bc3ef1&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=8a1b4593-8596-4ff8-8720-2c3271ea36ca&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e82530945600e0007ca076c/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e82530945600e0007ca076c&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=310&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e79c2f280389000077242a8/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f36f2346ede750007332d11/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fac431fc1ffbc0007e6b6a7/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d8bf0b06d2d855ee15115e3/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d8bf0b06d2d855ee15115e3&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=275&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f21e831e9fe730007706acb/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e1c669094e0e80009b22ab8/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5e1c669094e0e80009b22ab8&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=886c7aee-0585-11eb-8b9f-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ad8d4e7e738977e2c310937/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d7677c0edace7cff8180b16/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d7677c0edace7cff8180b16&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=57&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5dbc327d0451770009ed7577/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5dbc327d0451770009ed7577&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=4aa698a0-0715-11eb-aeab-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e8b5ba20af628000707cee3/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/563a970aa1a1f7fe7c9daad7/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=563a970aa1a1f7fe7c9daad7&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=672&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e8dc0af6784d10007d8ad42/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5e9ed47c26ebb000074af566/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f9853138d19af0007104a8d/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&is_lat=1&platform=web&rdid=channel&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5dc2c00abfed110009d97243/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f988934a507de00075d9ae7/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/6000a6f4c3f8550008fc9b91/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d765a05f65029ce2385aa30/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f21ea08007a49000762d349/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5dbc2f98777f2e0009934ae7/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5c393cad2de254456f7ef8c2/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5c393cad2de254456f7ef8c2&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=291&terminate=false&userId=",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d7677fa2ec536ce1d587eeb/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d7677fa2ec536ce1d587eeb&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=607&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ba3fb9c4b078e0f37ad34e8/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5ba3fb9c4b078e0f37ad34e8&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=51&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f4d863b98b41000076cd061/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5637d31f319573e26b64040b/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5637d31f319573e26b64040b&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=468&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5efbd39f8c4ce900075d7698/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e8254118601b80007b4b7ae/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e8254118601b80007b4b7ae&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=135&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5bd81b1053ed2c6334ea0856/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f21e7b24744c60007c1f6fc/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5f21e7b24744c60007c1f6fc&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=296&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f15e281b0b8840007324b55/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5f15e281b0b8840007324b55&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=149&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5c6dc88fcd232425a6e0f06e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d81607ab737153ea3c1c80e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f21e8a6e2f12b000755afdb/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d48685da7e9f476aa8a1888/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f7794a788d29000079d2f07/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f7791b8372da90007fd45e6/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e825550e758c700077b0aef/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e825550e758c700077b0aef&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=529&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ea18f35ae8f730007465915/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5f982c3420de4100070a545e/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=1&deviceId=5f982c3420de4100070a545e&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=DE&serverSideAds=false&sid=09ab0f67-3401-11eb-a786-0242ac110002&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d51e791b7dba3b2ae990ab2/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5ef3977e5d773400077de284/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b4e69e08291147bd04a9fd7/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b4e69e08291147bd04a9fd7&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=74&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/601a0342dcf4370007566891/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "http://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5c3f8f12a93c2d61b9990a4e/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5c3f8f12a93c2d61b9990a4e&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=848&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5dae084727c8af0009fe40a4/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d0c16d686454ead733d08f8/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d0c16d686454ead733d08f8&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=983&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/59c01b1953680139c6ae9d4d/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=59c01b1953680139c6ae9d4d&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=678&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5812be1c249444e05d09cc50/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5812be1c249444e05d09cc50&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=365&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d40bebc5e3d2750a2239d7e/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d40bebc5e3d2750a2239d7e&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=130&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5c2d64ffbdf11b71587184b8/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5c2d64ffbdf11b71587184b8&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=455&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5db0ae5af8797b00095c0794/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5db0ae5af8797b00095c0794&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=991&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5331d5fb753499095a00045a/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5dc2a961bac1f70009ca7524/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f0dc00b15eef10007726ef7/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5b4e96a0423e067bd6df6901/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5b4e96a0423e067bd6df6901&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=379&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fd7bca3e0a4ee0007a38e8c/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f32f26bcd8aea00071240e5/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fd7b8bf927e090007685853/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5fd7bb1f86d94a000796e2c2/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5da0d75e84830900098a1ea0/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5da0d83f66c9700009b96d0e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5d71561df6f2e6d0b6493bf5/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5d71561df6f2e6d0b6493bf5&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=284&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d7154fa8326b6ce4ec31f2e/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5bdce04659ee03633e758130/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5bdce04659ee03633e758130&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=217&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5877acecb16bb1e042ee453f/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5877acecb16bb1e042ee453f&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=632&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5e8df4bc16e34700077e77d3/master.m3u8?advertisingId=&appName=web&appStoreUrl=&appVersion=DNT&app_name=&architecture=&buildVersion=&deviceDNT=0&deviceId=5e8df4bc16e34700077e77d3&deviceLat=&deviceLon=&deviceMake=web&deviceModel=web&deviceType=web&deviceVersion=DNT&includeExtendedEvents=false&marketingRegion=US&serverSideAds=false&sid=526&terminate=false&userId=",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d48678d34ceb37d3c458a55/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f7792f6e093980007e02945/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS",
        "https://service-stitcher.clusters.pluto.tv/stitch/hls/channel/5ed6828192e8b3000743ef61/master.m3u8?advertisingId=&appName=web&appVersion=5.14.0-0f5ca04c21649b8c8aad4e56266a23b96d73b83a&app_name=web&clientDeviceType=0&clientID=6fbead95-26b1-415d-998f-1bdef62d10be&clientModelNumber=na&deviceDNT=false&deviceId=6fbead95-26b1-415d-998f-1bdef62d10be&deviceLat=19.4358&deviceLon=-99.1441&deviceMake=Chrome&deviceModel=web&deviceType=web&deviceVersion=88.0.4324.150&marketingRegion=VE&serverSideAds=false&sessionID=b8e5a857-714a-11eb-b532-0242ac110002&sid=b8e5a857-714a-11eb-b532-0242ac110002&userId=",
        "http://pluto-live.plutotv.net/egress/chandler/pluto01/live/VIACBS01/master.m3u8",
        "https://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5f4ec10ed9636f00089b8c89/master.m3u8?advertisingId=channel&appName=rokuchannel&appVersion=1.0&bmodel=bm1&channel_id=channel&content=channel&content_rating=ROKU_ADS_CONTENT_RATING&content_type=livefeed&coppa=false&deviceDNT=1&deviceId=channel&deviceMake=rokuChannel&deviceModel=web&deviceType=rokuChannel&deviceVersion=1.0&embedPartner=rokuChannel&genre=ROKU_ADS_CONTENT_GENRE&is_lat=1&platform=web&rdid=channel&studio_id=viacom&tags=ROKU_CONTENT_TAGS"
      }
    },
    "Plymouth": {
      "tvg-id": "PlymouthRockTV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/PlymouthRockTV_205x205.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "https://vse2-eu-all59.secdn.net/barakyah-channel/live/plymouthtv/playlist.m3u8"
      }
    },
    "pocket.watch": {
      "tvg-id": "PocketWatch.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5dae0a40e8ee0d000975e99b/colorLogoPNG.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxpocketwatch/CDN/playlist.m3u8"
      }
    },
    "Pongalo": {
      "tvg-id": "PongaloNovelaclub.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/vLSvJ7W.jpg",
      "group-title": "Series",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokunovelaclub/CDN/playlist.m3u8"
      }
    },
    "Pop": {
      "tvg-id": "PopTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://getlogo.net/wp-content/uploads/2020/10/pop-tv-logo-vector.png",
      "group-title": "Entertainment",
      "tvg-url": {"http://n1.klowdtv.net/live2/pop_720p/playlist.m3u8"}
    },
    "Popstar!": {
      "tvg-id": "PopstarTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/mWrqBaS.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://linear-10.frequency.stream/dist/plex/10/hls/master/playlist.m3u8"
      }
    },
    "Positiv": {
      "tvg-id": "PositivTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ULF3iOE.png",
      "group-title": "Family",
      "tvg-url": {
        "https://api.new.livestream.com/accounts/27460990/events/8973036/live.m3u8"
      }
    },
    "Press": {
      "tvg-id": "PressTV.ir",
      "tvg-country": "IR",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/TNQKahI.png",
      "group-title": "News",
      "tvg-url": {"https://live1.presstv.ir/live/presstvfr/index.m3u8"}
    },
    "PTV": {
      "tvg-id": "PTVSports.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/pp/ptv_sports_pk.png",
      "group-title": "Undefined",
      "tvg-url": {"http://103.81.104.118/hls/stream11.m3u8"}
    },
    "Pursuit": {
      "tvg-id": "PursuitUp.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.samsung.com/us/smg/content/dam/s7/home/televisions-and-home-theater/tvs/tv-plus/us-channel-lineup/Pursuit_Circle_190x190.png?raw",
      "group-title": "Undefined",
      "tvg-url": {"https://pursuitup.samsung.wurl.com/manifest/playlist.m3u8"}
    },
    "Qello": {
      "tvg-id": "QelloConcerts.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://tvpmlogopeu.samsungcloud.tv/platform/image/sourcelogo/vc/70/03/20/GBAJ4900013GC_20200923T100340.png",
      "group-title": "Music",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/BakMHO8xRSmGKYeiyhsq3A/master.m3u8"
      }
    },
    "QTV": {
      "tvg-id": "QTVGambia.gm",
      "tvg-country": "GM",
      "tvg-language": "English;Mandinka;Wolof",
      "tvg-logo": "https://i.imgur.com/K5tzOq2.png",
      "group-title": "Undefined",
      "tvg-url": {"https://player.qtv.gm/hls/live.stream.m3u8"}
    },
    "Quicktake": {
      "tvg-id": "Quicktake.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://dp6mhagng1yw3.cloudfront.net/entries/12th/5ec877f2-d86f-4253-a507-1c42083431a4.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/6ANW1HGeSTKzJlnAa9u1AQ/master.m3u8"
      }
    },
    "QVC": {
      "tvg-id": "QVC2.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/jnk22/kodinerds-iptv/master/logos/tv/qvc.png",
      "group-title": "Shop",
      "tvg-url": {
        "https://lsqvc2us-lh.akamaihd.net/i/lsqvc2us_01@809440/master.m3u8",
        "https://lsqvc3us-lh.akamaihd.net/i/lsqvc3us_01@809459/master.m3u8",
        "https://lsqvc1uscln-lh.akamaihd.net/i/lsqvc1uscln_01@809410/master.m3u8",
        "https://d2mn03dhv5o3g8.cloudfront.net/live/qvcde_beauty_clean/bitrate1.isml/live.m3u8",
        "http://n1.klowdtv.net/live2/qvclive_720p/playlist.m3u8",
        "http://live.qvcuk.simplestreamcdn.com/live/qvcuk_main_clean/bitrate1.isml/live.m3u8",
        "https://live-qvcuk.simplestreamcdn.com/hera/remote/qvcuk_primary_sdi1/live.m3u8",
        "http://live.qvcuk.simplestreamcdn.com/live/qvcuk_beauty_clean/bitrate1.isml/live.m3u8",
        "https://live-qvcuk.simplestreamcdn.com/live/qvcuk_extra_clean/bitrate1.isml/live.m3u8",
        "http://live.qvcuk.simplestreamcdn.com/live/qvcuk_style_clean/bitrate1.isml/live.m3u8"
      }
    },
    "Qwest": {
      "tvg-id": "QwestTVClassical.fr",
      "tvg-country": "FR",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Music",
      "tvg-url": {
        "https://cdn-ue1-prod.tsv2.amagi.tv/linear/qwestAAAA-qwestclassic-uk-samsungtv/playlist.m3u8",
        "https://cdn-ue1-prod.tsv2.amagi.tv/linear/qwestAAAA-qwestjazz-uk-samsungtv/playlist.m3u8",
        "https://cdn-ue1-prod.tsv2.amagi.tv/linear/qwestAAAA-qwestmix-uk-samsungtv/playlist.m3u8"
      }
    },
    "Race": {
      "tvg-id": "RaceCentralTV.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Ot9wh52.png",
      "group-title": "Undefined",
      "tvg-url": {"https://nrpus.bozztv.com/36bay2/gusa-racecentral/index.m3u8"}
    },
    "Racing.com": {
      "tvg-id": "Racingcom.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.101305020528.png",
      "group-title": "Undefined",
      "tvg-url": {"https://i.mjh.nz/au/Sydney/tv.101305020528.m3u8"}
    },
    "Radio": {
      "tvg-id": "RadioUTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://radiou.com/wp-content/uploads/2018/06/RadioUSiteFooterTransparent.png",
      "group-title": "Music",
      "tvg-url": {
        "https://cdnlive.radiou.com/LS-ATL-43240-1/index.m3u8",
        "https://ocb-lh.akamaihd.net/i/ocb_mpls_tvmc1@383606/master.m3u8"
      }
    },
    "Rainbow": {
      "tvg-id": "RainbowRuby.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/LrunNdE.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-roku-rainbow-ruby/CDN/playlist.m3u8"
      }
    },
    "Real": {
      "tvg-id": "RealFamiliesAustralia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/z8O4Dl6.png",
      "group-title": "Family",
      "tvg-url": {
        "https://lds-realfamilies-samsunguau.amagi.tv/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxrealnosey/CDN/playlist.m3u8",
        "https://lds-realstories-samsungau.amagi.tv/playlist.m3u8",
        "https://realstories-samsung-uk.amagi.tv/playlist.m3u8",
        "https://lds-realstories-plex.amagi.tv/playlist.m3u8",
        "https://a.jsrdn.com/broadcast/2a755012a8/+0000/c.m3u8"
      }
    },
    "Red": {
      "tvg-id": "RedBullTV.at",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/7NeBmWX.jpg",
      "group-title": "Sports",
      "tvg-url": {
        "https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master.m3u8"
      }
    },
    "Redbox": {
      "tvg-id": "Redbox1Spotlight.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OrGCnPg.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://spotlight-redbox.amagi.tv/playlist.m3u8",
        "https://comedy-redbox.amagi.tv/playlist.m3u8",
        "https://rush-redbox.amagi.tv/hls/amagi_hls_data_redboxAAA-rush/CDN/playlist.m3u8"
      }
    },
    "Redseat": {
      "tvg-id": "RedseatTheFirst.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5fc953ab6426646dbd7347b4",
      "group-title": "News",
      "tvg-url": {"https://redseat-thefirst-klowdtv.amagi.tv/playlist.m3u8"}
    },
    "Reelz": {
      "tvg-id": "Reelz.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/UQjtEqR.png",
      "group-title": "Documentary",
      "tvg-url": {
        "https://a.jsrdn.com/broadcast/d37066a396/+0000/c.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxreelzchannel/CDN/playlist.m3u8"
      }
    },
    "Relaxing": {
      "tvg-id": "RelaxingRain.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/USiqGyp.jpg",
      "group-title": "Undefined",
      "tvg-url": {"https://a.jsrdn.com/broadcast/76381deeda/+0000/c.m3u8"}
    },
    "Reload": {
      "tvg-id": "Reload.cy",
      "tvg-country": "CY",
      "tvg-language": "English;Greek",
      "tvg-logo": "",
      "group-title": "Music",
      "tvg-url": {"http://web.onair-radio.eu:1935/video/video/playlist.m3u8"}
    },
    "RetroCrush": {
      "tvg-id": "RetroCrushTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjQwMDkzNDRf/RetroCrush_576x576.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://45034ce1cbb7489ab1499301f6274415.mediatailor.us-east-1.amazonaws.com/v1/master/44f73ba4d03e9607dcd9bebdcb8494d86964f1d8/Plex_RetroCrush/playlist.m3u8?ads.app_bundle=&ads.app_store_url=&ads.consent=0&ads.gdpr=0&ads.plex_id=5ef4e1b40d9ad000423c442a&ads.plex_token=z1MCPUpbxYcHru-5hdyq&ads.psid=&ads.targetopt=1&ads.ua=Mozilla/5.0+(Windows+NT+10.0;+Win64;+x64)+AppleWebKit/537.36+(KHTML,+like+Gecko)+Chrome/84.0.4147.89+Safari/537.36+OPR/70.0.3728.71&ads.us_privacy=1---&ads.wurl_channel=491&ads.wurl_name=RetroCrush"
      }
    },
    "Reuters": {
      "tvg-id": "Reuters.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://reuters-reutersnow-1.plex.wurl.com/manifest/playlist.m3u8",
        "https://reuters-reuters-1-eu.rakuten.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Rev": {
      "tvg-id": "RevandRoll.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/JiBv7NI.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokurev-and-roll/CDN/playlist.m3u8"
      }
    },
    "Revelation": {
      "tvg-id": "RevelationTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/sOVdYJZ.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://rtv.cdn.mangomolo.com/rtv/smil:rtv.stream.smil/playlist.m3u8"
      }
    },
    "Revry": {
      "tvg-id": "Revry.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/5fc81016d98cab623846a4f3",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://linear-5.frequency.stream/dist/plex/5/hls/master/playlist.m3u8",
        "https://linear-44.frequency.stream/dist/plex/44/hls/master/playlist.m3u8",
        "https://4aafa23ec0a6477ca31466bd83a115a4.mediatailor.us-west-2.amazonaws.com/v1/master/ba62fe743df0fe93366eba3a257d792884136c7f/LINEAR-43-REVRY2-GALXY/mt/galxy/43/hls/master/playlist.m3u8"
      }
    },
    "Rialto": {
      "tvg-id": "Rialto.nz",
      "tvg-country": "AU;NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/RnzWT9C.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://rialto-rialto-samsungaustralia.amagi.tv/playlist.m3u8"
      }
    },
    "Ring": {
      "tvg-id": "RingofHonorWrestling.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/RingOfHonor_400x400.png?raw",
      "group-title": "Sports",
      "tvg-url": {
        "https://stadium-ringofhonor-1.sinclair.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Rooster": {
      "tvg-id": "RoosterTeethTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/3o9cG76.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d2klx6wjx7p5vm.cloudfront.net/Rooster-teeth/ngrp:Rooster-teeth_all/playlist.m3u8"
      }
    },
    "RT": {
      "tvg-id": "RTAmerica.ru",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/tyXIHlj.png",
      "group-title": "News",
      "tvg-url": {
        "https://rt-usa.rttv.com/live/rtusa/playlist.m3u8",
        "https://rt-rtd.rttv.com/live/rtdoc/playlist.m3u8",
        "https://live-hr6yv36f.rmbl.ws/slot-30/ngrp:srak-wx8r_all/playlist.m3u8",
        "https://rt-uk.rttv.com/live/rtuk/playlist.m3u8"
      }
    },
    "RTÉ": {
      "tvg-id": "RTENews.ie",
      "tvg-country": "IE",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/OisW3m0.png",
      "group-title": "News",
      "tvg-url": {"https://live.rte.ie/live/a/channel3/news.isml/.m3u8"}
    },
    "Rugby": {
      "tvg-id": "RugbyMensSevens.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://esmhls1-i.akamaihd.net/hls/live/510580/hls1/playlist.m3u8",
        "https://esmhls2-i.akamaihd.net/hls/live/510581/hls2/playlist.m3u8",
        "https://esmhls3-i.akamaihd.net/hls/live/510582/hls3/playlist.m3u8"
      }
    },
    "RunTime": {
      "tvg-id": "RunTimeFreeMovies.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/Runtime_120x120.png?raw",
      "group-title": "Movies",
      "tvg-url": {"https://ammoruntime-plex.amagi.tv/playlist.m3u8"}
    },
    "Runtime": {
      "tvg-id": "RuntimeMexico.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/Runtime_120x120.png?raw",
      "group-title": "Undefined",
      "tvg-url": {"https://runtimemx-samsungmx.amagi.tv/playlist.m3u8"}
    },
    "Runway": {
      "tvg-id": "RunwayTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/RunwayTV_960x960.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "https://runway-hls.secdn.net/runway-live/play/runway/playlist.m3u8"
      }
    },
    "Rush": {
      "tvg-id": "RushbyAMC.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/yngqRL8.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://amc-rushbyamc-1.imdbtv.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Ryan": {
      "tvg-id": "RyanandFriends.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/uG675tT.png",
      "group-title": "Kids",
      "tvg-url": {"https://ryanandfriends-samsungau.amagi.tv/playlist.m3u8"}
    },
    "S4C": {
      "tvg-id": "S4C.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/ss/s4c-uk.svg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://live-uk.s4c-cdn.co.uk/out/v1/a0134f1fd5a2461b9422b574566d4442/live_uk_1.m3u8"
      }
    },
    "SafeTV": {
      "tvg-id": "SafeTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/sDGZCpL.png",
      "group-title": "Religious",
      "tvg-url": {"http://18.191.91.130:1935/live/safetv/playlist.m3u8"}
    },
    "Salt": {
      "tvg-id": "SaltPlusLightTelevision.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/mpJICdg.png",
      "group-title": "Religious",
      "tvg-url": {
        "https://zm6gdaxeyn93-hls-live.5centscdn.com/slworld/d65ce2bdd03471fde0a1dc5e01d793bb.sdp/index.m3u8",
        "https://dcunilive38-lh.akamaihd.net/i/dclive_1@692676/master.m3u8"
      }
    },
    "Sangat": {
      "tvg-id": "SangatTelevision.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/KcPEkHh.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://api.new.livestream.com/accounts/6986636/events/5362122/live.m3u8"
      }
    },
    "Santa": {
      "tvg-id": "SantaandtheThreeBears.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/Generic_Christmas_715x715.png?raw",
      "group-title": "Family",
      "tvg-url": {
        "https://cloudfront.tubi.video/21df8036-fa23-49ff-9877-8af983546d2b/elw3phlf/stream.m3u8"
      }
    },
    "SBS": {
      "tvg-id": "SBSFood.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.320203000304.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://i.mjh.nz/au/Sydney/tv.320203000304.m3u8",
        "https://i.mjh.nz/au/Sydney/tv.320203000301.m3u8",
        "https://dai.google.com/linear/hls/event/nPy2IRtvQTWudFfYwdBgsg/master.m3u8",
        "https://i.mjh.nz/au/Sydney/tv.320203000307.m3u8"
      }
    },
    "Sci-Fi": {
      "tvg-id": "SciFi4U.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzU1NDU3MThf/NostTV_SciFi4U_576x576.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://broadcast.mytvtogo.net/SciFiTV4u/SciFiTV4u/playlist.m3u8"
      }
    },
    "Screen": {
      "tvg-id": "ScreenDreams.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/6hIfTMC.jpg",
      "group-title": "Relax",
      "tvg-url": {
        "https://content.uplynk.com/channel/3e4b9cada2b74cf18977298804134a36.m3u8"
      }
    },
    "Sent": {
      "tvg-id": "SentTVGlobalNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ogvLLji.png",
      "group-title": "General",
      "tvg-url": {
        "https://rpn1.bozztv.com/36bay2/gusa-stgn/mono.m3u8",
        "http://stgn-49.tulix.tv/live19/Stream1/playlist.m3u8"
      }
    },
    "Seven": {
      "tvg-id": "Seven.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.101305020520.png",
      "group-title": "Undefined",
      "tvg-url": {"https://i.mjh.nz/au/Sydney/tv.101305020520.m3u8"}
    },
    "Shabakeh": {
      "tvg-id": "Shabakeh7.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/LeYSfhX.png",
      "group-title": "Undefined",
      "tvg-url": {"http://rtmp.abnsat.com/hls/txministry.m3u8"}
    },
    "Sheffield": {
      "tvg-id": "SheffieldLiveTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/eUqnYU1.png",
      "group-title": "Undefined",
      "tvg-url": {"http://tv.sheffieldlive.org/hls/main.m3u8"}
    },
    "Shop": {
      "tvg-id": "ShopHQ.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/WVAQvvX.jpg",
      "group-title": "Shop",
      "tvg-url": {
        "https://aos01-evine.secure.footprint.net/evine/clean/appleman.m3u8",
        "https://cdn-shop-lc-01.akamaized.net/Content/DASH_DASH/Live/channel(ott)/master.mpd"
      }
    },
    "Shout!": {
      "tvg-id": "ShoutFactoryTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/ShoutFactoryTV_300x300.png?raw",
      "group-title": "General",
      "tvg-url": {"http://shoutfactory-redbox.amagi.tv/playlist.m3u8"}
    },
    "Showtime": {
      "tvg-id": "ShowtimeattheApollo.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/jhJ25OQ.jpg",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxshowtimeattheapollo/CDN/playlist.m3u8"
      }
    },
    "Silence": {
      "tvg-id": "SilenceTV.nl",
      "tvg-country": "NL",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/826gz7r.jpg",
      "group-title": "Undefined",
      "tvg-url": {"http://93.190.140.42:8081/SilenceTV/live/playlist.m3u8"}
    },
    "Sindh": {
      "tvg-id": "SindhTVNews.pk",
      "tvg-country": "PK",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/ss/sindh_tv_news.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://streamone.simpaisa.com:8443/pitvlive1/sindhnews.smil/playlist.m3u8"
      }
    },
    "Ski": {
      "tvg-id": "SkiTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://content.weyyak.com/af0ecf95-8dc9-443d-9b4f-bc01eab7bd30/poster-image",
      "group-title": "Sports",
      "tvg-url": {
        "https://d2xeo83q8fcni6.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/SkiTV-Zee/193.m3u8"
      }
    },
    "SKI": {
      "tvg-id": "SKITV.us",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzA3OTUzMjlf/SkiTV_400x400.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://d2xeo83q8fcni6.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/SkiTV-SportsTribal/193.m3u8"
      }
    },
    "SKWAD": {
      "tvg-id": "Skwad.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/sv7WkKe.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=71"
      }
    },
    "Sky": {
      "tvg-id": "SkyNewsExtra1.uk",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Wl0iGsD.png",
      "group-title": "News",
      "tvg-url": {
        "https://skynewsau-live.akamaized.net/hls/live/2002689/skynewsau-extra1/master.m3u8",
        "https://skynewsau-live.akamaized.net/hls/live/2002690/skynewsau-extra2/master.m3u8",
        "https://skynewsau-live.akamaized.net/hls/live/2002691/skynewsau-extra3/master.m3u8",
        "https://skylivetab-i.akamaihd.net/hls/live/569779/tablive/sky1.m3u8",
        "https://skylivetab-i.akamaihd.net/hls/live/569779/tablive/sky2.m3u8",
        "https://skylivetab-i.akamaihd.net/hls/live/569779/tablive/stcsd.m3u8"
      }
    },
    "Slightly": {
      "tvg-id": "SlightlyOffIFC.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5e82547b6b3df60007fec2b5/colorLogoPNG.png",
      "group-title": "Comedy",
      "tvg-url": {
        "https://amc-slightly-off-by-amc-1.imdbtv.wurl.com/manifest/playlist.m3u8"
      }
    },
    "Slimo": {
      "tvg-id": "Slimo.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5c7e2783932c8368bdbfd8a5/playlist.m3u8"
      }
    },
    "Smile": {
      "tvg-id": "Smile.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/TBN_Smile_512x512.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "https://api.new.livestream.com/accounts/27460990/events/8266916/live.m3u8"
      }
    },
    "Smithsonian": {
      "tvg-id": "SmithsonianChannelAsia.us",
      "tvg-country": "AU;US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/weNdD7r.png",
      "group-title": "Science",
      "tvg-url": {"https://smithsonianaus-samsungau.amagi.tv/playlist.m3u8"}
    },
    "Snowy": {
      "tvg-id": "SnowyMountainsTelevision.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.mjh.nz/.images/tv.snowy-mountains.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dcunilive30-lh.akamaihd.net/i/dclive_1@535229/master.m3u8"
      }
    },
    "So": {
      "tvg-id": "SoYummy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Mq7PBDN.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxsoyummy/CDN/playlist.m3u8"
      }
    },
    "So...Real": {
      "tvg-id": "SoReal.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjU5ODE2MDdf/SoReal_240x240.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/VMzvtHhOQdOAzbV_hQKQbQ/master.m3u8"
      }
    },
    "Sony": {
      "tvg-id": "SonySix.in",
      "tvg-country": "IN",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/mmX4kPb.png",
      "group-title": "Undefined",
      "tvg-url": {"http://137.59.155.77:8088/hls/05sonysix.m3u8"}
    },
    "Spark": {
      "tvg-id": "SparkTv.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/vTGknv3.png",
      "group-title": "Undefined",
      "tvg-url": {"https://sparktv-samsunguk.amagi.tv/playlist.m3u8"}
    },
    "Spike": {
      "tvg-id": "SpikeAdventura.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.samsung.com/us/smg/content/dam/s7/home/televisions-and-home-theater/tvs/tvplus/all-channels/10062020/Spike_Aventura_190x190.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5d8d11baeb31c5a43b77bf59/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY"
      }
    },
    "Spirit": {
      "tvg-id": "SpiritTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/jR24flK.png",
      "group-title": "Religious",
      "tvg-url": {"https://cdnlive.myspirit.tv/LS-ATL-43240-2/index.m3u8"}
    },
    "Sports": {
      "tvg-id": "SportsTonight.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Nh4LyPv.png",
      "group-title": "Sports",
      "tvg-url": {
        "http://sports.ashttp9.visionip.tv/live/visiontvuk-sports-sportstonightlive-hsslive-25f-4x3-SD/chunklist.m3u8",
        "https://dai.google.com/linear/hls/event/9FKrAqCfRvGfn3tPbVFO-g/master.m3u8"
      }
    },
    "SportsGrid": {
      "tvg-id": "SportsGrid.us",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzA3OTUzNTZf/SportsGrid_512x512.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-xumosportsgrid/CDN/master.m3u8"
      }
    },
    "Sportskool": {
      "tvg-id": "SportskoolTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Sports",
      "tvg-url": {"https://a.jsrdn.com/broadcast/fabeab4b08/+0000/c.m3u8"}
    },
    "SportsMax": {
      "tvg-id": "SportsMax.jm",
      "tvg-country": "JM",
      "tvg-language": "English",
      "tvg-logo":
          "https://zap2it.tmsimg.com/h3/NowShowing/49559/s49559_h3_aa.png",
      "group-title": "Undefined",
      "tvg-url": {"http://cdn.tvmatic.net/sport.m3u8"}
    },
    "Sportswire": {
      "tvg-id": "Sportswire.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://provider-static.plex.tv/epg/images/ott_channels/logos/usatoday_sportswire_logo_dark_v2.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/8R__yZf7SR6yMb-oTXgbEQ/master.m3u8"
      }
    },
    "Sporty": {
      "tvg-id": "SportyStuffTV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://www.sportystuff.tv/src/img/logo-purple.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://ayozat-live.secure2.footprint.net/egress/bhandler/ayozat/sportystufftv/playlist.m3u8"
      }
    },
    "Spotlight": {
      "tvg-id": "Spotlight.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/g9zxqSd.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://spotlight-vizio.amagi.tv/playlist.m3u8",
        "https://securecontributions.sechls01.visionip.tv/live/securecontributions-securecontributions-spotlighttv-hsslive-25f-SD/chunklist.m3u8"
      }
    },
    "Spydar": {
      "tvg-id": "SpydarTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://raw.githubusercontent.com/geonsey/Free2ViewTV/master/images/logos/NostTV_SpydarTV.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://simultv.s.llnwi.net/n4s4/Spydar/interlink.m3u8"}
    },
    "Stadium": {
      "tvg-id": "Stadium.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/n38w3FD.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1234A-stadiumsports/CDN/master.m3u8"
      }
    },
    "Stingray": {
      "tvg-id": "StingrayAmbience.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/tHClafI.png",
      "group-title": "Music",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-viziostingrayambiance/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxstingrayclassicrock/CDN/playlist.m3u8",
        "https://dai.google.com/linear/hls/event/C-lfmhUVTGeDNWwU13_EgA/master.m3u8",
        "https://ott-linear-channels.stingray.com/v1/master/734895816ccb1e836f8c1e81f772244d9be0077c/128/master.m3u8",
        "https://ott-linear-channels.stingray.com/v1/master/734895816ccb1e836f8c1e81f772244d9be0077c/115/master.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxstingraygreatesthits/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxstingrayhitlist/CDN/playlist.m3u8",
        "https://stirr.ott-channels.stingray.com/155/master.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxstingrayhotcountry/CDN/playlist.m3u8",
        "https://dai.google.com/linear/hls/event/5bqbG8j7T_6_qMONC1SDsg/master.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxstingraynaturescape/CDN/playlist.m3u8",
        "https://dai.google.com/linear/hls/event/6RPZlzksTCyB1euPqLcBZQ/master.m3u8",
        "https://ott-linear-channels.stingray.com/v1/master/734895816ccb1e836f8c1e81f772244d9be0077c/104/master.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-vizioqelloconcerts/CDN/playlist.m3u8",
        "https://ott-linear-channels.stingray.com/v1/master/734895816ccb1e836f8c1e81f772244d9be0077c/102/master.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxstingraysoulstorm/CDN/playlist.m3u8",
        "https://ott-linear-channels.stingray.com/v1/master/734895816ccb1e836f8c1e81f772244d9be0077c/190/master.m3u8",
        "https://ott-linear-channels.stingray.com/v1/master/734895816ccb1e836f8c1e81f772244d9be0077c/133/master.m3u8"
      }
    },
    "STIRR": {
      "tvg-id": "STIRRAmericanClassics.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://americanclassics.tv/wp-content/uploads/2019/02/ac-logo-shield-2-e1550875435641-524x521.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/0e06oV-NTI2ygS2MRQk9ZA/master.m3u8",
        "https://dai.google.com/linear/hls/event/e1QjWFRNSR2YFYGsPbkfgg/master.m3u8",
        "https://dai.google.com/linear/hls/event/N3c94WZQQq2fruixzfcCUQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/28oUp4GcQ-u49U4_jjC4Iw/master.m3u8",
        "https://dai.google.com/linear/hls/event/PFJ1Jhd6SsSMcu3qq86wzQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/4aD5IJf0QgKUJwPbq2fngg/master.m3u8",
        "https://dai.google.com/linear/hls/event/uxPBn5ErTQ-FOjxIYle2PA/master.m3u8",
        "https://dai.google.com/linear/hls/event/fD3VBzTxRXGz-v7HV0vryQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/qvOGhZEeQh-s6TMFz7dVcg/master.m3u8",
        "https://dai.google.com/linear/hls/event/zDh7VBx8S7Sog5vzcXuehg/master.m3u8",
        "https://dai.google.com/linear/hls/event/-4GLQIcZTUWzP8vDAXNQsQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/jCNW8TtPRe6lnJMMVBZWVA/master.m3u8",
        "https://dai.google.com/linear/hls/event/kJPGlFKuS0itUoW7TfuDYQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/FKoa3RaEQxyyrf8PfPbgkg/master.m3u8",
        "https://dai.google.com/linear/hls/event/tlvrrqidRaG0KbLN4Hd5mg/master.m3u8",
        "https://dai.google.com/linear/hls/event/4RH6FntvSLOIv5FB-p4I8w/master.m3u8",
        "https://dai.google.com/linear/hls/event/EXltT2IOQvCIn8v23_15ow/master.m3u8",
        "https://dai.google.com/linear/hls/event/do9arGJBTD--KARQ056kpw/master.m3u8",
        "https://dai.google.com/linear/hls/event/zPJC-rOUTg28uymLdmYw5w/master.m3u8",
        "https://dai.google.com/linear/hls/event/YLDvM8DGQyqsYnDsgxOBPQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/kMNMCCQsQYyyk2n2h_4cNw/master.m3u8",
        "https://dai.google.com/linear/hls/event/fLqJePs_QR-FRTttC8fMIA/master.m3u8",
        "https://dai.google.com/linear/hls/event/7_v7qMjnQWGZShy2eOvR5g/master.m3u8",
        "https://dai.google.com/linear/hls/event/sHnor7AERX60rGA1kR_wPA/master.m3u8",
        "https://dai.google.com/linear/hls/event/ZaLvGYKiTfuSYgJuBZD67Q/master.m3u8",
        "https://dai.google.com/linear/hls/event/btXotLiMRvmsa5J5AetBGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/wV5ExXM9RxabBzbWnVv9RA/master.m3u8",
        "https://dai.google.com/linear/hls/event/QLfrYVtERpCnzM7qE_PkUw/master.m3u8",
        "https://dai.google.com/linear/hls/event/nqvIiznDQO60CBNaJ5mmdQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/MYhAOCTqQA6QFBdc1xwULQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/Exp7zxEPSLWuEhMoD2voOg/master.m3u8",
        "https://dai.google.com/linear/hls/event/Ep4QBzH-TKW0iLhPVGuCvA/master.m3u8",
        "https://dai.google.com/linear/hls/event/bERQw8-YRoK3MtJ0UUaI5w/master.m3u8",
        "https://dai.google.com/linear/hls/event/6Ll-qQyAQlWgCt4PhH11Kw/master.m3u8",
        "https://dai.google.com/linear/hls/event/tFAJ7xPcTYaLKwIfUA-JIw/master.m3u8",
        "https://dai.google.com/linear/hls/event/Ybz6nJKqSS2fcQYflsmpRw/master.m3u8",
        "https://dai.google.com/linear/hls/event/leOKmL9fQ6eZyhdoROSh5Q/master.m3u8",
        "https://dai.google.com/linear/hls/event/a6lsWNYDQwyM9fjytUCrcw/master.m3u8",
        "https://dai.google.com/linear/hls/event/trvuY4TqQCmrAKFTlr6tPQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/B6RsXGIZSVqeVZGZIEZESg/master.m3u8",
        "https://dai.google.com/linear/hls/event/W_NyV_9eQ-qa0XDSMfYkEg/master.m3u8",
        "https://dai.google.com/linear/hls/event/xtKyBDIFSZa6cT4Of9yaGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/BXZlH0kXTeGczlQ49-0QFQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/yDGZP35hTsqdf2rwaP1BGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/knBsxnquSYqFXTP_UzcGgw/master.m3u8",
        "https://dai.google.com/linear/hls/event/MqeaRgFBR2WJ_40ngbDruQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/n3PVAFmPTJSVYjdSVf7XZw/master.m3u8",
        "https://dai.google.com/linear/hls/event/Fwm4J95UQi67l2FEV7N5kQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/PPMxI7GZSRG6Kgkp2gSF1g/master.m3u8",
        "https://dai.google.com/linear/hls/event/1g9qH9IOSIGGwAqw8fPzmw/master.m3u8",
        "https://dai.google.com/linear/hls/event/jWaxnXHPQjGX1yTxuFxpuw/master.m3u8",
        "https://dai.google.com/linear/hls/event/0P8RZiJkSBWfVDtjy-IiIQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/ARX9M-X8RieADdAEYPXNuA/master.m3u8",
        "https://dai.google.com/linear/hls/event/IG9ThaPaTwCojeoEWVNZRQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/QuSOUXM4RPaC5zL4J8ZY3w/master.m3u8",
        "https://dai.google.com/linear/hls/event/pRd-k6tZSiCRsw_f51Vcvg/master.m3u8",
        "https://dai.google.com/linear/hls/event/jH-4z3EkQO-fLYYgjX7d3g/master.m3u8",
        "https://dai.google.com/linear/hls/event/CAU96LSyR_e7MSeK6UTmGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/qJU_NkxXQoCbACvG5BWrXQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/OaqAqJ0yQPiEIUIYqD7IGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/5hLTCUyrQcS3B-NF8fNp-g/master.m3u8",
        "https://dai.google.com/linear/hls/event/bjWdbDzwTMOMd8Wmxl4rwg/master.m3u8",
        "https://dai.google.com/linear/hls/event/86JIujPNRWiVvtfzksp8QQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/0Zb5SSQcTme6P7FYwwAwcQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/FftwN8CLTnaX1pFHztXlYw/master.m3u8",
        "https://dai.google.com/linear/hls/event/1bMiswhQQxqH-X8D3qbmKQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/TIQuLmldSj2SqS8y2ud9Xg/master.m3u8",
        "https://dai.google.com/linear/hls/event/VLEduzwwQfGSwV4eNdkj0g/master.m3u8",
        "https://dai.google.com/linear/hls/event/0Uj4AmiOSw6oTX9ilyV2rQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/VGpvNIxIQRO7PXYRy7P0qw/master.m3u8",
        "https://dai.google.com/linear/hls/event/IaAlq3prS8Ghiq0FhLtzGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/O5W1HC47QEKGc5tyscvsLw/master.m3u8",
        "https://dai.google.com/linear/hls/event/HSX_ZpxDQNy5aXzJHjhGGQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/1QSZA8OjS1y2Q64uTl5vWQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/KPOafkGTRle7jOcRb9_KFw/master.m3u8",
        "https://dai.google.com/linear/hls/event/5kbHZRGGS--RHp41xaUJHQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/_VmeKujXTf-nc9Lr2NO6tA/master.m3u8",
        "https://dai.google.com/linear/hls/event/ji4LMCwtRCOw3TrRUKlQMQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/dcaYfE2nRnqC6eAvCFWfzQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/jlf2tRLPTg2xjMtKe5ey-w/master.m3u8",
        "https://dai.google.com/linear/hls/event/Ae0L5AucTcqefaIvaS504A/master.m3u8",
        "https://dai.google.com/linear/hls/event/FJejnzFjSFGpaogi0GzPyw/master.m3u8",
        "https://dai.google.com/linear/hls/event/8JiQCLfVQw6d7uCYt0qDJg/master.m3u8",
        "https://dai.google.com/linear/hls/event/AaFxJXOhQl-BsTVC9OCunQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/NJK_yxrcTBqULaHt-wi0Wg/master.m3u8",
        "https://dai.google.com/linear/hls/event/83L2OqtGSZ6lbWt8ODomWg/master.m3u8",
        "https://dai.google.com/linear/hls/event/9cq79TtPR6WbyaQGeDlHjA/master.m3u8",
        "https://dai.google.com/linear/hls/event/Hx_PEMEsSzOCcZgy0Tq2YQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/KsvJAc81Qoewj6opYso6Fw/master.m3u8",
        "https://dai.google.com/linear/hls/event/TDUiZE57Q3-CS7Its4kLDQ/master.m3u8",
        "https://playoutengine.sinclairstoryline.com/playout/242b1153-0129-484e-8ec8-378edd691537.m3u8",
        "https://dai.google.com/linear/hls/event/Va1QEor0SWO_x_SQNyaF0w/master.m3u8",
        "https://dai.google.com/linear/hls/event/EpqgwRlpQKq73ySVSohJWA/master.m3u8",
        "https://dai.google.com/linear/hls/event/tdSCy5u2R5WtCLXX4NwDtg/master.m3u8",
        "https://dai.google.com/linear/hls/event/3NTKKQBuQtaIrcUBj20lyg/master.m3u8",
        "https://dai.google.com/linear/hls/event/akursTHNTo6qGf1TtlHNsw/master.m3u8",
        "https://dai.google.com/linear/hls/event/fAFfTnCAT2K8d83sYsA-cw/master.m3u8",
        "https://dai.google.com/linear/hls/event/YoBM0ae5Q62TPdrfFHS4RQ/master.m3u8",
        "https://dai.google.com/linear/hls/event/1fO2zbpBRyy6S5yve_fnaw/master.m3u8",
        "https://dai.google.com/linear/hls/event/f-zA7b21Squ7M1_sabGfjA/master.m3u8",
        "https://dai.google.com/linear/hls/event/rmBGeSwhQEG64TrT0_JO2A/master.m3u8",
        "https://dai.google.com/linear/hls/event/-V3XSvA2Sa6e8h7cnHXB8w/master.m3u8",
        "https://dai.google.com/linear/hls/event/HJAq3zH1SUy_B6fb1j80_Q/master.m3u8",
        "https://dai.google.com/linear/hls/event/dKG_ZFd_S82FPgNxHmhdJw/master.m3u8",
        "https://dai.google.com/linear/hls/event/Fe9LYYCFR5Csif-I5dyMHg/master.m3u8",
        "https://dai.google.com/linear/hls/event/cJFuxTLzQUqbGGrqTMBJuw/master.m3u8",
        "https://dai.google.com/linear/hls/event/NpkpFaFVRqaQwSkpPdramg/master.m3u8",
        "https://dai.google.com/linear/hls/event/roEbn_l7Tzezwy22F1NSfA/master.m3u8",
        "https://dai.google.com/linear/hls/event/r9VoxPU7TYmpydEn2ZR0jA/master.m3u8",
        "https://dai.google.com/linear/hls/event/7LAMGFcmQN6iFJjNoHWXrg/master.m3u8",
        "https://dai.google.com/linear/hls/event/RNiQYO3aTjOqTe8od1zlqA/master.m3u8",
        "https://dai.google.com/linear/hls/event/_PDxBUttQYqkxPnmh3VOZA/master.m3u8",
        "https://dai.google.com/linear/hls/event/NeKNJHuzSeCiN_7Fcuo83Q/master.m3u8",
        "http://stadium.sinclair.wurl.com/manifest/playlist.m3u8",
        "https://ott-linear-channels.stingray.com/hls/stirr/104.m3u8",
        "https://ott-linear-channels.stingray.com/hls/stirr/102.m3u8",
        "https://ott-linear-channels.stingray.com/hls/stirr/190.m3u8",
        "https://ott-linear-channels.stingray.com/hls/stirr/133.m3u8",
        "https://playoutengine.sinclairstoryline.com/playout/9f87522c-5a0e-4ff4-b82c-d5564216132f.m3u8",
        "https://dai.google.com/linear/hls/event/MdbYPXWRStmMq1DaQhsBUw/master.m3u8",
        "https://dai.google.com/linear/hls/event/3dbJrQmVT_-psb-KBYuKQA/master.m3u8",
        "https://dai.google.com/linear/hls/event/ZP8ZMv95Q0Gm9EiyYOGHAA/master.m3u8",
        "https://dai.google.com/linear/hls/event/YF2jfXh_QROPxoHEwp1Abw/master.m3u8",
        "https://dai.google.com/linear/hls/event/Wu11mwhnTKGNhwZimEK6Jg/master.m3u8",
        "https://dai.google.com/linear/hls/event/0DG8p66IRES7ZzEe1WJS-w/master.m3u8"
      }
    },
    "Street": {
      "tvg-id": "StreetMusic4U.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/DVfEmq7.png",
      "group-title": "Music",
      "tvg-url": {
        "https://59d39900ebfb8.streamlock.net/streetmusic/streetmusic/playlist.m3u8"
      }
    },
    "STV": {
      "tvg-id": "STV.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://images.stv.tv/player/master/617962-stv.png",
      "group-title": "Undefined",
      "tvg-url": {"https://csm-e-stv.tls1.yospace.com/csm/live/139900483.m3u8"}
    },
    "STV+1": {
      "tvg-id": "STVPlus1.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://images.stv.tv/player/master/607358-stv-1.jpg",
      "group-title": "Undefined",
      "tvg-url": {"https://csm-e-stv.tls1.yospace.com/csm/live/181023311.m3u8"}
    },
    "Sundance": {
      "tvg-id": "SundanceTVEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/en/thumb/6/6c/SundanceTV.svg/800px-SundanceTV.svg.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://bcovlive-a.akamaihd.net/d2fcbeaead4b425fa13d4fec961fc47a/us-east-1/6240731308001/playlist.m3u8"
      }
    },
    "Super": {
      "tvg-id": "SuperRadyoDZBB.ph",
      "tvg-country": "PH",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://stream.gmanews.tv/ioslive/livestream/chunklist.m3u8?wowzasessionid=693701106"
      }
    },
    "Supreme": {
      "tvg-id": "SupremeMasterTV.vn",
      "tvg-country": "VN",
      "tvg-language": "English;Vietnamese",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://lbs-us1.suprememastertv.com/720p.m3u8"}
    },
    "Swamiji": {
      "tvg-id": "SwamijiTV.at",
      "tvg-country": "AT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ygkBFYT.jpg",
      "group-title": "Outdoor",
      "tvg-url": {
        "https://stream.swamiji.tv/YogaIPTV/smil:YogaStream.smil/playlist.m3u8"
      }
    },
    "Sword": {
      "tvg-id": "SwordandShield.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/xwHhiAc.png",
      "group-title": "Documentary",
      "tvg-url": {"https://a.jsrdn.com/broadcast/9e63a1b236/+0000/c.m3u8"}
    },
    "SYFY": {
      "tvg-id": "SyfyEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.directv.com/images/logos/channels/dark/large/905.png",
      "group-title": "Undefined",
      "tvg-url": {"http://trn03.tulix.tv/teleup-syfy/playlist.m3u8"}
    },
    "Tankee": {
      "tvg-id": "Tankee.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/oMWbZ8n.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?app_bundle=com.plexapp.desktop&app_domain=app.plex.tv&app_name=plex&content_series=5f12332eeca6a20040b328e5&content_title=MorUy57ijWhGe4ixZb_T&coppa=1&custom4=plex&device_make=Windows&device_model=Firefox&did=df8e1a36-847d-5096-86a7-3803ed330ede&gdpr=1&h=691&live=1&network_id=39&us_privacy=1---&w=1224"
      }
    },
    "Taste": {
      "tvg-id": "TasteItTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stitcheraws.unreel.me/wse-node02.powr.com/live/5af61f59d5eeee7af3d1db8f/playlist.m3u8"
      }
    },
    "Tastemade": {
      "tvg-id": "TastemadeUK.us",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/6086d4fb828c94000771339e/colorLogoPNG.png",
      "group-title": "Cooking",
      "tvg-url": {
        "https://tastemade-gb.samsung.wurl.com/manifest/playlist.m3u8",
        "https://tastemade-freetv16min-plex.amagi.tv/hls/amagi_hls_data_tastemade-tastemadefreetv16-plex/CDN/playlist.m3u8",
        "https://tastemadeintaus-smindia.amagi.tv/playlist.m3u8",
        "https://tastemadetravel-vizio.amagi.tv/playlist.m3u8"
      }
    },
    "TBD.": {
      "tvg-id": "TBD.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Fbzbq1y.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://content.uplynk.com/channel/1831163f97674328ad9f4b4814ed39c5.m3u8"
      }
    },
    "TBN": {
      "tvg-id": "TBNAsia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/QyMAyrs.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "http://210.210.155.35/qwr9ew/s/s39/02.m3u8",
        "https://api.new.livestream.com/accounts/27460990/events/8266909/live.m3u8",
        "https://api.new.livestream.com/accounts/27460990/events/8266920/live.m3u8",
        "http://62.32.67.187:1935/WEB_Ukraine24/Ukraine24.stream/playlist.m3u8"
      }
    },
    "TBS": {
      "tvg-id": "TBSEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/TBS_Network-logo.svg/320px-TBS_Network-logo.svg.png",
      "group-title": "General",
      "tvg-url": {
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023172/tbseast/slate/VIDEO_0_3564000.m3u8",
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023174/tbswest/slate/VIDEO_0_3564000.m3u8"
      }
    },
    "TCM": {
      "tvg-id": "TCMEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/sbrSfhC.jpg",
      "group-title": "Classic",
      "tvg-url": {
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023186/tcmeast/noslate/VIDEO_1_5128000.m3u8",
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023187/tcmwest/noslate/VIDEO_1_5128000.m3u8"
      }
    },
    "TD": {
      "tvg-id": "TDAmeritradeNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/TDAmeritradeNetwork_284x284.png?raw",
      "group-title": "Business",
      "tvg-url": {
        "https://content.uplynk.com/channel/f9aafa1f132e40af9b9e7238bc18d128.m3u8"
      }
    },
    "Tea": {
      "tvg-id": "TeaTV2.vn",
      "tvg-country": "VN",
      "tvg-language": "English;Vietnamese",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://livefta.malimarcdn.com/ftaedge00/teatv2.sdp/playlist.m3u8"
      }
    },
    "Tehelka": {
      "tvg-id": "TehelkaTV.in",
      "tvg-country": "IN",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/en/1/15/Sangsad_Television_Logo.jpg",
      "group-title": "General",
      "tvg-url": {
        "https://cdn.appv.jagobd.com:444/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI/tehelkatv.stream/playlist.m3u8"
      }
    },
    "Telearuba": {
      "tvg-id": "Telearuba.aw",
      "tvg-country": "AW",
      "tvg-language": "Dutch;English;Papiamento",
      "tvg-logo": "https://i.imgur.com/wjwxp3K.png",
      "group-title": "General",
      "tvg-url": {
        "http://cdn.setar.aw:1935/Telearuba/smil:telearuba.smil/playlist.m3u8"
      }
    },
    "TeleCuraçao": {
      "tvg-id": "TeleCuracao.cw",
      "tvg-country": "CW",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9D9G4co.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://ott.streann.com:8080/loadbalancer/services/public/channels/5ed71e232cdc24a3d08cd6de/playlist.m3u8"
      }
    },
    "TeleRadyo": {
      "tvg-id": "TeleRaydo.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/yxKb7yF.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://abscbn-ono.akamaized.net/midroll/amagi_hls_data_abscbnAAA-abscbn-teleradyo-oando/CDN/playlist.m3u8"
      }
    },
    "Teletubbies": {
      "tvg-id": "Teletubbies.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FlCXGip.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuteletubbies/CDN/playlist.m3u8"
      }
    },
    "Tempe": {
      "tvg-id": "Tempe11.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Rgy4qWN.gif",
      "group-title": "Undefined",
      "tvg-url": {
        "https://granicusliveus1-a.akamaihd.net/tempe/G0355_003/playlist.m3u8"
      }
    },
    "Tennis": {
      "tvg-id": "TennisChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://ott-gateway.sinclairstoryline.com/optimized/90/17ec0fba-d4ec-4421-a665-c8dcab0f80ee-small3x1_TheTChannel.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://playoutengine.sinclairstoryline.com/playout/9f87522c-5a0e-4ff4-b82c-d5564216132f/g.m3u8",
        "https://playoutengine.sinclairstoryline.com/playout/f2f8b269-dd85-4434-bdd3-b3a64ca9cd60.m3u8",
        "https://playoutengine.sinclairstoryline.com/playout/e1838c44-dcb6-47b5-93d4-a0547833518f.m3u8"
      }
    },
    "TG": {
      "tvg-id": "TGJunior.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/cZ4pGmk.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=31"
      }
    },
    "The": {
      "tvg-id": "TheArchive.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjg0MDgzNDBf/TheArchive_300x300.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxthearchive/CDN/playlist.m3u8",
        "http://asylum-stirr.amagi.tv/playlist.m3u8",
        "https://live.lwcdn.com/live/amlst:ALH8QFrg_all/playlist.m3u8",
        "https://d46c0ebf9ef94053848fdd7b1f2f6b90.mediatailor.eu-central-1.amazonaws.com/v1/master/81bfcafb76f9c947b24574657a9ce7fe14ad75c0/live-prod/14c063cc-8be5-11eb-a7de-bacfe1f83627/0/master.m3u8?country=DE&optout=0&uid=749544ec3d9a45d48c600d03cac91dfd&vendor=philips",
        "https://bobross-xumous-ingest.cinedigm.com/master.m3u8",
        "https://csm-e-boxplus.tls1.yospace.com/csm/extlive/boxplus01,thebox-alldev.m3u8?yo.up=http://boxtv-origin-elb.cds1.yospace.com/uploads/thebox/",
        "https://carolburnett-roku.amagi.tv/playlist.m3u8",
        "https://cdn.appv.jagobd.com:444/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI/thechanneltv.stream/playlist.m3u8",
        "https://dai.google.com/linear/hls/event/3EEsfZhASryigfuSpHdfKg/master.m3u8",
        "https://studio71-craftistry-roku.amagi.tv/playlist.m3u8",
        "https://16live00.akamaized.net/CW/index.m3u8",
        "http://trn03.tulix.tv/teleup-cw-whp/playlist.m3u8",
        "http://trn03.tulix.tv/teleup-N8qwnqgUq2/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxthedesignnetwork/CDN/playlist.m3u8",
        "https://livestreamdirect-edgetv.mediaworks.nz/edgetv.m3u8",
        "https://dai.google.com/linear/hls/event/OYH9J7rZSK2fabKXWAYcfA/master.m3u8",
        "https://dai.google.com/linear/hls/event/nX39-giHRPuKQiVAhua0Kg/master.m3u8",
        "https://bcovlive-a.akamaihd.net/1ad942d15d9643bea6d199b729e79e48/us-east-1/6183977686001/playlist.m3u8",
        "http://daruttarbiyah.srfms.com:1935/daruttarbiyah/livestream/playlist.m3u8",
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=43",
        "http://service-stitcher.clusters.pluto.tv/v1/stitch/embed/hls/channel/5aea40b35126c2157123aa64/master.m3u8?advertisingId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&appVersion=unknown&deviceDNT=0&deviceId=91a6ae51-6f9d-4fbb-adb0-bdfffa44693e&deviceLat=0&deviceLon=0&deviceMake=samsung&deviceModel=samsung&deviceType=samsung-tvplus&deviceUA=samsung/SM-T720/10&deviceVersion=unknown&embedPartner=samsung-tvplus&profileFloor=&profileLimit=&samsung_app_domain=https://play.google.com/store/apps/details?id=com.samsung.android.tvplus&samsung_app_name=Mobile+TV+Plus&us_privacy=1YNY",
        "https://link.frontlayer.com/services/hls2/fl619843/index.m3u8",
        "https://cloud.streamcomedia.com/parliamentarychannel/smil:parliamentarychannel_streams.smil/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-petcollective/CDN/master.m3u8",
        "https://hls.xumo.com/channel-hls/v1/bmneuerw7j9k5lfc/9999330/master.m3u8",
        "https://5fd5567570c0e.streamlock.net/theretrochannel/stream/playlist.m3u8",
        "http://granicusliveus12-a.akamaihd.net/rockvillemd/G0458_001/playlist.m3u8",
        "https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/master.m3u8",
        "http://147.174.13.196/live/WIFI-1296k-540p/WIFI-1296k-540p.m3u8",
        "https://dai.google.com/linear/hls/event/v51OvZmXQOizl-KOgpXw1Q/master.m3u8",
        "https://a.jsrdn.com/broadcast/e6bdcb5ae9/+0000/c.m3u8",
        "https://d155hi8td9k2ns.cloudfront.net/out/wapo-medialive3-rtmp/live.m3u8",
        "https://tyt-xumo-us.amagi.tv/hls/amagi_hls_data_tytnetwor-tyt-xumo/CDN/master.m3u8"
      }
    },
    "This": {
      "tvg-id": "ThisTVNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/FQCVaSR.png",
      "group-title": "Undefined",
      "tvg-url": {"https://cdn.igocast.com/channel11_hls/channel11_master.m3u8"}
    },
    "Three": {
      "tvg-id": "Three.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/tt/tv3_nz.png",
      "group-title": "General",
      "tvg-url": {"https://livestreamdirect-three.mediaworks.nz/three.m3u8"}
    },
    "Thrill": {
      "tvg-id": "Thrill.hk",
      "tvg-country": "SAS",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/isr5jto.png",
      "group-title": "Movies",
      "tvg-url": {"http://45.126.83.51/qwr9ew/s/s34/02.m3u8"}
    },
    "Time": {
      "tvg-id": "TimeLine.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/AzZhwWR.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://timeline-samsung-uk.amagi.tv/playlist.m3u8",
        "https://lds-timeline-samsungau.amagi.tv/playlist.m3u8"
      }
    },
    "Timeline": {
      "tvg-id": "Timeline.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/J8qVUjM.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://lds-timeline-plex.amagi.tv/playlist.m3u8"}
    },
    "TJC": {
      "tvg-id": "TJC.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/cFlNhjV.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://cdn-shop-lc-01.akamaized.net/Content/HLS_HLS/Live/channel(TJCOTT)/index.m3u8"
      }
    },
    "TMZ": {
      "tvg-id": "TMZ.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/wzBD6fy.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxtmz/CDN/playlist.m3u8"
      }
    },
    "TNT": {
      "tvg-id": "TNTEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/xvL9KPI.png",
      "group-title": "General",
      "tvg-url": {
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023168/tnteast/slate/VIDEO_0_3564000.m3u8",
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023170/tntwest/slate/VIDEO_0_3564000.m3u8"
      }
    },
    "Today": {
      "tvg-id": "TodayAD.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5d695f7db53adf96b78e7ce3/colorLogoPNG.png",
      "group-title": "News",
      "tvg-url": {
        "https://live-news-manifest.tubi.video/live-news-manifest/csm/extlive/tubiprd01,Cloudfront-Today.m3u8"
      }
    },
    "Toon": {
      "tvg-id": "ToonGoggles.us",
      "tvg-country": "AU;US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/oyIMxzM.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxtoongoggles/CDN/playlist.m3u8"
      }
    },
    "Top": {
      "tvg-id": "TopStoriesbyNewsy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/5459795fc9f133a519bc0bef/colorLogoPNG.png",
      "group-title": "News",
      "tvg-url": {
        "http://content.uplynk.com/channel/04cce35dcd994bbc82d61805ae67a65f.m3u8"
      }
    },
    "Toronto": {
      "tvg-id": "Toronto360TV.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/PkWndsv.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://toronto3.live247stream.com/toronto360/tv/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://api.new.livestream.com/accounts/12638076/events/8488790/live.m3u8"
      }
    },
    "Trace": {
      "tvg-id": "TraceSportStars.fr",
      "tvg-country": "ES",
      "tvg-language": "English;Spanish",
      "tvg-logo":
          "https://cdn.mitvstatic.com/channels/co_trace-sports-stars_m.png",
      "group-title": "Sports",
      "tvg-url": {
        "http://tracesportstars-samsunges.amagi.tv/hls/amagi_hls_data_samsunguk-tracesport-samsungspain/CDN/playlist.m3u8"
      }
    },
    "Tranquil": {
      "tvg-id": "TranquilThunderstorms.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {"https://a.jsrdn.com/broadcast/18b42f9aef/+0000/c.m3u8"}
    },
    "Travel": {
      "tvg-id": "TravelFoodTV.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Ot9wh52.png",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://nrpus.bozztv.com/36bay2/gusa-moviemagictv/index.m3u8"
      }
    },
    "Trinity": {
      "tvg-id": "TrinityChannel.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.ytimg.com/vi/_Jt1yB1y-MM/hqdefault.jpg",
      "group-title": "Religious",
      "tvg-url": {"http://rtmp1.abnsat.com/hls/trinity.m3u8"}
    },
    "TRT": {
      "tvg-id": "TRTWorld.tr",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.ibb.co/phw4pjP/mjTjJ1N.png",
      "group-title": "News",
      "tvg-url": {"https://tv-trtworld.live.trt.com.tr/master.m3u8"}
    },
    "TruTV": {
      "tvg-id": "TruTVEast.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/trutv.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023176/trueast/slate/VIDEO_0_3564000.m3u8",
        "https://tve-live-lln.warnermediacdn.com/hls/live/2023178/truwest/slate/VIDEO_0_3564000.m3u8"
      }
    },
    "TSTV": {
      "tvg-id": "TSTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/IX8uInV.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://tstv-stream.tsm.utexas.edu/hls/livestream_hi/index.m3u8"
      }
    },
    "TV1": {
      "tvg-id": "TV1.zm",
      "tvg-country": "ZM",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.znbc.co.zm/wp-content/uploads/2018/10/cropped-ZNBC-logo-192x192.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dcunilive159-lh.akamaihd.net/i/dclive_1@1013574/master.m3u8"
      }
    },
    "TV4": {
      "tvg-id": "TV4.zm",
      "tvg-country": "ZM",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.znbc.co.zm/wp-content/uploads/2018/10/cropped-ZNBC-logo-192x192.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dcunilive258-lh.akamaihd.net/i/dclive_1@348579/master.m3u8"
      }
    },
    "TV": {
      "tvg-id": "TV16Toronto.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/brxkNbw.png",
      "group-title": "Undefined",
      "tvg-url": {"http://rtmp.smartstream.video:1935/capco/tv29/playlist.m3u8"}
    },
    "TV47": {
      "tvg-id": "TV47.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo":
          "https://tv47.co.ke/wp-content/uploads/2020/10/tv-47-logo-600-e1617870103726.png",
      "group-title": "General",
      "tvg-url": {
        "http://free.fullspeed.tv/iptv-query?streaming-ip=https://www.twitch.tv/tv47kenya/",
        "https://brics.bonus-tv.ru/cdn/brics/english/playlist.m3u8"
      }
    },
    "TVNZ": {
      "tvg-id": "TVNZ1.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/58puzcK.png",
      "group-title": "General",
      "tvg-url": {
        "https://d2ce82tpc3p734.cloudfront.net/v1/master/b1f4432f8f95be9e629d97baabfed15b8cacd1f8/TVNZ_1/master.m3u8",
        "https://duoak7vltfob0.cloudfront.net/v1/master/b1f4432f8f95be9e629d97baabfed15b8cacd1f8/TVNZ_2/master.m3u8",
        "https://dayqb844napyo.cloudfront.net/v1/master/b1f4432f8f95be9e629d97baabfed15b8cacd1f8/TVNZ_Duke/master.m3u8"
      }
    },
    "TVOKids": {
      "tvg-id": "TVOKids.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Tvokids-logo.svg/512px-Tvokids-logo.svg.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://bcsecurelivehls-i.akamaihd.net/hls/live/623607/15364602001/tvokids/master.m3u8"
      }
    },
    "TVRI": {
      "tvg-id": "TVRISportHD.id",
      "tvg-country": "ID",
      "tvg-language": "English;Indonesian",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/TVRILogo2019.svg/320px-TVRILogo2019.svg.png",
      "group-title": "Sports",
      "tvg-url": {
        "http://118.97.50.107/Content/HLS/Live/Channel(TVRI4)/index.m3u8"
      }
    },
    "TVS": {
      "tvg-id": "TVS.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://paraguaype.com/wp-content/uploads/2016/07/tvs-encarnacion-televisora-del-sur-en-vivo-online.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://rds3.desdeparaguay.net/tvs/tvs/playlist.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsboxing/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsmystery/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsclassicmovies/index.m3u8",
        "http://rpn1.bozztv.com/36bay2/gusa-tvs/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsdriveinmovie/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-TVSFamilyChannel/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-TVSFilmNoir/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsfrontpagedetective/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-hitops/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvshollywoohistory/mono.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvshorror/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-TVSInspirationalNetwork/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsmainst/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsmusic/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-nostalgia/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsNostalgiaMovies/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-petparadenetwork/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-TVSCartoonNetwork/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsgameshow/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsrarecollectibles/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsselect/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvssilodiscount/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvssports/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvssportsbureau/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvstallyho/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tavern/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvstn/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-TVSTodayHomeEntertainment/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvstravel/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvsturbo/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvswesternmovies/index.m3u8",
        "https://rpn1.bozztv.com/36bay2/gusa-tvswsn/index.m3u8"
      }
    },
    "UCTV": {
      "tvg-id": "UCTVUniversityofCalifornia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/ehMz9T5.png",
      "group-title": "Education",
      "tvg-url": {
        "https://59e8e1c60a2b2.streamlock.net/509/509.stream/playlist.m3u8"
      }
    },
    "UN": {
      "tvg-id": "UNWebTV.us",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/lPyJhBN.png",
      "group-title": "News",
      "tvg-url": {
        "https://cdnapi.kaltura.com/p/2503451/sp/250345100/playManifest/entryId/1_gb6tjmle/protocol/https/format/applehttp/a.m3u8"
      }
    },
    "Unbeaten": {
      "tvg-id": "Unbeaten.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/LmkNt3v.png",
      "group-title": "Sports",
      "tvg-url": {
        "https://unbeaten-roku.amagi.tv/playlist.m3u8",
        "https://d179m5eq83yziw.cloudfront.net/live3/unbeaten_tv/bitrate1-clear.isml/manifest.m3u8"
      }
    },
    "Univision": {
      "tvg-id": "KDTVDT1.us",
      "tvg-country": "US-CA",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/kk/kdtv_san_francisco.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/lTSACKfkQNSrCSBM_hE-mg/master.m3u8"
      }
    },
    "UNTV": {
      "tvg-id": "UNTV.ph",
      "tvg-country": "PH",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://cdn.untvweb.com/live-stream/untvweb.m3u8",
        "https://cdn.untvweb.com/live-stream/playlist.m3u8"
      }
    },
    "US": {
      "tvg-id": "USSPORTTennisPlus1.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://play-lh.googleusercontent.com/0O5uwlXTVx_j5bG-D6CKE0pXASiTj5CQ2maDRTKJUseFmaj3RNEnKbRCFUuxjFHO03s",
      "group-title": "Sports",
      "tvg-url": {
        "https://playoutengine.sinclairstoryline.com/playout/f2f8b269-dd85-4434-bdd3-b3a64ca9cd60/g.m3u8"
      }
    },
    "USA": {
      "tvg-id": "USAToday.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://cdn.freelogovectors.net/wp-content/uploads/2020/11/usa-today-logo-768x768.png",
      "group-title": "News",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/gJJhuFTCRo-HAHYsffb3Xg/master.m3u8"
      }
    },
    "UTV": {
      "tvg-id": "UTV.ke",
      "tvg-country": "KE",
      "tvg-language": "English",
      "tvg-logo": "https://kenyatv.tech/wp-content/uploads/2021/04/UTV-1.jpg",
      "group-title": "General",
      "tvg-url": {
        "https://goliveafrica.media:9998/live/6049f726546e1/index.m3u8"
      }
    },
    "Uvagut": {
      "tvg-id": "isumatv.ca",
      "tvg-country": "CA",
      "tvg-language": "English;Inuktitut",
      "tvg-logo": "https://i.imgur.com/RR7ATr2.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://dee7mwgg9dzvl.cloudfront.net/hls/uvagut/playlist.m3u8"
      }
    },
    "V2BEAT": {
      "tvg-id": "V2BEAT.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://graph.facebook.com/vtwobeat/picture?width",
      "group-title": "Music",
      "tvg-url": {"https://abr.de1se01.v2beat.live/playlist.m3u8"}
    },
    "Vanity": {
      "tvg-id": "VanityFair.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/KMUYfnz.jpg",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxvanityfair/CDN/playlist.m3u8"
      }
    },
    "Vasantham": {
      "tvg-id": "Vasantham.sg",
      "tvg-country": "SG",
      "tvg-language": "English;Tamil",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://d39v9xz8f7n8tk.cloudfront.net/hls/clr4ctv_vsnthm/master.m3u8"
      }
    },
    "VENN": {
      "tvg-id": "VENN.au",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/H8ucPJd.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://venntv-samsungau.amagi.tv/playlist.m3u8",
        "https://d80z5qf1qyhbf.cloudfront.net/playlist.m3u8"
      }
    },
    "Very": {
      "tvg-id": "VeryAlabama.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "https://csm-e-eb.csm.tubi.video/csm/extlive/tubiprd01,Cloudfront-WVTM.m3u8"
      }
    },
    "Vevo": {
      "tvg-id": "VevoHipHop.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Lbc9cYw.png",
      "group-title": "Music",
      "tvg-url": {
        "https://5dcc6a54d90e8c5dc4345c16-s-4.ssai.zype.com/5dcc6a54d90e8c5dc4345c16-s-4/manifest.m3u8",
        "https://5dcc6a9f1621dc5dd511ca14-s-5.ssai.zype.com/5dcc6a9f1621dc5dd511ca14-s-5/manifest.m3u8",
        "https://5f3491c50b093e00015a3c4c-samsung.eu.ssai.zype.com/5f3491c50b093e00015a3c4c_samsung_eu/manifest.m3u8"
      }
    },
    "Victor": {
      "tvg-id": "VictorValleyMovies.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/VictorValleyMovies_229x229.png?raw",
      "group-title": "Movies",
      "tvg-url": {
        "https://2-fss-1.streamhoster.com/pl_122/201794-1414514-1/playlist.m3u8"
      }
    },
    "Victory": {
      "tvg-id": "VictoryTelevisionNetwork.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/yqA2PJj.jpg",
      "group-title": "Religious",
      "tvg-url": {
        "http://184.173.179.163:1935/victorytelevisionnetwork/victorytelevisionnetwork/playlist.m3u8"
      }
    },
    "Vision": {
      "tvg-id": "Vision4.cm",
      "tvg-country": "CM",
      "tvg-language": "English;French",
      "tvg-logo": "https://i.imgur.com/FekWmTu.jpg",
      "group-title": "Undefined",
      "tvg-url": {
        "https://cdnamd-hls-globecast.akamaized.net/live/ramdisk/vision4/hls_video/index.m3u8"
      }
    },
    "VoA": {
      "tvg-id": "VoATV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/9A6LZ7z.jpg",
      "group-title": "News",
      "tvg-url": {
        "https://voa-lh.akamaihd.net/i/voa_mpls_tvmc3_3@320295/master.m3u8"
      }
    },
    "Vogue": {
      "tvg-id": "Vogue.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/2i333B9.jpg",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuvogue/CDN/playlist.m3u8"
      }
    },
    "Voyager": {
      "tvg-id": "VoyagerDocumentaries.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://images.pluto.tv/channels/589aa03df9ba56a84197a560/colorLogoPNG.png",
      "group-title": "Documentary",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxvoyager/CDN/playlist.m3u8"
      }
    },
    "VSiN": {
      "tvg-id": "VSiN.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://github.com/geonsey/Free2ViewTV/blob/master/images/logos/VSiN_400x400.png?raw",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream.rcncdn.com/live/vsinproxy.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-ny.theus6tv.tk/hls/7.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/7.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/7.4/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/4.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/4.2/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/4.4/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/4.5/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/4.6/playlist.m3u8"
      }
    },
    "Wairarapa": {
      "tvg-id": "WairarapaTV.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo":
          "https://www.freeviewnz.tv/nonumbracoimages/ChannelsOpg/LogoforFreeviewWebsite.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream.wairarapatv.co.nz/Broadband_High/playlist.m3u8"
      }
    },
    "WATC-DT": {
      "tvg-id": "WATCDT1.us",
      "tvg-country": "US-GA",
      "tvg-language": "English",
      "tvg-logo": "https://www.lyngsat.com/logo/tv/ww/watc_atlanta.png",
      "group-title": "Undefined",
      "tvg-url": {"https://uni01rtmp.tulix.tv/watc57/watc57/playlist.m3u8"}
    },
    "Watch": {
      "tvg-id": "WatchItKid.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/DAhbkLv.png",
      "group-title": "Kids",
      "tvg-url": {
        "https://content.uplynk.com/channel/ce3b524c342247549e996e7d3a977157.m3u8",
        "https://content.uplynk.com/channel/29aff31fecb848ab9044369db2d61642.m3u8"
      }
    },
    "Waypoint": {
      "tvg-id": "WaypointTV.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/6r2YHtv.png",
      "group-title": "Outdoor",
      "tvg-url": {
        "https://dai.google.com/linear/hls/event/im0MqOKRTHy9nVa1sirQSg/master.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/10.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/10.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/2.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/2.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/2.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/2.4/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/2.2/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/2.5/playlist.m3u8"
      }
    },
    "Weathernation": {
      "tvg-id": "WeatherNation.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo":
          "https://cdn.tvpassport.com/image/station/100x100/weathernation.png",
      "group-title": "Weather",
      "tvg-url": {
        "https://live-news-manifest.tubi.video/live-news-manifest/csm/extlive/tubiprd01,Cloudfront-Weather-Nation.m3u8"
      }
    },
    "Weatherspy": {
      "tvg-id": "Weatherspy.ca",
      "tvg-country": "CA",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/8oJYi1z.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://jukin-weatherspy-2-ca.samsung.wurl.com/manifest/playlist.m3u8"
      }
    },
    "WeatherSpy": {
      "tvg-id": "WeatherSpy.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/SAZF1cq.jpg",
      "group-title": "Weather",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxweatherspy/CDN/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/45.1/playlist.m3u8"
      }
    },
    "Westerns": {
      "tvg-id": "Westerns4U.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzU1NDU0OTlf/NostTV_Westerns4U.png",
      "group-title": "Classic",
      "tvg-url": {
        "https://broadcast.mytvtogo.net/westerntv4u/westerntv4u/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/69.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/68.1/playlist.m3u8"
      }
    },
    "WGN": {
      "tvg-id": "WGNDT1.us",
      "tvg-country": "US-IL",
      "tvg-language": "English",
      "tvg-logo":
          "https://zap2it.tmsimg.com/h3/NowShowing/11474/s11474_h3_aa.png",
      "group-title": "Undefined",
      "tvg-url": {"http://trn03.tulix.tv/teleup-mBm5MQ50rA/playlist.m3u8"}
    },
    "White": {
      "tvg-id": "WhitePlainsCommunityMedia.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/u7dN2Eq.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://stream.swagit.com/live-edge/whiteplainsny/smil:std-4x3-1-b/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/12.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/12.2/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/12.3/playlist.m3u8"
      }
    },
    "William": {
      "tvg-id": "WilliamHillBTV1.uk",
      "tvg-country": "UK",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/nnX0NGt.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://betamg-i.akamaihd.net/hls/live/513429/willhill/0_tklzcakd_1_1/chunklist.m3u8",
        "https://betamg-i.akamaihd.net/hls/live/513429/willhill/0_3838s0ja_1_1/chunklist.m3u8"
      }
    },
    "Wired": {
      "tvg-id": "Wired.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMzE5OTIyMjBf/Redbox_512x512.png",
      "group-title": "Undefined",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-redboxwired/CDN/playlist.m3u8"
      }
    },
    "WJCL-TV": {
      "tvg-id": "WJCL.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://cdn.tvpassport.com/image/station/100x100/abc.png",
      "group-title": "News",
      "tvg-url": {
        "https://live-news-manifest.tubi.video/live-news-manifest/csm/extlive/tubiprd01,Cloudfront-WJCL.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-ny.theus6tv.tk/hls/33.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/21.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/21.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/21.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/21.4/playlist.m3u8"
      }
    },
    "WLNG": {
      "tvg-id": "WLNGRadio.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/11r6tgW.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://wlngstudiowebcam.srfms.com:1935/wlngstudiowebcam/livestream/playlist.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/39.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/44.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/4.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/4.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/13.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/13.2/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/23.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/23.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/47.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/47.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/25.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/25.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/25.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/5.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/5.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/5.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/5.4/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/5.5/playlist.m3u8"
      }
    },
    "Wonder": {
      "tvg-id": "Wonder.uk",
      "tvg-country": "AU",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/qTbCyOj.png",
      "group-title": "Undefined",
      "tvg-url": {"https://lds-wonder-plex.amagi.tv/playlist.m3u8"}
    },
    "World": {
      "tvg-id": "WorldFashionChannelInternational.ru",
      "tvg-country": "INT",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/JyslMHb.jpg",
      "group-title": "Lifestyle",
      "tvg-url": {
        "https://wfcint.mediacdn.ru/cdn/wfcintweb/playlist.m3u8",
        "https://d3w4n3hhseniak.cloudfront.net/v1/master/9d062541f2ff39b5c0f48b743c6411d25f62fc25/WPT-DistroTV/150.m3u8",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/17.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/17.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/11.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/11.4/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/61.4/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/61.5/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/6.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/31.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/31.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/31.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/31.5/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/31.6/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/48.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/48.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/48.4/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/51.1/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/51.2/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/29.1/playlist.m3u8"
      }
    },
    "Wu": {
      "tvg-id": "WuTangCollection.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/jbMmsjI.png",
      "group-title": "Music",
      "tvg-url": {
        "https://stream-us-east-1.getpublica.com/playlist.m3u8?network_id=73",
        "#EXTVLCOPT:http-user-agent=Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36",
        "https://v-pi.theus6tv.tk/hls/65.3/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/9.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/9.3/playlist.m3u8",
        "https://v-pi.theus6tv.tk/hls/62.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/41.1/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/41.2/playlist.m3u8",
        "https://v-ny.theus6tv.tk/hls/41.3/playlist.m3u8"
      }
    },
    "Xcorps": {
      "tvg-id": "Xcorps.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/SDKWWQu.png",
      "group-title": "Series",
      "tvg-url": {"https://simultv.s.llnwi.net/n4s4/xcorps/interlink.m3u8"}
    },
    "Xplore": {
      "tvg-id": "Xplore.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://od.lk/s/MF8yMjU5MDAzNDRf/Xplore_307x307.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "http://xlpore-samsungus.amagi.tv/playlist.m3u8",
        "https://d46c0ebf9ef94053848fdd7b1f2f6b90.mediatailor.eu-central-1.amazonaws.com/v1/master/81bfcafb76f9c947b24574657a9ce7fe14ad75c0/live-prod/1ecb875d-8be7-11eb-a7de-bacfe1f83627/0/master.m3u8?country=DE&optout=0&uid=749544ec3d9a45d48c600d03cac91dfd&vendor=philips"
      }
    },
    "Xumo": {
      "tvg-id": "XumoFreeMovies.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/Sx10tvQ.png",
      "group-title": "Movies",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuxumofreemovies/CDN/playlist.m3u8",
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuxumowesterns/CDN/playlist.m3u8"
      }
    },
    "Yahoo!": {
      "tvg-id": "YahooFinance.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://f9q4g5j6.ssl.hwcdn.net/602ab939db63ed4c92785303",
      "group-title": "Business",
      "tvg-url": {
        "https://d1ewctnvcwvvvu.cloudfront.net/playlist.m3u8",
        "https://content.uplynk.com/channel/411ba7ca8cb6403a9e73509e49c3a77b.m3u8"
      }
    },
    "Yo": {
      "tvg-id": "YoGabbaGabba.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/RwxgFfb.jpg",
      "group-title": "Kids",
      "tvg-url": {
        "https://dai2.xumo.com/amagi_hls_data_xumo1212A-rokuyogabagaba/CDN/playlist.m3u8"
      }
    },
    "Young": {
      "tvg-id": "YoungHollywood.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/X27MGHd.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://a.jsrdn.com/broadcast/e0f99ab19c/+0000/c.m3u8"}
    },
    "Youtoo": {
      "tvg-id": "YoutooAmerica.us",
      "tvg-country": "US",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/3se2VEB.png",
      "group-title": "Entertainment",
      "tvg-url": {"https://thegateway.app/YouToo/CueTones/playlist.m3u8"}
    },
    "ZNS": {
      "tvg-id": "ZNSTV.bs",
      "tvg-country": "BS",
      "tvg-language": "English",
      "tvg-logo":
          "https://znsbahamas.com/wp-content/uploads/2017/12/ZNS-PL-1.png",
      "group-title": "General",
      "tvg-url": {
        "https://cloud.streamcomedia.com/znstv/smil:znstv_streams.smil/playlist.m3u8"
      }
    },
    "Zoo": {
      "tvg-id": "ZooMooAustralia.nz",
      "tvg-country": "NZ",
      "tvg-language": "English",
      "tvg-logo": "https://i.imgur.com/1wYnA2i.jpg",
      "group-title": "Kids",
      "tvg-url": {"https://zoomoo-samsungau.amagi.tv/playlist.m3u8"}
    },
    "ТБН": {
      "tvg-id": "TBN.ru",
      "tvg-country": "RU",
      "tvg-language": "English",
      "tvg-logo":
          "https://avatars.mds.yandex.net/get-tv-channel-logos/55846/2a0000015b7c08ddc046356044f9e6278ee0/160x120",
      "group-title": "Undefined",
      "tvg-url": {"http://62.32.67.187:1935/WEB_TBN/TBN.stream/playlist.m3u8"}
    }
  };

  final _featuredTvLis = {
    "CCTV-1综合": {
      "tvg-id": "CCTV1.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/6/65/CCTV-1_Logo.png",
      "group-title": "General",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225618/index.m3u8"
      }
    },
    "CCTV-2财经": {
      "tvg-id": "CCTV2.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/c/ce/CCTV-2_Logo.png",
      "group-title": "Undefined",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225619/index.m3u8"
      }
    },
    "CCTV-3综艺": {
      "tvg-id": "CCTV3.cn",
      "tvg-country": "CN",
      "tvg-language": "Chinese;Mandarin",
      "tvg-logo":
          "https://upload.wikimedia.org/wikipedia/zh/3/34/CCTV-3_Logo.png",
      "group-title": "Entertainment",
      "tvg-url": {
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225634/index.m3u8"
      }
    },
    "CCTV-4中文国际": {
      "tvg-id": "",
      "tvg-country": "CN",
      "tvg-language": "",
      "tvg-logo": "",
      "group-title": "Undefined",
      "tvg-url": {
        "http://112.25.48.68/live/program/live/cctv4/1300000/mnf.m3u8",
        "http://111.63.117.13:6060/030000001000/CCTV-4/CCTV-4.m3u8",
        "http://223.110.245.159/ott.js.chinamobile.com/PLTV/3/224/3221225781/index.m3u8",
        "http://183.207.248.71/gitv/live1/CCTV-4/CCTV-4",
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225621/index.m3u8",
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225621/index.m3u8",
        "http://117.169.120.140:8080/live/cctv-4/.m3u8",
        "http://183.207.249.6/PLTV/3/224/3221225534/index.m3u8",
        "http://183.207.249.11/PLTV/3/224/3221225534/index.m3u8",
        "http://183.207.248.71/cntv/live1/cctv-4/cctv-4",
        "http://223.110.245.163/ott.js.chinamobile.com/PLTV/3/224/3221227378/index.m3u8",
        "http://223.110.245.165/ott.js.chinamobile.com/PLTV/3/224/3221225534/index.m3u8",
        "http://223.110.245.170/PLTV/3/224/3221225534/index.m3u8",
        "http://116.199.5.51:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=26&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id=",
        "http://116.199.5.52:8114/00000000/index.m3u8?Fsv_CMSID=&Fsv_SV_PARAM1=0&Fsv_ShiftEnable=0&Fsv_ShiftTsp=0&Fsv_chan_hls_se_idx=26&Fsv_cid=0&Fsv_ctype=LIVES&Fsv_ctype=LIVES&Fsv_filetype=1&Fsv_otype=1&Fsv_otype=1&Fsv_rate_id=0&FvSeid=5abd1660af1babb4&Pcontent_id=&Provider_id="
      }
    },
  };

  get featuredTvLis => _featuredTvLis;

  get foreignTvLis => _foreignTvLis;

  get chineseTvLis => _chineseTvLis;

  bool iscotain(tvName) {
    return _featuredTvLis.keys.contains(tvName);
  }

  void addcollect(String tvName) {
    if (_featuredTvLis.keys.contains(tvName)) return;

    if (_chineseTvLis.containsKey(tvName)) {
      _featuredTvLis[tvName] = _chineseTvLis[tvName] ?? {};
    } else if (_foreignTvLis.containsKey(tvName)) {
      _featuredTvLis[tvName] = _foreignTvLis[tvName] ?? {};
    }
  }

  String getBeanByIndex(int tabIndex, int listIndex) {
    logger.w("liveSource ==> $tabIndex : $listIndex");

    switch (tabIndex) {
      case 0:
        return _chineseTvLis.keys.elementAt(listIndex);
      case 1:
        return _foreignTvLis.keys.elementAt(listIndex);
      case 2:
        return _featuredTvLis.keys.elementAt(listIndex);
      default:
        return _chineseTvLis.keys.elementAt(listIndex);
    }
  }

  Position getPositionByName() {
    String tvName = getTvName();
    if (_chineseTvLis.containsKey(tvName)) {
      return Position(0, _chineseTvLis.keys.toList().indexOf(tvName));
    } else if (_foreignTvLis.containsKey(tvName)) {
      return Position(1, _foreignTvLis.keys.toList().indexOf(tvName));
    }
    return Position(0, 0);
  }

  String? getSourceByKey(String tvName) {
    if (liveSource.containsKey(tvName)) {
      return liveSource[tvName];
    } else if (_chineseTvLis.containsKey(tvName)) {
      return (_chineseTvLis[tvName]?["tvg-url"] as Set).first;
    } else if (_foreignTvLis.containsKey(tvName)) {
      return (_foreignTvLis[tvName]?["tvg-url"] as Set).first;
    }
    return null;
  }

  void removeurl(String tvName) {
    _featuredTvLis.remove(tvName);
  }

  final _curPlayChannelMap = {};
  int _index = 0;

  int get index => _index;

  void switchTab(int index) {
    _index = index;
    notifyListeners();
  }

  String getIconUrl(int tabIndex, int listIndex) {
    switch (tabIndex) {
      case 0:
        return _chineseTvLis.values.elementAt(listIndex)["tvg-logo"].toString();
      case 1:
        return _foreignTvLis.values.elementAt(listIndex)["tvg-logo"].toString();
      case 2:
        return _featuredTvLis.values
            .elementAt(listIndex)["tvg-logo"]
            .toString();
    }
    return "";
  }

  void setTvChannel(String tvName, int index) {
    _curPlayChannelMap[index] = tvName;
    _index = index;
    notifyListeners();
  }

  String getDefaultSource(int index) {
    String defaultSource =
        (_chineseTvLis.entries.first.value["tvg-url"] as Set).first;
    switch (index) {
      case 0:
        defaultSource =
            (_chineseTvLis.entries.first.value["tvg-url"] as Set).first;
        break;
      case 1:
        defaultSource =
            (_foreignTvLis.entries.first.value["tvg-url"] as Set).first;
        break;
      case 2:
        defaultSource =
            (_featuredTvLis.entries.first.value["tvg-url"] as Set).first;
        break;
    }
    return defaultSource;
  }

  Set getSourceSet(int tabIndex, int listIndex) {
    logger.w("liveSource ==> getSourceSet|$tabIndex : $listIndex");

    switch (tabIndex) {
      case 0:
        return _chineseTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
      case 1:
        logger.w(
            "liveSource ==> getSourceSet : ${_foreignTvLis.values.elementAt(listIndex)["tvg-url"]}");
        return _foreignTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
      case 2:
        return _featuredTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
      default:
        return _chineseTvLis.values.elementAt(listIndex)["tvg-url"] as Set;
    }
  }

  String getTvName() {
    String defaultSource = _chineseTvLis.keys.first;
    switch (_index) {
      case 0:
        defaultSource = _chineseTvLis.keys.first;
        break;
      case 1:
        defaultSource = _foreignTvLis.keys.first;
        break;
      case 2:
        defaultSource = _featuredTvLis.keys.first;
        break;
    }
    return _curPlayChannelMap[_index] ?? defaultSource;
  }

  final liveSource = {};

  String? getLiveSource(String key) {
    if (liveSource.containsKey(key)) {
      if ("TV" == key) {
        logger.w("liveSource ==> ${liveSource[key]}");
      }
      return liveSource[key];
    } else {
      if ("TV" == key) {
        logger.w("liveSource ==> ${getSourceByKey(key)}");
      }
      return getSourceByKey(key);
    }
  }

  void setLiveSource(String key, String? value) {
    liveSource[key] = value;
  }

  String getTvChannel() {
    String defaultSource =
        (_chineseTvLis.entries.first.value["tvg-url"] as Set).first;
    switch (_index) {
      case 0:
        defaultSource =
            (_chineseTvLis.entries.first.value["tvg-url"] as Set).first;
        break;
      case 1:
        defaultSource =
            (_foreignTvLis.entries.first.value["tvg-url"] as Set).first;
        break;
      case 2:
        defaultSource =
            (_featuredTvLis.entries.first.value["tvg-url"] as Set).first;
        break;
    }

    String tvName = _curPlayChannelMap[_index] ?? "";
    if (liveSource.containsKey(tvName)) {
      return liveSource[tvName];
    } else if (_chineseTvLis.containsKey(tvName)) {
      return (_chineseTvLis[tvName]!["tvg-url"] as Set).first;
    } else if (_foreignTvLis.containsKey(tvName)) {
      return (_foreignTvLis[tvName]!["tvg-url"] as Set).first;
    }
    return defaultSource;
  }
}

class Position {
  int tabIndex = 0;
  int listIndex = 0;

  Position(this.tabIndex, this.listIndex);
}
