import numpy as np

vertices = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]  #array of vertices
numVertices = 30 #number of vertices
type = 'mdp'    #type of Prism model being made
lowCost = 2     #minimum distance cost
highCost = 4    #maximum distance cost
maxTime = 20    #max for the timing constants of each agent (clock_X)
speedHuman = 3  #human travel speed (time/distance)
speedUAV = 1    #UAV travel speed (time/distance)
speedUGV = 2    #UGV travel speed (time/distance)
filename = 'constants.pm'    #filename
file = open(filename,"w")
wrong = 0.1
right = 0.8

#file.write(type + '\n')
#Constants
#Distance Constants
for b in range(0, numVertices+1):
    for a in range(0,numVertices+1):
        if a != b:
#            cost = np.random.random_integers(lowCost, high=highCost)
#            file.write('const int D' + repr(b) + repr(a) + ' = ' + repr(cost) + ';\n')
            if b<a:
                file.write('[] uav = site' + repr(b) + ' & uav_battery > -1-> ' + repr(wrong) + ':(uav\' = site' + repr(a) + ') & (uav_battery\' = uav_battery - D'+ repr(b) + repr(a) + ' - 1) + ' + repr(wrong) + ':(uav\' = site' + repr(a) + ') & (uav_battery\' = uav_battery - D'+ repr(b) + repr(a) +' + 1) + ' + repr(right) + ':(uav\' = site'+ repr(a) + ') & (uav_battery\' = uav_battery - D'+ repr(b) + repr(a) +');\n')
            else: #a>b
                file.write('[] uav = site' + repr(b) + ' & uav_battery > -1-> ' + repr(wrong) + ':(uav\' = site' + repr(a) + ') & (uav_battery\' = uav_battery - D'+ repr(a) + repr(b) + ' - 1) + ' + repr(wrong) + ':(uav\' = site' + repr(a) + ') & (uav_battery\' = uav_battery - D'+ repr(a) + repr(b) +' + 1) + ' + repr(right) + ':(uav\' = site'+ repr(a) + ') & (uav_battery\' = uav_battery - D'+ repr(a) + repr(b) +');\n')

file.close()
