# Define the image name and tag
$imageName = "node-express-app"

# Build the Docker image using the Dockerfile in the current directory
Write-Output "Building Docker Image..."
docker build -t "${imageName}" .

# Output the result
if ($LASTEXITCODE -eq 0) {
    Write-Host "Docker image '${imageName}' built successfully."
} else {
    Write-Host "Failed to build Docker image '${imageName}'."
}