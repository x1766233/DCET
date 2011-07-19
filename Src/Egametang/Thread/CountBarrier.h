#ifndef THREAD_COUNT_LATCH_H
#define THREAD_COUNT_LATCH_H

#include <boost/thread.hpp>

namespace Egametang {

class CountBarrier
{
private:
	int count_;
	mutable boost::mutex mutex_;
	boost::condition_variable condition_;

public:
	explicit CountBarrier(int count = 1);

	void Wait();

	void Signal();

	int Count() const;

	void Reset(int count = 1);
};

} // namespace Egametang

#endif // THREAD_COUNT_LATCH_H