FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
WORKDIR /app

COPY /out ./
ENTRYPOINT ["dotnet", "aspcore.dll"]