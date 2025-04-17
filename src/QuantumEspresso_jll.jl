# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule QuantumEspresso_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("QuantumEspresso")
JLLWrappers.@generate_main_file("QuantumEspresso", UUID("74603b90-2fcf-5710-a7d7-830b31b8b33c"))
end  # module QuantumEspresso_jll
