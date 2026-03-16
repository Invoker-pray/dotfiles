
#刪除殘留快照，複製到/timeshift/snapshots/ 下運行



TARGET_DIR="/timeshift/snapshots"

if [[ "$(pwd)" != "$TARGET_DIR" ]]; then
    echo "❌ 請在 $TARGET_DIR 目錄下運行此腳本。"
    exit 1
fi

# 創建一個臨時的空資料夾
EMPTY_DIR="/tmp/empty_dir_$(date +%s)"
mkdir -p "$EMPTY_DIR"

# 列出已被 Timeshift 管理的快照
MANAGED_SNAPSHOTS=$(timeshift --list | grep '^Snapshot:' | awk '{print $2}')

# 列出當前目錄下所有快照資料夾
ALL_SNAPSHOTS=$(ls -1 "$TARGET_DIR")

echo "🔍 正在檢查殘留快照..."

# 對比後清理孤立快照
for SNAPSHOT in $ALL_SNAPSHOTS; do
    if echo "$MANAGED_SNAPSHOTS" | grep -qx "$SNAPSHOT"; then
        echo "✅ 已註冊快照（保留）: $SNAPSHOT"
    else
        echo "⚠️ 發現殘留快照：$SNAPSHOT，準備清除..."
        sudo rsync -a --delete "$EMPTY_DIR/" "$TARGET_DIR/$SNAPSHOT/"
        sudo rmdir "$TARGET_DIR/$SNAPSHOT" && echo "🗑️ 已刪除：$SNAPSHOT" || echo "❌ 無法刪除：$SNAPSHOT"
    fi
done

# 清理空資料夾
rm -rf "$EMPTY_DIR"
echo "✅ 清理完成"
