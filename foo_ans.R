# Function to compute the volume of a sphere with radius r
# volume <- function(r, rho) {  # The second argument rho is not used in volume()
#     3/4*pi*r^2                # Formula used for computing the volume of a sphere is incorrect
# }                             # It should be 4/3 * pi * r^3

volume <- function(r) { 
    4/3 * pi * r^3      
}                       

# Function to compute the volumes of the spheres with radius r, r^2 and r^3 
# volume_vector <- function(r) {
#     r <- 22                       # r is redefined before it is used to calculate the volume
#     for (r in 2:4){               # 1. it should be 1:3 instead of 2:4
#         volume(r)                 # 2. it should be volume(r^pw) instead of volume(r)
#     }                             # 3. it should be the power (pw) that takes different values inside the loop
# }

volume_vector <- function(r) {
    volumes = c()
    for (pw in 1:3){
        print(volume(r^pw))
        volumes = c(volumes, volume(r^pw))
    }
    volumes
}

# Run volume_vector(r) and print the volumes of the spheres with radius r, r^2 and r^3 
r <- 2
volume_vector(r)

