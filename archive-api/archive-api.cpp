#include "debug_line.h"
#include "archive_api.h"

#include "strconv.h"
static unicode_ostream uout(std::cerr, ::GetConsoleOutputCP());

extern "C" __declspec(dllexport) int start(int port)
{
    auto  svr = new ArchiveApiServer(port);
    return svr->start();
}

extern "C" __declspec(dllexport) void stop(int port)
{
    udebug_line2("Stopping server...", port);
    HttpApiServer::stop_by_port_number(port);
}

