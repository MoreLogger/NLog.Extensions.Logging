#!/bin/bash
curl -sSL https://raw.githubusercontent.com/dotnet/cli/rel/1.0.0-preview1/scripts/obtain/dotnet-install.sh | bash /dev/stdin --version 1.0.0-preview1-002702 --install-dir ~/dotnet

dotnet restore src/NLog.Extensions.Logging
dotnet build   src/NLog.Extensions.Logging --configuration release
