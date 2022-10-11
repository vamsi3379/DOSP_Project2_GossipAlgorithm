# DOSP_Project2_GossipAlgorithm
## Project 2 : Gossip Algorithm in Erlang
For computation and communication among groups we make use of gossip algorithms and push sum algorithm over various topologies. After various experiments our end goal is to find the convergence among these through simulations that are dependent on actors. The algorithms involved in this project are Gossip and push sum. Topologies used for testing are 2D grid, full, line and impartial 3D.

### Group Members
| Names | UF-ID |
| ------ | ------ |
| Vamsi Pachamatla | 1708-0059 |
| Satya Venkata Sai Nirupam Yashas Kuchimanchi | 5043-1189 |

## How to run
1. Create a node for the project from the project path using the command:<br/>
   erl -name username@IPAddress.
2. After node creation and erl environment opening compile the erlang files gossip.erl, main.erl, pushsum.erl and topology.erl using the command:<br/>
   c(file).
3. Once the files are compiled and OK message is seen in the terminal, execute the project using<br/>
   main:start(workercount,"TopologyType","AlgorithType").
   
## What's Working
The project is working for the Gossip and Push Sum algorithms for the Full, line, 2D grid and impartial 3D topologies.

## Largest Network for various topologies and algorithms

| Alogorithm | Topology | Max Workers |
| ------ | ------ | ------ |
| gossip | line | 5000 |
| gossip | full | 12000 |
| gossip | 2D | 12000 |
| gossip | imp3D | 12000 |
| pushsum |  line | 7000 |
| pushsum | full | 10000 |
| pushsum | 2D | 5000 |
| pushsum | imp3D | 20000 |

Below screenshots are for reference indicating the maximum workers for every case.


### Gossip Algorithm - Line Topology

<img width="777" alt="linemaxgossip" src="https://user-images.githubusercontent.com/48911001/194990811-13813920-0308-4fd3-b28b-c5fc1ad9378f.png">

### Gossip Algorithm - Full Topology

<img width="701" alt="fullmaxgossip" src="https://user-images.githubusercontent.com/48911001/194990912-28708212-48ff-4834-9355-39d6a6c464c7.png">

### Gossip Algorithm - 2D Grid Topology

<img width="682" alt="2dmaxgossip" src="https://user-images.githubusercontent.com/48911001/194990966-c14f19e1-bb28-40f0-8e48-71a364f9473c.png">

### Gossip Algorithm - impartial 3D Grid Topology

<img width="673" alt="imp3dmaxgossip" src="https://user-images.githubusercontent.com/48911001/194990998-125c4734-3d47-40b7-897f-a9753508067f.png">

### Pushsum Algorithm - Line Topology
<img width="660" alt="pushsum-line" src="https://user-images.githubusercontent.com/48911001/194991453-dbaa0666-b58b-44bc-b935-f65d085b92c2.png">


### Pushsum Algorithm - Full Topology

<img width="718" alt="pushsum-full" src="https://user-images.githubusercontent.com/48911001/194991484-e0f4a16a-3e5c-4656-a8a6-210099c8ccda.png">


### Pushsum Algorithm - 2D Topology

<img width="690" alt="pushsum-2D" src="https://user-images.githubusercontent.com/48911001/194991765-26e6a54c-03b2-4b68-b500-fced6419e166.png">

### Pushsum Algorithm - impartial 3D Topology

<img width="733" alt="pushsum-imp3D" src="https://user-images.githubusercontent.com/48911001/194992006-15ded45e-33fa-4a5b-b6b0-d84017bb7d0e.png">



