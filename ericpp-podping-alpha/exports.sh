
if [ -f "${EXPORTS_APP_DIR}/data/node_friendly_name.txt" ]; then
    read -r APP_NODE_FRIENDLY_NAME < "${EXPORTS_APP_DIR}/data/node_friendly_name.txt"
    export APP_NODE_FRIENDLY_NAME
    echo "Node friendly name: $APP_NODE_FRIENDLY_NAME"
fi
