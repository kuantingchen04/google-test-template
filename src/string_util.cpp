# include "stdlib.h"
# include "string_util.h"

int StringUtil::ToInt(const char * str)
{
    return atol(str);
}
