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
        if(random_next(&seed, 7) != 19)return;
            if(random_next(&seed, 4) != 7)return;
            unsigned long tempSeed = (seed * 21586261248413LL + 164331561754775LL) & 281474976710655LL;
            if(random_next(&tempSeed, 4) != 15)return;
            
            if(random_next(&seed, 1) != 1)return;
            if(random_next(&seed, 1) != 1)return;
        
            seed = (seed * 128954768138017LL + 137139456763464LL) & 281474976710655LL;
            if(random_next(&seed, 2) == 0)return;
            seed = (seed * 25214903917LL + 11LL) & 281474976710655LL;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            seed = (seed * 205749139540585LL + 277363943098LL) & 281474976710655LL;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            seed = (seed * 25214903917LL + 11LL) & 281474976710655LL;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            seed = (seed * 25214903917LL + 11LL) & 281474976710655LL;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            seed = (seed * 205749139540585LL + 277363943098LL) & 281474976710655LL;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            seed = (seed * 205749139540585LL + 277363943098LL) & 281474976710655LL;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            seed = (seed * 205749139540585LL + 277363943098LL) & 281474976710655LL;
            if(random_next(&seed, 2) != 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;
            if(random_next(&seed, 2) == 0)return;

    max_count++;
    seeds[id] = worldSeed;
  }
  ret[id] = (max_count << 8) | max_last;
}
