#include "xcom.h"
#include "xthread.h"
#include <iostream>
using namespace std;
class XTask : public XThread {
public:
  void Main() override { cout << "XTask main" << endl; }
};
int main(int argc, char *argv[]) {
  cout << "XServer" << endl;
  XCom com;
  XTask task;
  task.Start();
  task.Wait();
  return 0;
}
