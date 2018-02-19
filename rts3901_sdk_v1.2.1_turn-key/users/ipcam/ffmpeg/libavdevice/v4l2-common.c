/*
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#include "v4l2-common.h"

#define V4L2_PIX_FMT_H264     v4l2_fourcc('H', '2', '6', '4') /* H264 with start codes */
#define V4L2_PIX_FMT_MJPEG     v4l2_fourcc('M', 'J', 'P', 'G') /* mjpeg with start codes */

const struct fmt_map avpriv_fmt_conversion_table[] = {
    //ff_fmt              codec_id              v4l2_fmt
    { AV_PIX_FMT_YUV420P, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YUV420  },
    { AV_PIX_FMT_YUV420P, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YVU420  },
    { AV_PIX_FMT_YUV422P, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YUV422P },
    { AV_PIX_FMT_YUYV422, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YUYV    },
    { AV_PIX_FMT_UYVY422, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_UYVY    },
    { AV_PIX_FMT_YUV411P, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YUV411P },
    { AV_PIX_FMT_YUV410P, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YUV410  },
    { AV_PIX_FMT_YUV410P, AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_YVU410  },
    { AV_PIX_FMT_RGB555LE,AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_RGB555  },
    { AV_PIX_FMT_RGB555BE,AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_RGB555X },
    { AV_PIX_FMT_RGB565LE,AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_RGB565  },
    { AV_PIX_FMT_RGB565BE,AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_RGB565X },
    { AV_PIX_FMT_BGR24,   AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_BGR24   },
    { AV_PIX_FMT_RGB24,   AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_RGB24   },
    { AV_PIX_FMT_BGR0,    AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_BGR32   },
    { AV_PIX_FMT_0RGB,    AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_RGB32   },
    { AV_PIX_FMT_GRAY8,   AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_GREY    },
#ifdef V4L2_PIX_FMT_Y16
    { AV_PIX_FMT_GRAY16LE,AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_Y16     },
#endif
    { AV_PIX_FMT_NV12,    AV_CODEC_ID_RAWVIDEO, V4L2_PIX_FMT_NV12    },
    { AV_PIX_FMT_NONE,    AV_CODEC_ID_MJPEG,    V4L2_PIX_FMT_MJPEG   },
    { AV_PIX_FMT_NONE,    AV_CODEC_ID_MJPEG,    V4L2_PIX_FMT_JPEG    },
#ifdef V4L2_PIX_FMT_H264
    { AV_PIX_FMT_H264,    AV_CODEC_ID_H264,     V4L2_PIX_FMT_H264    },
#endif
#ifdef V4L2_PIX_FMT_MJPEG
    { AV_PIX_FMT_MJPEG,    AV_CODEC_ID_MJPEG,     V4L2_PIX_FMT_MJPEG    },
#endif

#ifdef V4L2_PIX_FMT_CPIA1
    { AV_PIX_FMT_NONE,    AV_CODEC_ID_CPIA,     V4L2_PIX_FMT_CPIA1   },
#endif
    { AV_PIX_FMT_NONE,    AV_CODEC_ID_NONE,     0                    },
};

uint32_t avpriv_fmt_ff2v4l(enum AVPixelFormat pix_fmt, enum AVCodecID codec_id)
{
    int i;

    for (i = 0; avpriv_fmt_conversion_table[i].codec_id != AV_CODEC_ID_NONE; i++) {
        if ((codec_id == AV_CODEC_ID_NONE ||
             avpriv_fmt_conversion_table[i].codec_id == codec_id) &&
            (pix_fmt == AV_PIX_FMT_NONE ||
             avpriv_fmt_conversion_table[i].ff_fmt == pix_fmt)) {
            return avpriv_fmt_conversion_table[i].v4l2_fmt;
        }
    }

    return 0;
}

enum AVPixelFormat avpriv_fmt_v4l2ff(uint32_t v4l2_fmt, enum AVCodecID codec_id)
{
    int i;

    for (i = 0; avpriv_fmt_conversion_table[i].codec_id != AV_CODEC_ID_NONE; i++) {
        if (avpriv_fmt_conversion_table[i].v4l2_fmt == v4l2_fmt &&
            avpriv_fmt_conversion_table[i].codec_id == codec_id) {
            return avpriv_fmt_conversion_table[i].ff_fmt;
        }
    }

    return AV_PIX_FMT_NONE;
}

enum AVCodecID avpriv_fmt_v4l2codec(uint32_t v4l2_fmt)
{
    int i;

    for (i = 0; avpriv_fmt_conversion_table[i].codec_id != AV_CODEC_ID_NONE; i++) {
        if (avpriv_fmt_conversion_table[i].v4l2_fmt == v4l2_fmt) {
            return avpriv_fmt_conversion_table[i].codec_id;
        }
    }

    return AV_CODEC_ID_NONE;
}