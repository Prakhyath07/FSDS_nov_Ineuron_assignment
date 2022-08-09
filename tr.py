import multiprocessing
import time




def printsec():
    from datetime import datetime
    from time import sleep
    import random
    seconds = random.randint(1, 5)
    sleep(seconds)
    print('wait', seconds, 'seconds, time is', datetime.utcnow())

if __name__ == '__main__':
    start = time.perf_counter()
    
    proc1 = multiprocessing.Process(target=printsec)
    proc2 = multiprocessing.Process(target=printsec)
    proc3 = multiprocessing.Process(target=printsec)

    proc1.start()
    proc2.start()
    proc3.start()

    proc1.join()
    proc2.join()
    proc3.join()

    finish = time.perf_counter()

    print(f'Finished in {round(finish - start, 2)}second(s)')