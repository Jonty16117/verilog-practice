# Use a base image with necessary tools and X11 support
FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    iverilog \
    gtkwave \
    x11-apps

# Set the working directory
WORKDIR /app

# Copy your Verilog files to the container
# COPY . /app

# Set execute permissions for the script
# RUN chmod +x /app/simulate.sh

# Command to run when the container starts
# CMD ["/bin/bash"]
# ENTRYPOINT ["tail", "-f","/dev/null"]

# ENTRYPOINT ["/app/simulate.sh", "my_design.sv","my_testbench.sv", "-w"]
ENTRYPOINT ["/app/simulate.sh"]