#!/bin/bash
# 模擬測試流程，不用任何外部工具
echo "Running fake tests..."
sleep 1
if [[ 1 -eq 1 ]]; then
    echo "✅ All tests passed!"
    exit 0
else
    echo "❌ Test failed!"
    exit 1
fi
