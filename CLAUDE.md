# CLAUDE.md

이 파일은 Claude Code(claude.ai/code)가 이 저장소에서 작업할 때 참고하는 가이드입니다.

## 명령어

```bash
npm install          # gh-pages 의존성 설치 (최초 1회)
npx serve .          # index.html 로컬 미리보기 서버 실행
npm run deploy       # GitHub Pages 배포 (루트 디렉토리를 gh-pages 브랜치에 푸시)
```

별도 빌드 단계 없음 — `index.html`을 브라우저에서 직접 열거나 `npx serve .`로 확인.

## 구조

`https://kimjunyoung90.github.io/resume/`에 배포되는 단일 파일 정적 이력서입니다.

- **`index.html`** — CSS가 `<style>` 태그에 인라인으로 포함된 이력서 UI. 배포되는 유일한 파일.
- **`resume.md`** — 이력서 내용 초안 및 변경 이력 관리용. 내용 수정 시 `index.html`과 항상 동기화 필요.
- **`images/`** — `index.html`에서 절대 URL(`https://kimjunyoung90.github.io/resume/images/...`)로 참조하는 이미지 파일.

## index.html 콘텐츠 구조

섹션 계층: `h2` (My Working Style, Skills, Work Experience, Projects, Certifications) → `h3` (회사/프로젝트 그룹) → `h4` (개별 프로젝트). 문제 해결 항목은 `.problem-solving` > `.ps-section` > `.ps-label`(problem/solution/result) + `.ps-content` 패턴을 사용.

## 스타일 규칙

- 색상 팔레트: `#1a202c`(주요 텍스트), `#718096`(보조 텍스트), `#e2e8f0`(구분선), `#2d3748`(보조)
- CSS 클래스명은 하이픈으로 구분된 소문자: `.contact-section`, `.project-period`, `.ps-label`
- `@media print` 블록은 PDF/A4 페이지 나누기를 제어 — 레이아웃 깨짐 방지를 위해 신중하게 수정
- 이미지 파일명은 소문자 + 하이픈으로 `images/` 하위에 저장

## 배포

`npm run deploy`는 `gh-pages -d .`를 실행하여 루트 디렉토리 전체(`.git` 제외)를 `gh-pages` 브랜치에 푸시합니다. 배포 후 `https://kimjunyoung90.github.io/resume/`에서 결과를 확인합니다.
