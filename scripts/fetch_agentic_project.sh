#!/bin/bash

# agentic-project-management 저장소에서 main 브랜치 코드만 다운로드
echo "📥 다운로드 중..."
curl -L https://github.com/sdi2200262/agentic-project-management/archive/refs/heads/main.zip -o temp.zip

# 압축 해제
echo "📦 압축 해제 중..."
unzip -q temp.zip

# 대상 디렉토리 생성
mkdir -p agentic-project-management

# agentic-project-management 폴더로 복사
echo "📁 agentic-project-management 폴더에 파일 복사 중..."
cp -r agentic-project-management-main/* agentic-project-management/

# 임시 파일 정리
echo "🧹 임시 파일 삭제 중..."
rm -rf temp.zip agentic-project-management-main

echo "✅ 모든 작업이 완료되었습니다!"
