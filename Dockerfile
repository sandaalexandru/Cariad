FROM mcr.microsoft.com/powershell
# Copy the PowerShell script to the container
COPY httpServer.ps1 /app/httpServer.ps1

# Set the working directory
WORKDIR /app

# Expose port 8080
EXPOSE 8080

# Run the PowerShell script
CMD ["pwsh", "-File", "httpServer.ps1"]