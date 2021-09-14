import itertools
import numpy as np
import matplotlib.pyplot as plt
from time import time
from scripts.plots import plot_cities
from scripts.plots import plot_solution
from scripts import simulated_annealing 
from scripts.simulated_annealing import SimulatedAnnealer

def solve_tsp_simulated_annealing(cities, starting_city, iteration):
    sa = SimulatedAnnealer(cities, stopping_iter=iteration, starting_city=starting_city)
    sa.anneal()
    solution = sa.get_best_solution()
    return solution

def calculate_cost(cost_matrix, solution):
    cost = 0
    # I skiped one pair (first, last), since we don't care about returning to the starting point
    return sum([cost_matrix[a][b] for a, b  in zip(solution[:-1], solution[1:])])


def solve_tsp_brute_force(cities, starting_city, verbose=True):
    number_of_cities = len(cities)
    initial_order = range(number_of_cities)
    cost_matrix = get_distance_matrix(cities)
    
    # We create all the possible routes
    all_permutations = [list(x) for x in itertools.permutations(initial_order)]
    best_permutation = all_permutations[0]
    best_cost = calculate_cost(cost_matrix, best_permutation)*1000
    
    # We iterate through all the permutations and calculate their cost
    for permutation in all_permutations:
        if permutation[0] != starting_city:
            continue
        current_cost = calculate_cost(cost_matrix, permutation)
        if current_cost < best_cost:
            best_permutation = permutation
            best_cost = current_cost
    if verbose:
        print("Best route:", best_permutation)
        print("Cost:", best_cost)
    return best_permutation

def distance_between_points(point_A, point_B):
    return np.sqrt((point_A[0] - point_B[0])**2 + (point_A[1] - point_B[1])**2)

def get_distance_matrix(cities):
    number_of_cities = len(cities)
    matrix = np.zeros((number_of_cities, number_of_cities))
    for i in range(number_of_cities):
        for j in range(i, number_of_cities):
            matrix[i][j] = distance_between_points(cities[i], cities[j])
            matrix[j][i] = matrix[i][j]
    return matrix

def create_cities(N):
    """
    Creates an array of random points of size N.
    """
    cities = []
    for i in range(N):
        cities.append(np.random.rand(2) * 10)
    return np.array(cities)


calculation_times_bf = []
calculation_solus_bf = []
calculation_times_sa = []
calculation_solus_sa = []

city_sizes = range(4, 12)
for i in city_sizes:
    cities = create_cities(i)
    print(i, "cities")
    
    t_1 = time()
    solus = solve_tsp_brute_force(cities, 0, verbose=False)
    calc_time = time() - t_1
    calculation_times_bf.append(calc_time)

    calc_cost = calculate_cost(get_distance_matrix(cities), solus)
    calculation_solus_bf.append(calc_cost)

    t_1 = time()
    solus = solve_tsp_simulated_annealing(cities, 0, 5000)
    calc_time = time() - t_1
    calculation_times_sa.append(calc_time)
    calc_cost = calculate_cost(get_distance_matrix(cities), solus)
    calculation_solus_sa.append(calc_cost)

fig = plt.figure(figsize=(12, 5))
plt.subplot(121)
plt.plot(list(city_sizes), calculation_times_bf, 'o-.', label="Brute force")
plt.plot(list(city_sizes), calculation_times_sa, 'o-.', label="Simulated annealing")
plt.subplot(122)
plt.plot(list(city_sizes), calculation_solus_bf, 'o-.', label="Brute force")
plt.plot(list(city_sizes), calculation_solus_sa, 'o-.', label="Simulated annealing")
plt.legend(loc='upper right')
plt.show()