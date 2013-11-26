
#include "testLibIncludeRequired1.h"
#include "testLibIncludeRequired2.h"
#include "testLibIncludeRequired6.h"
#include "testLibIncludeRequired7.h"

#include "installIncludesTest.h"
#include "installIncludesTest2.h"
#include "installIncludesTest3.h"
#include "installIncludesTest4.h"

#ifndef testLibRequired_IFACE_DEFINE
#error Expected testLibRequired_IFACE_DEFINE
#endif

#ifdef BuildOnly_DEFINE
#error Unexpected BuildOnly_DEFINE
#endif

#ifndef InstallOnly_DEFINE
#error Expected InstallOnly_DEFINE
#endif

extern int testLibDepends(void);


int main()
{
  return testLibDepends();
}
