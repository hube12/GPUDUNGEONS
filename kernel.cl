#include <jrand.cl>



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
     seed = (seed * 0x5DEECE66DUL + 0xBUL) & ((1UL << 48) - 1);
        if(random_next(&seed, 7) != 19)continue;
            if(random_next(&seed, 4) != 7)continue;
            unsigned long tempSeed = (seed * 21586261248413UL + 164331561754775UL) & 281474976710655UL;
            if(random_next(&tempSeed, 4) != 15)continue;
            
            if(random_next(&seed, 1) != 1)continue;
            if(random_next(&seed, 1) != 1)continue;
        
            seed = (seed * 128954768138017UL + 137139456763464UL) & 281474976710655UL;
            if(random_next(&seed, 2) == 0)continue;
            seed = (seed * 25214903917UL + 11UL) & 281474976710655UL;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            seed = (seed * 25214903917UL + 11UL) & 281474976710655UL;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            seed = (seed * 25214903917UL + 11UL) & 281474976710655UL;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            seed = (seed * 205749139540585UL + 277363943098UL) & 281474976710655UL;
            if(random_next(&seed, 2) != 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;
            if(random_next(&seed, 2) == 0)continue;

    max_count++;
    seeds[id] = worldSeed;
  }
  ret[id] = (max_count << 8) | max_last;
}
