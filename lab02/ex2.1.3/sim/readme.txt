The structure of the sparsetree is based on three different components: Pg, G and PgNetwork, which are based on the description that we saw during lessons. 
We create two matrices where all the values created by the PgNetwork and by the internal Pg and G nodes are stored.
The first instantiated component is PgNetwork, which is the first level of the sparsetree and then we assign Cin directly to the first bit of Cout.

Next, the first loop iterates all levels of the sparsetree (the value is computed using the log2 function), the second loop iterates all the bits of each level. 

The first if statement, If is used to create nodes on the first log2(Nbitxblock) levels of the tree, since the nodes pattern in this level is simple.

If2 statement is used for the levels below the first two, we can see that the number of G blocks that create the carry outputs increase exponentially (base 2) each level, we use the indeces to check if the current bit is the correct one to instantiate G in the related column. In this case the bit must be multiple of Nbit_per_block (there is a carry output for each block). 

If4 is created to propagate the values of the internal PG nodes that are connected directly to the last G block when there is no PG nodes in the same column and in the levels below.
If5 is used to assign all the generated carries to each bit of the Cout tree output.




