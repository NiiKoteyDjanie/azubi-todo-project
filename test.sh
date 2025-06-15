#!/bin/bash
echo "🔁 Testing Backend Health Endpoint..."
curl http://localhost:5000/health || echo "❌ Backend not responding"

echo "🌐 Testing Frontend..."
curl http://localhost:5173 || echo "❌ Frontend not responding"

echo "🛢️  Testing MongoDB Connection (requires mongo client)..."
docker exec -it $(docker ps -qf "name=mongo") mongo --eval "db.stats()" || echo "❌ MongoDB not responding"
