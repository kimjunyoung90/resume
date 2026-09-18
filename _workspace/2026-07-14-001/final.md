- **바꾸기 전에 영향 범위를 수치로 계산하고 움직입니다.**

    synchronized 병목을 제거할 때, 병렬 처리로 늘어날 DB 부하를 커넥션풀 크기(320)와 DB 최대치(2,205)로 계산해 안전을 확인하고 부하테스트로 개선 효과를 검증했습니다.

- **반복되는 불편은 참지 않고 도구로 만들어 없앱니다.**

    Kibana를 매번 뒤지는 대신, APM 지표를 자연어로 조회하는 MCP 서버를 만들어 배포하고 사내 교육으로 팀에 확산했습니다.

- **실패를 예외가 아니라 기본값으로 두고 설계합니다.**

    보상 트랜잭션이 실패할 것을 전제로 자동 재처리를 만들고 동시 요청의 중복 차감을 Optimistic Lock으로 차단했습니다.

<!-- HUMANIZE-SUMMARY v1.6.1
run_id: 2026-07-14-001
metrics:
  char_in: 374
  char_out: 373
  change_rate: 0.3%
  self_check: 6/6
  grade: A
categories:  # before → after
  C-11 연결어미(-고) 뒤 쉼표: 1 → 0
notes: 원문이 이미 사람이 쓴 격식체(합니다체) 경력기술서. 번역투(A)·관용구(D)·접속사(H)·hype(D-4)·피동 남용 없음. rule-mapped edit 1건뿐.
self_check:
  - 고유명사·수치·인용 100% 보존(synchronized·Kibana·APM·MCP·Optimistic Lock·DB·320·2,205): ✅
  - 변경률 30% 이하(0.3%): ✅
  - 장르 이탈 없음(공적 문서체 유지): ✅
  - register 보존(합니다체 그대로): ✅
  - S1 잔존 0건: ✅
  - 인공 표현 추가 없음: ✅
highlights:
  - id: C-11
    before: "자동 재처리를 만들고, 동시 요청의 중복 차감을 Optimistic Lock으로 차단했습니다."
    after: "자동 재처리를 만들고 동시 요청의 중복 차감을 Optimistic Lock으로 차단했습니다."
residual_findings: (없음)
grade_reason: "A — S1 잔존 0, S2 잔존 0, 자체검증 6항 통과. 원문이 이미 자연스러운 격식체라 근거 기반 최소 편집(C-11 쉼표 1건)만 적용."
-->
