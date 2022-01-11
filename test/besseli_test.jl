# general array for testing input to SpecialFunctions.jl
x = 0.01:0.01:10.0

### Tests for besseli0
i0_SpecialFunctions = SpecialFunctions.besseli.(0, x) 

i0_64 = besseli0.(Float64.(x))
i0_32 = besseli0.(Float32.(x))

# make sure output types match input types
@test i0_64[1] isa Float64
@test i0_32[1] isa Float32

# test against SpecialFunctions.jl
@test i0_64 ≈ i0_SpecialFunctions
@test i0_32 ≈ i0_SpecialFunctions

### Tests for besseli0x
i0x_SpecialFunctions = SpecialFunctions.besselix.(0, x) 

i0x_64 = besseli0x.(Float64.(x))
i0x_32 = besseli0x.(Float32.(x))

# make sure output types match input types
@test i0x_64[1] isa Float64
@test i0x_32[1] isa Float32

# test against SpecialFunctions.jl
@test i0x_64 ≈ i0x_SpecialFunctions
@test i0x_32 ≈ i0x_SpecialFunctions


### Tests for besseli1
i1_SpecialFunctions = SpecialFunctions.besseli.(1, x) 

i1_64 = besseli1.(Float64.(x))
i1_32 = besseli1.(Float32.(x))

# make sure output types match input types
@test i1_64[1] isa Float64
@test i1_32[1] isa Float32

# test against SpecialFunctions.jl
@test i1_64 ≈ i1_SpecialFunctions
@test i1_32 ≈ i1_SpecialFunctions

### Tests for besseli1x
i1x_SpecialFunctions = SpecialFunctions.besselix.(1, x) 

i1x_64 = besseli1x.(Float64.(x))
i1x_32 = besseli1x.(Float32.(x))

# make sure output types match input types
@test i1x_64[1] isa Float64
@test i1x_32[1] isa Float32

# test against SpecialFunctions.jl
@test i1x_64 ≈ i1x_SpecialFunctions
@test i1x_32 ≈ i1x_SpecialFunctions