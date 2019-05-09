FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
WORKDIR /app

COPY /out ./
ENTRYPOINT ["dotnet", "aspcore.dll"]
RUN docker run -p 5000:80 --name aspcorewebapp aspcoreapp