#include <jrand.cl>

inline uint next(unsigned long* seed, int bits) {
    *seed = (*seed * 0x5DEECE66DUL + 0xBUL) & ((1UL << 48) - 1);
    return *seed >> (48 - bits);
}

__kernel void start(ulong offset, ulong stride, __global ulong *seeds, __global ushort *ret) {
  size_t id = get_global_id(0);
  uchar max_count = 0;
  uchar max_last = 0;
  ulong seed_base = (offset + id) * stride;
  for (ulong i = 0; i < stride; i++) {
    uchar count = 0;
    uchar last = 0;
    ulong worldSeed = seed_base | i;
    ulong seed = worldSeed;

            if(next(&seed, 7) != 44)continue;
            

            unsigned long tempSeed = (seed * 21586261248413UL + 164331561754775UL) & 281474976710655UL;
            
            
            if(next(&seed, 1) != 1)continue;
            if(next(&seed, 1) != 1)continue;
        
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) != 0)continue;
			seed = (seed * 25214903917UL + 11UL) & 281474976710655UL;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) != 0)continue;
			seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) != 0)continue;
			seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) != 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			seed = (seed * 233752471717045UL + 11718085204285UL) & 281474976710655UL;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			seed = (seed * 233752471717045UL + 11718085204285UL) & 281474976710655UL;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			if(next(&seed, 2) == 0)continue;
			seed = (seed * 233752471717045UL + 11718085204285UL) & 281474976710655UL;
			if(next(&seed, 2) != 0)continue;

    max_count++;
    seeds[id] = worldSeed;
  }
  ret[id] = (max_count << 8) | max_last;
}