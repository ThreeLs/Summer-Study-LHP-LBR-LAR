
def findBest(pop):
    best = ['1', 0]
    for i in pop:
        if best[1] < pop[i].fitness:
            best = [i, pop[i].fitness]
    return best



    

        