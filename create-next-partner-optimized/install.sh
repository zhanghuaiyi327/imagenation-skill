#!/bin/bash

# Create Next Partner Skill 安装脚本
# 用于将Skill安装到Claude Code环境

set -e

echo "========================================"
echo "Create Next Partner Skill 安装程序"
echo "========================================"

# 检查是否在git仓库中
if [ ! -d ".git" ]; then
    echo "⚠️  当前目录不是git仓库根目录"
    echo "建议在项目根目录运行此脚本"
    read -p "是否继续？(y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "安装已取消"
        exit 1
    fi
fi

# 选择安装方式
echo ""
echo "请选择安装方式："
echo "1. 安装到当前项目（推荐）"
echo "2. 安装到全局（所有项目都能用）"
echo "3. 仅安装依赖"
echo "4. 退出"
echo ""

read -p "请输入选择 (1-4): " choice

case $choice in
    1)
        echo "正在安装到当前项目..."
        mkdir -p .claude/skills
        if [ -d ".claude/skills/create-next-partner" ]; then
            echo "⚠️  已存在create-next-partner，正在更新..."
            cd .claude/skills/create-next-partner
            git pull
            cd -
        else
            # 复制当前目录到.claude/skills
            cp -r . .claude/skills/create-next-partner/
            # 移除不需要的文件
            rm -rf .claude/skills/create-next-partner/.git
            rm -rf .claude/skills/create-next-partner/.claude
            echo "✅ 已安装到 .claude/skills/create-next-partner/"
        fi
        ;;
    2)
        echo "正在安装到全局..."
        mkdir -p ~/.claude/skills
        if [ -d "~/.claude/skills/create-next-partner" ]; then
            echo "⚠️  已存在create-next-partner，正在更新..."
            cd ~/.claude/skills/create-next-partner
            git pull
            cd -
        else
            # 复制当前目录到~/.claude/skills
            cp -r . ~/.claude/skills/create-next-partner/
            # 移除不需要的文件
            rm -rf ~/.claude/skills/create-next-partner/.git
            rm -rf ~/.claude/skills/create-next-partner/.claude
            echo "✅ 已安装到 ~/.claude/skills/create-next-partner/"
        fi
        ;;
    3)
        echo "正在安装Python依赖..."
        if [ -f "requirements.txt" ]; then
            pip3 install -r requirements.txt
            echo "✅ 依赖安装完成"
        else
            echo "❌ 未找到requirements.txt文件"
            exit 1
        fi
        ;;
    4)
        echo "安装已取消"
        exit 0
        ;;
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

# 检查是否需要安装依赖
if [ $choice -eq 1 ] || [ $choice -eq 2 ]; then
    read -p "是否安装Python依赖？(y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if [ -f "requirements.txt" ]; then
            echo "正在安装Python依赖..."
            pip3 install -r requirements.txt
            echo "✅ 依赖安装完成"
        else
            echo "⚠️  未找到requirements.txt文件，跳过依赖安装"
        fi
    fi
fi

echo ""
echo "========================================"
echo "安装完成！"
echo "========================================"
echo ""
echo "使用方法："
echo "1. 在Claude Code中输入: /create-next-partner"
echo "2. 按提示输入前任分析和下一任要求"
echo "3. 完成后用 /{partner_code} 调用伴侣Skill"
echo ""
echo "管理命令："
echo "- /list-partners : 列出所有伴侣Skill"
echo "- /partner-rollback {slug} {version} : 回滚到历史版本"
echo "- /delete-partner {slug} : 删除伴侣Skill"
echo ""
echo "更多信息请查看 README.md"
echo "========================================"