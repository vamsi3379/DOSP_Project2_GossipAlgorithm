
-module(gossip).
-author("vamsi").
-import(timer,[send_after/3]).

%% API
-export([gossipWorker/2, gossiper/2]).

gossiper(Rumor,[]) -> "nothing";
gossiper(Rumor, Nearest) ->
  Dest = get_random_neighbor(Nearest),
  send_after(100, Dest, {rumor,Rumor}),
  gossiper(Rumor, Nearest).

get_random_neighbor(Nearest) ->
  lists:nth(rand:uniform(length(Nearest)),Nearest).

gossipWorker(N, Nearest) ->
  receive
    hello -> io:format("In gossip~n");
    {setup, NeighborList} ->
      tpid ! iamready,
      gossipWorker(N, NeighborList);

    {rumor, Rumor} ->
      if
        N+1 == 1 ->
          tpid ! heard,
          spawn(gossip, gossiper, [Rumor, Nearest]),
          gossipWorker(N+1, Nearest);
        N < 12 ->
          gossipWorker(N+1, Nearest);
        N >= 12 ->
          exit(self(),normal)
      end
  end,
  gossipWorker(N, Nearest).

