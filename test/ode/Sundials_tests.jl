using OrdinaryDiffEq

prob = prob_ode_linear
dt = 1//2^(4)
@time sol =solve(prob::ODEProblem,dt=dt,save_timeseries=true,alg=:cvode_BDF)
@time sol =solve(prob::ODEProblem,dt=dt,save_timeseries=true,alg=:cvode_Adams)
@time sol =solve(prob::ODEProblem,dt=dt,save_timeseries=true,alg=:cvode_Adams,adaptive=false)

prob = prob_ode_2Dlinear
@time sol =solve(prob::ODEProblem,dt=dt,save_timeseries=true,alg=:cvode_BDF)
@time sol =solve(prob::ODEProblem,dt=dt,save_timeseries=true,alg=:cvode_Adams)
@time sol =solve(prob::ODEProblem,dt=dt,save_timeseries=true,alg=:cvode_Adams,adaptive=false)

length(sol)==17
