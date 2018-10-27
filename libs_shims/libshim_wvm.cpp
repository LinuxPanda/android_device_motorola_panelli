#include <string>
#include <stdlib.h>
#include <stdint.h>
#include <media/IMediaSource.h>
#include <media/stagefright/MediaSource.h>
#include <ui/GraphicBufferMapper.h>

extern "C" {
    // MediaBufferGroup::MediaBufferGroup
    int _ZN7android16MediaBufferGroupC1Ej(unsigned int);
    int _ZN7android16MediaBufferGroupC1Ev() {
        return _ZN7android16MediaBufferGroupC1Ej(0);
    }
}

extern "C" {
    // getSeekTo(int64_t *time_us, SeekMode *mode)
    void _ZNK7android12IMediaSource11ReadOptions9getSeekToEPxPNS1_8SeekModeE(
		int64_t*, int32_t*);
    // bool getNonBlocking()
    bool _ZNK7android12IMediaSource11ReadOptions14getNonBlockingEv();

    void _ZNK7android11MediaSource11ReadOptions9getSeekToEPxPNS1_8SeekModeE(
		int64_t *time_us, int32_t *mode) {
	_ZNK7android12IMediaSource11ReadOptions9getSeekToEPxPNS1_8SeekModeE(time_us, mode);
    }
    bool _ZNK7android11MediaSource11ReadOptions14getNonBlockingEv() {
	return _ZNK7android12IMediaSource11ReadOptions14getNonBlockingEv();
    }
}

extern "C" {
    void _ZN7android16MediaBufferGroup14acquire_bufferEPPNS_11MediaBufferEb() {}
}
