#ifndef LIB_H
#define LIB_H
#include <stdint.h>
typedef void (*ArchiveProgressCallback)(void *data, int64_t extractSizeTotal);
typedef bool (*proto_extract_archive)(const char *archivePath,
                                      const char *outputDir,
                                      void *data,
                                      ArchiveProgressCallback callback);
#endif // LIB_H
