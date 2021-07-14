import numpy as np
import random

def graph_gen(node, graph_num):   # node (number of node in graph)  graph_num(number of graph generated)
    weight = list(range(0,11))
    weight2 = list(range(0,16))
    graphs = list()
    for n in range(0,graph_num):
        graph = np.zeros((node,node))
        for i in range(0,node-1):
            for j in range(1,node):
                if i==j:
                    graph[i][j] = 0
                else:
                    graph[i][j]= random.choice(weight)
        graph[0][node-1] = random.choice(weight2)
        graphs.append(graph)
    return graphs  

# kronecker delta 
def kd(a, b):
    if a == b:
        return 1
    return 0

#  Build weight matrix
def weight_matrix(nn,u4,u3):
    weightm = np.zeros((nn*nn,nn*nn))
    for x in range(0, nn):
        for i in range(0, nn):
            for y in range(0, nn):
                for j in range(0, nn):
                    p = x*nn+i
                    q = y*nn+j  #weight[p,q] = Txi,yj
                    weightm[p, q] = u4*kd(x, y)*kd(i, j) - u3*kd(x, y) - u3*kd(i, j) + u3*kd(j, x) + u3*kd(i, y)
    return weightm

def link_matrix(costm):
    n = len(costm)
    linkm = np.zeros((n,n))
    for i in range(0,n):
         for j in range(0,n):
            if costm[i][j] == 0:
                 linkm[i][j] = 1
    return linkm

def bias_matrix(costm,linkm,u1,u2,u4,u5):
    n=len(costm)
    biasm = np.zeros((n,n))
    for x in range(0, nn):
        for i in range(0, nn):
            if (x,i) == (source, destination):
                biasm[x, i] = 0.5*(u5-u4)
            else:
                biasm[x, i] = -0.5*(u1*costm[x,i]+u2*linkm[x,i]+u4)
    return biasm

#  Calculate new input neuron matrix based on the equation of Bastos-Filho. Proabably where something is wrong.
def update_inputs(inputm, inputm1,inputm2,biasm,weightm):                             
    for x in range(0, nn):
        for i in range(0, nn):
            t1 = -a*inputm1[x,i]
            t2 = -b*inputm2[x,i]
            t3 = 0.0
            for y in range(0, nn):
                for j in range(0, nn):
                    if j != y:
                        t3 += weightm[x*nn+i, y*nn+j]*outputm[y,j] + biasm[x,i]
            t3 *= c
            inputm[x,i], inputm1[x,i], inputm2[x,i]= inputm[x,i] + t1 + t2 + t3, inputm[x,i], inputm1[x,i]
    return inputm

#  Calculate output neuron matrix
def get_outs(inputm):
    for x in range(0, nn):
        for i in range(0, nn):
            outputm[x, i] = 1/(1+np.exp(-lda*inputm[x,i]/833.336))
    return outputm

def clc_output(n,inputm, inputm1,inputm2,biasm,weightm):
    for i in range(0, n):
        output = get_outs(update_inputs(inputm, inputm1,inputm2,biasm,weightm))
    return output   

def proute(outputm):
    n= len(outputm)
    outputm2 = np.zeros((n,n))
    for x in range(0, nn):
        for i in range(0, nn):
            if outputm[x, i] >= 0.5:
                    outputm2[x, i] = 1
            else:
                    outputm2[x, i] = 0
    return outputm2 

def cal_dis(output,costm):
    n = len(output)
    d = 0
    for i in range(0,n):
        for j in range(0,n):
            if output[i][j] ==1:
                c = costm[i][j]
                d+=c
    return d

def hopfield(u1,u2,u3,u4,u5,nn,costm,t):
    weightm = weight_matrix(nn,u4,u3)
    linkm = link_matrix(costm)
    biasm = bias_matrix(costm,linkm,u1,u2,u4,u5)
    a = clc_output(t, inputm, inputm1, inputm2, biasm, weightm)
    b = proute(a)
    dis = cal_dis(b,costm)
    return dis

nn = 5             # Number of nodes in the graph
source = 0         # source node (count starts at 0)
destination = 9    # destination node
t = 1000           # number of step of input update
u1 = 950     
u2 = 2500
u3 = 1500
u4 = 475
u5 = 2500
a = 0.0001
b = 0.00001
c = 0.00001
lda = 1    
dv = 1e-05 
outputm = np.zeros((nn, nn))
inputm = np.zeros((nn, nn))
inputm1 = np.zeros((nn, nn))
inputm2 = np.zeros((nn, nn))

#generate 8 graphs with 5 nodes
graphs_8 = graph_gen(5, 8)
print(graphs_8)

#calculate shortest path with hnn for each graph
hop_dis = []
i = 0
for gg in graphs_8:
    dis_8 = hopfield(u1,u2,u3,u4,u5,nn,gg,t)
    hop_dis.append(dis_8)
    i+=1
    print(i, '- dis is '+ str(dis_8))
print(hop_dis)

def dijkstra(g):
    spath = g[0]
    n= g.shape[0]
    for i in range(1,n):
        for j in range(0,n):
            if spath[j] > spath[i]+g[i][j]:
                if spath[j]!=0:
                    if g[i][j]!=0:
                        spath[j] = spath[i]+g[i][j]
            if spath[j] == 0:
                if j>0:
                    spath[j] = spath[i]+g[i][j]
    return(spath[-1])

shortestpath = []
for g in graphs_8:
    print(g)
    s = dijkstra(g)
    print(s)
    print(g)
    shortestpath.append(s)
print(shortestpath)

count = 0
for i in range(0,8):
    if hop_dis[i] == shortestpath[i]:
        count +=1
print(count/8)