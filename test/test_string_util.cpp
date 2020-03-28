# include "gtest/gtest.h"
# include "string_util.h"
using namespace std;

TEST(Test_StringUtil, ToInt)
{
    EXPECT_TRUE(StringUtil::ToInt("345")==345);
}
