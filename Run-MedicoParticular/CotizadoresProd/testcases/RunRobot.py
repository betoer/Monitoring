import robot

logFile = open('LogExecution.txt', 'w') 
robot.run("VidaSikuli.robot",stdout=logFile)