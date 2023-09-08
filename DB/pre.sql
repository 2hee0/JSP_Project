
-- 개인정보 테이블 (user_info) 생성
CREATE TABLE user_info (
   user_id            varchar2(100) PRIMARY KEY,
   user_pw            varchar2(100),
   user_name          varchar2(100),
   user_nick            varchar2(100),
   user_gender        varchar2(100),
   user_birth         number(10),
   user_phone         varchar2(100),
   membership_type      varchar2(100),
   membership_signup   DATE,
   membership_expire    DATE
);


-- 개인정보 테이블 (user_info)에 데이터 입력
INSERT ALL 
INTO USER_INFO  (user_id, user_pw, user_name, user_nick, user_gender, user_birth, user_phone, membership_type, membership_signup, membership_expire) VALUES ('hee0@naver.com', '134679', '이희영', '형이', '여자', '930413', '01012345678', 'standard 1개월 이용권', '2023-08-26', '2023-09-26')
INTO USER_INFO  (user_id, user_pw, user_name, user_nick, user_gender, user_birth, user_phone, membership_type, membership_signup, membership_expire) VALUES ('ldh98721@gmail.com', '123456', '이동현', '이또', '남자', '980721', '01044149468', 'standard 12개월 이용권', '2022-11-14', '2023-11-13')
INTO USER_INFO  (user_id, user_pw, user_name, user_nick, user_gender, user_birth, user_phone, membership_type, membership_signup, membership_expire) VALUES ('ongong11@hanmail.net', '12345', '페드리', 'Barbaraann', '남자', '840917', '01099999999', 'premium 1개월 이용권', '2023-09-01', '2023-10-01')
INTO USER_INFO  (user_id, user_pw, user_name, user_nick, user_gender, user_birth, user_phone, membership_type, membership_signup, membership_expire) VALUES ('khn9811@gmail.com', 'khn1234', '김호년', 'kinho', '남자', '981124', '01012345555', 'premium 12개월 이용권', '2023-07-10', '2024-07-09')
INTO USER_INFO  (user_id, user_pw, user_name, user_nick, user_gender, user_birth, user_phone, membership_type, membership_signup, membership_expire) VALUES ('kim123@naver.com', '852963', '김현욱', '혀눅', '남자', '991206', '01089561245', '', '', '')
INTO USER_INFO  (user_id, user_pw, user_name, user_nick, user_gender, user_birth, user_phone, membership_type, membership_signup, membership_expire) VALUES ('hj94@hanmil.net', '1234', '이현지', '핸지', '여자', '940418', '01099280175', 'premium 12개월 이용권', '2023-04-07', '2024-04-06')
SELECT * FROM DUAL ;

SELECT * FROM USER_INFO ui ;

-- 프로필 테이블 (user_profile) 생성
CREATE TABLE user_profile (
   profile_index   number(10) PRIMARY KEY,
   user_birth      varchar2(100),
   user_name       varchar2(100),
   user_id         varchar2(100),
   user_pw         varchar2(100)
);

-- 프로필 테이블 (user_profile)과 개인정보 테이블(user_info) 연결
ALTER TABLE    USER_PROFILE 
ADD CONSTRAINT    fk_user_id
FOREIGN KEY    (user_id) 
REFERENCES       user_info(user_id) 
ON DELETE SET NULL;

-- 프로필 테이블 (user_profile)에 값 입력
INSERT ALL 
INTO USER_PROFILE  (profile_index, user_birth, user_name, user_id, user_pw) VALUES (1, '930413', '이희영', 'hee0@naver.com', '134679')
INTO USER_PROFILE  (profile_index, user_birth, user_name, user_id, user_pw) VALUES (2, '980721', '이동현', 'ldh98721@gmail.com', '123456')
INTO USER_PROFILE  (profile_index, user_birth, user_name, user_id, user_pw) VALUES (3, '840917', '페드리', 'ongong11@hanmail.net', '12345')
INTO USER_PROFILE  (profile_index, user_birth, user_name, user_id, user_pw) VALUES (4, '981124', '김호년', 'khn9811@gmail.com', 'khn1234')
INTO USER_PROFILE  (profile_index, user_birth, user_name, user_id, user_pw) VALUES (5, '991206', '김현욱', 'kim123@naver.com', '852963')
SELECT * FROM DUAL ;

SELECT * FROM USER_PROFILE up ;

-- 멤버십 테이블 (user_membership) 생성
CREATE TABLE user_membership (
   membership_index   varchar2(100) PRIMARY KEY,
   membership_type   varchar2(100),
   membership_cost  number(10),
   user_id         varchar2(100)
);

-- 멤버십 테이블 (user_membership)과 개인정보 테이블(user_info) 연결
ALTER TABLE    USER_MEMBERSHIP 
ADD CONSTRAINT    fk_user_id2
FOREIGN KEY    (user_id)
REFERENCES       user_info(user_id) 
ON DELETE SET NULL;

-- 멤버십 테이블 (user_membership) 데이터 입력
INSERT ALL 
INTO USER_MEMBERSHIP  (membership_index, membership_type, membership_cost, user_id) VALUES (1, 'standard 1개월 이용권', '10900', 'hee0@naver.com')
INTO USER_MEMBERSHIP  (membership_index, membership_type, membership_cost, user_id) VALUES (2, 'standard 12개월 이용권', '109000', 'ldh98721@gmail.com')
INTO USER_MEMBERSHIP  (membership_index, membership_type, membership_cost, user_id) VALUES (3, 'premium 1개월 이용권', '13900', 'ongong11@hanmail.net')
INTO USER_MEMBERSHIP  (membership_index, membership_type, membership_cost, user_id) VALUES (4, 'premium 12개월 이용권', '139000', 'khn9811@gmail.com')
SELECT * FROM DUAL ;

SELECT * FROM USER_MEMBERSHIP um ;

-- contents 테이블 (contents) 생성
CREATE TABLE contents (
   content_index      number(10) PRIMARY KEY,
   content_title      varchar2(100),
   content_info      varchar2(1000),
   content_released   varchar2(100)
);

-- contents 테이블 (contents) 시퀀스 생성
--CREATE SEQUENCE contentidx_seq
--START WITH 1
--INCREMENT BY 1;
-- 시퀀스 삭제 DROP SEQUENCE contentidx_seq ;

-- contents 테이블 (contents) 데이터 입력
INSERT ALL 
INTO contents  (content_index, content_title, content_info, content_released) VALUES (1, '컨저링', '1981년, 미국 역사상 최초로 잔혹한 살인사건의 용의자가 악마가 살해하도록 시켰다고 주장하는 초유의 사태가 일어난다! 그리고 사건의 배후에는 악마에게 빙의된 소년이 있었는데… 초자연 현상 연구가 워렌 부부의 사건 파일 중 여전히 미스터리로 남아있는 실화! 진실 혹은 거짓? 살인사건의 범인, 인간인가 악마인가...', '2021-06-03')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (2, '곤지암', '1979년 환자 42명의 집단 자살과 병원장의 실종 이후, 섬뜩한 괴담으로 둘러싸인 곤지암 정신병원으로 공포체험을 떠난 7명의 멤버들 원장실, 집단 치료실, 실험실, 열리지 않는 402호… 괴담의 실체를 담아내기 위해 병원 내부를 촬영하기 시작하던 멤버들에게 상상도 못한 기이하고 공포스러운 일들이 실제로 벌어지기 시작 하는데… 가지 말라는 곳에는 반드시 이유가 있다. 소름 끼치는 곤지암 정신병원 의 실체를 체험하라!', '2018-03-28')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (3, '곡성', '낯선 외지인(쿠니무라 준)이 나타난 후 벌어지는 의문의 연쇄 사건들로 마을이 발칵 뒤집힌다. 경찰은 집단 야생 버섯 중독으로 잠정적 결론을 내리지만 모든 사건의 원인이 그 외지인 때문이라는 소문과 의심이 걷잡을 수 없이 퍼져 나간다. 경찰 종구(곽도원)는 현장을 목격했다는 여인 무명(천우희)을 만나면서 외지인에 대한 소문을 확신하기 시작한다. 딸 효진(김환희)이 피해자들과 비슷한 증상으로 아파오기 시작하자 다급해진 종구. 외지인을 찾아 난동을 부리고, 무속인 일광(황정민)을 불러들이는데...', '2016-05-12')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (4, '어바웃 타임', '모태솔로 팀(돔놀 글리슨)은 성인이 된 날, 아버지(빌 나이)로부터 놀랄만한 가문의 비밀을 듣게 된다. 바로 시간을 되돌릴 수 있는 능력이 있다는 것! 꿈을 위해 런던으로 간 팀은 우연히 만난 사랑스러운 여인 메리에게 첫눈에 반하게 된다. 그녀의 사랑을 얻기 위해 자신의 특별한 능력을 마음껏 발휘하는 팀. 어설픈 대시, 어색한 웃음은 리와인드! 꿈에 그리던 그녀와 매일매일 최고의 순간을 보낸다. 하지만 그와 그녀의 사랑이 완벽해질수록 팀을 둘러싼 주변 상황들은 미묘하게 엇갈리고, 예상치 못한 사건들이 여기저기 나타나기 시작하는데… 어떠한 순간을 다시 살게 된다면, 과연 완벽한 사랑을 이룰 수 있을까?', '2013-12-05')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (5, '노트북', '17살, 노아는 밝고 순수한 앨리를 보고 첫눈에 반한다. 빠른 속도로 서로에게 빠져드는 둘. 그러나 이들 앞에 놓인 장벽에 막혀 이별하게 된다. 24살, 앨리는 우연히 신문에서 노아의 소식을 접하고 잊을 수 없는 첫사랑 앞에서 다시 한 번 선택의 기로에 서게 되는데… 열일곱의 설렘, 스물넷의 아픈 기억, 그리고 마지막까지… 한 사람을 지극히 사랑했으니 내 인생은 성공한 인생입니다', '2004-11-26')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (6, '너의 결혼식', '고3 여름, 전학생 승희(박보영)를 보고 첫눈에 반한 우연(김영광). 승희를 졸졸 쫓아다닌 끝에 마침내 공식커플로 거듭나려던 그때! 잘 지내라는 전화 한 통만 남긴 채 승희는 사라져버리고, 우연의 첫사랑은 그렇게 막을 내리는 듯했다. 1년 뒤, 승희의 흔적을 쫓아 끈질긴 노력으로 같은 대학에 합격한 우연. 그런데 그의 앞을 가로막은 건… 다름 아닌 그녀의 남.자.친.구! 예술로 빗나가는 타이밍 속 다사다난한 그들의 첫사랑 연대기는 계속된다!', '2018-08-22')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (7, '범죄도시3', '대체불가 괴물형사 마석도, 서울 광수대로 발탁! 베트남 납치 살해범 검거 후 7년 뒤, 마석도(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다. 사건 조사 중, 마석도는 신종 마약 사건이 연루되었음을 알게 되고 수사를 확대한다. 한편, 마약 사건의 배후인 주성철(이준혁)은 계속해서 판을 키워가고 약을 유통하던 일본 조직과 리키(아오키 무네타카)까지 한국에 들어오며 사건의 규모는 점점 더 커져가는데... 나쁜 놈들 잡는 데 이유 없고 제한 없다. 커진 판도 시원하게 싹 쓸어버린다!', '2023-05-31')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (8, '미션임파서블 폴아웃', '도난당한 핵무기를 되찾아 오는 위험천만한 작전 중, 에단 헌트(톰 크루즈)는 임무를 포기하고, 팀원의 목숨을 구하는 선택을 한다. 이제, 핵무기는 문명을 무너뜨리려는 사악한 테러조직의 손에 넘어갔다. 세계를 멸망시킬 핵 재앙을 막기 위해 세계 최강 스파이기관, IMF의 에단 헌트와 정예 요원들(사이먼 페크, 빙 라메스, 레베카 퍼거슨)은 숙명의 라이벌, 중앙정보국 CIA의 상급 요원(헨리 카빌)과 불편한 동맹을 맺어야만 한다. 이보다 더 불가능한 미션은 없었다! 역대 최대 규모, 최강 액션을 기대하라!', '2018-07-25')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (9, '럭키', '냉혹한 킬러 형욱(유해진)은 사건 처리 후 우연히 들른 목욕탕에서 비누를 밟고 넘어져 과거의 기억을 잃게 된다. 인기도, 삶의 의욕도 없어 죽기로 결심한 무명배우 재성(이준)은 신변 정리를 위해 들른 목욕탕에서 그런 형욱을 보게 되고, 자신과 그의 목욕탕 키를 바꿔 도망친다. 이후 형욱은 자신이 재성이라고 생각한 채, 배우로 성공하기 위해 노력하는데… 인생에 단 한번 찾아온 초대형 기회! 초특급 반전! 이것이 LUCK.KEY다!', '2016-10-13')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (10, '인턴', '창업 1년 반 만에 직원 220명의 성공신화를 이룬 줄스(앤 해서웨이). TPO에 맞는 패션센스, 업무를 위해 사무실에서도 끊임 없는 체력관리, 야근하는 직원 챙겨주고, 고객을 위해 박스포장까지 직접 하는 열정적인 30세 여성 CEO! 한편, 수십 년 직장생활에서 비롯된 노하우와 나이만큼 풍부한 인생경험이 무기인 만능 70세의 벤(로버트 드 니로)을 인턴으로 채용하게 되는데..', '2015-09-24')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (11, '맨 인 블랙: 인터내셔널', '자신의 모습을 감추고 오랜 시간 지구를 위협해 온 외계인을 감시하는 MIB본부. MIB 본부에도 변화가 요구되면서 신입요원 에이전트 M(테사 톰슨)이 영입되고 MIB 에이스 요원 에이전트 H(크리스 헴스워스)가 듀오로 결성 된다! 그들에겐 MIB 내부의 스파이를 찾아야 하는 전대미문의 미션이 주어지는데…', '2019-06-12')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (12, '해리포터 혼혈왕자', '어둠의 세력이 더욱 강력해져 머글 세계와 호그와트까지 위협해온다. 위험한 기운을 감지한 덤블도어 교수는 다가올 전투에 대비하기 위해 해리 포터와 함께 대장정의 길을 나선다. 볼드모트를 물리칠 수 있는 유일한 단서이자 그의 영혼을 나누어 놓은 7개의 호크룩스를 파괴하는 미션을 수행해야만 하는 것!남겨진 결전을 위한 최후의 미션, 볼드모트와 해리 포터에 얽힌 치명적인 비밀, 선택된 자만이 통과할 수 있는 대단원을 향한 본격적인 대결이 시작된다!', '2023-09-06')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (13, '아이언맨3', '<어벤져스> 뉴욕 사건의 트라우마로 인해 영웅으로서의 삶에 회의를 느끼는 토니 스타크(로버트 다우니 주니어). 그가 혼란을 겪는 사이 최악의 테러리스트 만다린(벤 킹슬리)을 내세운 익스트리미스 집단 AIM이 스타크 저택에 공격을 퍼붓는다. 이 공격으로 그에게 남은 건 망가진 수트 한벌 뿐. 모든 것을 잃어버린 그는 다시 테러의 위험으로부터 세계와 사랑하는 여인(기네스 팰트로)를 지켜내야 하는 동시에 머릿속을 떠나지 않던 한가지 물음의 해답도 찾아야만 한다. 과연 그가 아이언맨인가? 수트가 아이언맨인가?', '2013-04-25')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (14, '설국열차', '기상 이변으로 모든 것이 꽁꽁 얼어붙은 지구. 살아남은 사람들을 태운 기차 한 대가 끝없이 궤도를 달리고 있다. 춥고 배고픈 사람들이 바글대는 빈민굴 같은 맨 뒤쪽의 꼬리칸, 그리고 선택된 사람들이 술과 마약까지 즐기며 호화로운 객실을 뒹굴고 있는 앞쪽칸. 열차 안의 세상은 결코 평등하지 않다. 기차가 달리기 시작한 17년 째, 꼬리칸의 젊은 지도자 커티스는 긴 세월 준비해 온 폭동을 일으킨다. 그들 앞에 예기치 못한 상황들이 기다리고 있는데…', '2013-08-01')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (15, '뽀로로 슈퍼썰매대모험', '슈퍼썰매 챔피언을 꿈꾸는 뽀로로와 친구들은 허풍쟁이 배달왕 거북이들로부터 슈퍼썰매 챔피언이 되기 위한 특별훈련을 받게 된다. 난생 처음으로 뽀롱마을을 떠나 얼음나라 노스피아로 꿈을 이루기 위한 대모험을 떠난다. 그러나 언제나 모두를 괴롭히는 악당 불곰 푸푸의 계략으로 위기에 빠지게 되는데... 뽀로로와 친구들은 최고의 슈퍼썰매 챔피언이 될 수 있을까?', '2013-01-23')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (16, '인사이드아웃', '모든 사람의 머릿속에 존재하는 감정 컨트롤 본부 그곳에서 불철주야 열심히 일하는 기쁨, 슬픔, 버럭, 까칠, 소심 다섯 감정들. 이사 후 새로운 환경에 적응해야 하는 라일리를 위해 그 어느 때 보다 바쁘게 감정의 신호를 보내지만 우연한 실수로 기쁨과 슬픔이 본부를 이탈하게 되자 라일리의 마음 속에 큰 변화가 찾아온다. 라일리가 예전의 모습을 되찾기 위해서는 기쁨과 슬픔이 본부로 돌아가야만 한다! 과연, 라일리는 다시 행복해질 수 있을까?', '2015-07-09')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (17, '명탐정 코난: 탐정들의 진혼가', '수수께끼의 의뢰인으로부터 초대받아 미라클 랜드를 방문한 코난 일행. 의뢰인은 제한된 12시간 내 자신이 의뢰한 사건을 해결하지 못하면, 코난과 유명한 탐정뿐만 아니라 미란과 장미 그리고 어린이 탐정단의 손목에 찬 미라클 랜드 프리패스 ID에 설치된 폭탄이 폭발할 것이라 위협한다.코난과 탐정들은 과연 수수께끼를 풀고 사상 최악의 위기에서 벗어날 수 있을 것인가!?', '2014-02-13')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (18, '신세계', '경찰청 수사 기획과 강과장(최민식)은 국내 최대 범죄 조직인 골드문이 기업형 조직으로 그 세력이 점점 확장되자 신입경찰 이자성(이정재)에게 잠입 수사를 명한다. 그리고 8년, 자성은 골드문의 2인자이자 그룹 실세인 정청(황정민)의 오른팔이 되기에 이른다. 시시각각 신분이 노출될 위기에 처한 자성(이정재)은 언제 자신을 배신할 지 모르는 경찰과, 형제의 의리로 대하는 정청(황정민) 사이에서 갈등하게 되는데…', '2013-02-21')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (19, '범죄와의 전쟁', '1982년 부산. 해고될 위기에 처한 비리 세관원 최익현(최민식)은 순찰 중 적발한 히로뽕을 일본으로 밀수출, 마지막으로 한 탕 하기 위해 부산 최대 조직의 젊은 보스 최형배(하정우)와 손을 잡는다. 머리 쓰는 나쁜 놈과 주먹 쓰는 나쁜 놈, 부산을 접수하다!넘버원이 되고 싶은 나쁜 놈들의 한판 승부. 살아남기 위해 벌이는 치열한 한판 승부, 최후에 웃는 자는 과연 누가 될 것인가?', '2012-02-02')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (20, '베테랑', '한 번 꽂힌 것은 무조건 끝을 보는 행동파 서도철(황정민), 20년 경력의 승부사 오팀장(오달수), 위장 전문 홍일점 미스봉(장윤주), 육체파 왕형사(오대환), 막내 윤형사(김시후)까지 겁 없고, 못 잡는 것 없고, 봐 주는 것 없는 특수 강력사건 담당 광역수사대. 오랫동안 쫓던 대형 범죄를 해결한 후 숨을 돌리려는 찰나, 서도철은 재벌 3세 조태오(유아인)를 만나게 된다. 베테랑 광역수사대 VS 유아독존 재벌 3세, 자존심을 건 한판 대결이 시작된다!', '2015-08-05')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (21, '아수라', '강력계 형사 한도경(정우성)은 악덕시장 박성배(황정민)의 뒷일을 처리해주는 대가로 돈을 받는다. 말기 암 환자인 아내의 병원비를 핑계로 돈 되는 건 뭐든 하는 악인의 길로 들어서게 된 한도경. 그의 약점을 쥔 독종 검사 김차인(곽도원)과 검찰수사관 도창학(정만식)은 그를 협박하고 이용해 박성배의 비리와 범죄 혐의를 캐려 한다. 한도경은 자신을 친형처럼 따르는 후배 형사 문선모(주지훈)를 박성배의 수하로 들여보내고, 살아남기 위해 혈안이 된 나쁜 놈들 사이에서 지옥도가 펼쳐진다.', '2016-09-28')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (22, '검사외전', '거친 수사 방식으로 유명한 다혈질 검사 변재욱(황정민). 취조 중이던 피의자가 변사체로 발견 되면서 살인 혐의로 체포된다. 꼼짝없이 살인 누명을 쓰게 된 변재욱은 결국 15년 형을 받고 수감 된다. 자신이 누명을 쓰게 된 사건에 대해 알고 있는 허세남발 꽃미남 사기꾼 치원(강동원)을 우연히 만나게 되고, 그 순간 감옥 밖 작전을 대행해 줄 선수임을 직감한다. 검사 노하우를 총 동원, 치원을 무혐의로 내보내고 반격을 준비하는 재욱. 이들의 예측불허, 반격의 한탕은 성공할 수 있을까?', '2016-02-03')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (23, '연애의 온도', '직장동료 동희와 영은 3년차 비밀연애커플. 남들 눈을 피해 짜릿하게 사랑했지만 오늘, 헤어졌다. 다음날 아침, 직장동료로 다시 만난 두 사람. 서로의 물건을 부숴 착불로 보내고, 커플 요금을 해지하기 전 인터넷 쇼핑으로 요금 폭탄을 던지고. 심지어는 서로에게 새로운 애인이 생겼다는 말에 SNS 탐색부터 미행까지! 헤어져, 라고 말한 후에 모든 것이 새롭게 시작되었다. 헤어지고 다시 시작된 들었다 놨다 밀었다 당겼다, 사랑할 때보다 더 뜨거워진 동희와 영. 연애가 원래 이런 건가요?', '2013-03-21')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (24, '클래식', '같은 대학에 다니는 지혜(손예진)와 수경은 연극반 선배 상민(조인성)을 좋아한다. 하지만 호들갑스런 수경이 상민에게 보낼 편지의 대필을 부탁하고, 지혜의 편지로 맺어진 수경과 상민이 가까워지면서 지혜는 괜한 죄의식에 상민을 멀리 하려 하지만, 우연하게도 자꾸만 마주치게 된다. 한편, 엄마의 빈자리를 털기 위해 다락방을 청소하던 지혜는 우연히 엄마의 비밀 상자를 발견하게 된다. 주희의 첫사랑의 기억이 고스란히 담겨있는 비밀 상자를 보면서 지혜는 엄마의 클래식한 사랑을 조금씩 알게 된다.', '2003-01-30')
INTO contents  (content_index, content_title, content_info, content_released) VALUES (25, '변신', '사람의 모습으로 변신하는 악마가 우리 가족 안에 숨어들면서 기이하고 섬뜩한 사건들이 벌어진다. 서로 의심하고 증오하고 분노하는 가운데 구마 사제인 삼촌 중수가 예고없이 찾아오는데…', '2019-08-21')
SELECT * FROM DUAL ;

SELECT * FROM CONTENTS c ;

-- 영화 카테고리 테이블 (category) 생성
CREATE TABLE category(
   category_index      number(10) PRIMARY KEY,
   category_type      varchar2(100),
   content_index      number(10),
   content_title      varchar2(100)
);

-- 영화 카테고리 테이블 (category)과 contents 테이블 (contents) 연결
ALTER TABLE    CATEGORY 
ADD CONSTRAINT    fk_content_index
FOREIGN KEY    (content_index) 
REFERENCES       contents(content_index) 
ON DELETE SET NULL;

-- 영화 카테고리 테이블 (category) 시퀀스 생성
--CREATE SEQUENCE categoryidx_seq
--START WITH 1
--INCREMENT BY 1;

-- 영화 카테고리 테이블 (category) 데이터 입력
INSERT ALL 
INTO category  (category_index, category_type, content_index, content_title) VALUES (1, '공포', '1', '컨저링')
INTO category  (category_index, category_type, content_index, content_title) VALUES (2, '공포', '2', '곤지암')
INTO category  (category_index, category_type, content_index, content_title) VALUES (3, '공포', '3', '곡성')
INTO category  (category_index, category_type, content_index, content_title) VALUES (4, '로맨스', '4', '어바웃 타임')
INTO category  (category_index, category_type, content_index, content_title) VALUES (5, '로맨스', '5', '노트북')
INTO category  (category_index, category_type, content_index, content_title) VALUES (6, '로맨스', '6', '너의 결혼식')
INTO category  (category_index, category_type, content_index, content_title) VALUES (7, '액션', '7', '범죄도시3')
INTO category  (category_index, category_type, content_index, content_title) VALUES (8, '액션', '8', '미션임파서블 폴아웃')
INTO category  (category_index, category_type, content_index, content_title) VALUES (9, '코미디', '9', '럭키')
INTO category  (category_index, category_type, content_index, content_title) VALUES (10, '코미디', '10', '인턴')
INTO category  (category_index, category_type, content_index, content_title) VALUES (11, '코미디', '11', '맨 인 블랙: 인터내셔널')
INTO category  (category_index, category_type, content_index, content_title) VALUES (12, 'SF', '12', '해리포터 혼혈왕자')
INTO category  (category_index, category_type, content_index, content_title) VALUES (13, 'SF', '13', '아이언맨3')
INTO category  (category_index, category_type, content_index, content_title) VALUES (14, 'SF', '14', '설국열차')
INTO category  (category_index, category_type, content_index, content_title) VALUES (15, '애니메이션', '15', '뽀로로 슈퍼썰매대모험')
INTO category  (category_index, category_type, content_index, content_title) VALUES (16, '애니메이션', '16', '인사이드아웃')
INTO category  (category_index, category_type, content_index, content_title) VALUES (17, '애니메이션', '17', '명탐정 코난: 탐정들의 진혼가')
INTO category  (category_index, category_type, content_index, content_title) VALUES (18, '범죄', '18', '신세계')
INTO category  (category_index, category_type, content_index, content_title) VALUES (19, '범죄', '19', '범죄와의 전쟁')
INTO category  (category_index, category_type, content_index, content_title) VALUES (20, '액션', '20', '베테랑')
INTO category  (category_index, category_type, content_index, content_title) VALUES (21, '범죄', '21', '아수라')
INTO category  (category_index, category_type, content_index, content_title) VALUES (22, '범죄', '22', '검사외전')
INTO category  (category_index, category_type, content_index, content_title) VALUES (23, '로맨스', '23', '연애의 온도')
INTO category  (category_index, category_type, content_index, content_title) VALUES (24, '로맨스', '24', '클래식')
INTO category  (category_index, category_type, content_index, content_title) VALUES (25, '공포', '25', '변신')
SELECT * FROM DUAL ;

SELECT * FROM CATEGORY c2 ;


-- 영화 국가 테이블 (country) 생성
CREATE TABLE country(
   country_index      number(10) PRIMARY KEY,
   country_type      varchar2(100),
   content_index      number(10),
   content_title      varchar2(100)
);

-- 영화 국가 테이블 (country)과 contents 테이블 (contents) 연결
ALTER TABLE    COUNTRY 
ADD CONSTRAINT    fk_content_index2
FOREIGN KEY    (content_index) 
REFERENCES       contents(content_index) 
ON DELETE SET NULL;

-- 영화 국가 테이블 (country) 시퀀스 생성
--CREATE SEQUENCE countryidx_seq
--START WITH 1
--INCREMENT BY 1;




-- 영화 국가 테이블 (country) 데이터 입력

INSERT ALL 
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (1, '국외', '1', '컨저링')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (2, '국내', '2', '곤지암')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (3, '국내', '3', '곡성')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (4, '국외', '4', '어바웃 타임')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (5, '국외', '5', '노트북')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (6, '국내', '6', '너의 결혼식')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (7, '국내', '7', '범죄도시3')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (8, '국외', '8', '미션임파서블 폴아웃')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (9, '국내', '9', '럭키')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (10, '국외', '10', '인턴')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (11, '국외', '11', '맨 인 블랙: 인터내셔널')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (12, '국외', '12', '해리포터 혼혈왕자')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (13, '국외', '13', '아이언맨3')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (14, '국내', '14', '설국열차')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (15, '국내', '15', '뽀로로 슈퍼썰매대모험')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (16, '국외', '16', '인사이드아웃')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (17, '국외', '17', '명탐정 코난: 탐정들의 진혼가')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (18, '국내', '18', '신세계')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (19, '국내', '19', '범죄와의 전쟁')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (20, '국내', '20', '베테랑')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (21, '국내', '21', '아수라')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (22, '국내', '22', '검사외전')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (23, '국내', '23', '연애의 온도')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (24, '국내', '24', '클래식')
INTO COUNTRY  (country_index, country_type, content_index, content_title) VALUES (25, '국내', '25', '변신')
SELECT * FROM DUAL ;

SELECT * FROM COUNTRY c ;

-- 영화 장르 테이블 (genre) 생성
CREATE TABLE age(
   age_index         number(10) PRIMARY KEY,
   age_type         varchar2(100),
   content_index      number(10),
   content_title      varchar2(100)
);

-- 영화 장르 테이블 (genre)과 contents 테이블 (contents) 연결
ALTER TABLE     age
ADD CONSTRAINT    fk_content_index3
FOREIGN KEY    (content_index) 
REFERENCES       contents(content_index) 
ON DELETE SET NULL;



-- 영화 장르 테이블 (genre) 시퀀스 생성
--CREATE SEQUENCE ageidx_seq
--START WITH 1
--INCREMENT BY 1;


-- 영화 장르 테이블 (genre) 데이터 입력
INSERT ALL 
INTO age  (age_index, age_type, content_index, content_title) VALUES (1, '15세', '1', '컨저링')
INTO age  (age_index, age_type, content_index, content_title) VALUES (2, '15세', '2', '곤지암')
INTO age  (age_index, age_type, content_index, content_title) VALUES (3, '15세', '3', '곡성')
INTO age  (age_index, age_type, content_index, content_title) VALUES (4, '15세', '4', '어바웃 타임')
INTO age  (age_index, age_type, content_index, content_title) VALUES (5, '15세', '5', '노트북')
INTO age  (age_index, age_type, content_index, content_title) VALUES (6, '12세', '6', '너의 결혼식')
INTO age  (age_index, age_type, content_index, content_title) VALUES (7, '15세', '7', '범죄도시3')
INTO age  (age_index, age_type, content_index, content_title) VALUES (8, '15세', '8', '미션임파서블 폴아웃')
INTO age  (age_index, age_type, content_index, content_title) VALUES (9, '15세', '9', '럭키')
INTO age  (age_index, age_type, content_index, content_title) VALUES (10, '12세', '10', '인턴')
INTO age  (age_index, age_type, content_index, content_title) VALUES (11, '12세', '11', '맨 인 블랙: 인터내셔널')
INTO age  (age_index, age_type, content_index, content_title) VALUES (12, '', '12', '해리포터 혼혈왕자')
INTO age  (age_index, age_type, content_index, content_title) VALUES (13, '12세', '13', '아이언맨3')
INTO age  (age_index, age_type, content_index, content_title) VALUES (14, '15세', '14', '설국열차')
INTO age  (age_index, age_type, content_index, content_title) VALUES (15, '', '15', '뽀로로 슈퍼썰매대모험')
INTO age  (age_index, age_type, content_index, content_title) VALUES (16, '', '16', '인사이드아웃')
INTO age  (age_index, age_type, content_index, content_title) VALUES (17, '12세', '17', '명탐정 코난: 탐정들의 진혼가')
INTO age  (age_index, age_type, content_index, content_title) VALUES (18, '19세', '18', '신세계')
INTO age  (age_index, age_type, content_index, content_title) VALUES (19, '19세', '19', '범죄와의 전쟁')
INTO age  (age_index, age_type, content_index, content_title) VALUES (20, '15세', '20', '베테랑')
INTO age  (age_index, age_type, content_index, content_title) VALUES (21, '19세', '21', '아수라')
INTO age  (age_index, age_type, content_index, content_title) VALUES (22, '15세', '22', '검사외전')
INTO age  (age_index, age_type, content_index, content_title) VALUES (23, '19세', '23', '연애의 온도')
INTO age  (age_index, age_type, content_index, content_title) VALUES (24, '12세', '24', '클래식')
INTO age  (age_index, age_type, content_index, content_title) VALUES (25, '15세', '25', '변신')
SELECT * FROM DUAL ;

SELECT * FROM AGE a ;

-- 영화 감독 테이블 (director) 생성
CREATE TABLE director(
   director_index      number(10) PRIMARY KEY,
   director_name      varchar2(100),
   content_index      number(10),
   content_title      varchar2(100)
);

--영화 감독 테이블 (director)과 contents 테이블 (contents) 연결
ALTER TABLE     director
ADD CONSTRAINT    fk_content_index4
FOREIGN KEY    (content_index) 
REFERENCES       contents(content_index) 
ON DELETE SET NULL;

-- 영화 감독 테이블 (director) 시퀀스 생성
--CREATE SEQUENCE directoridx_seq
--START WITH 1
--INCREMENT BY 1;

-- 영화 감독 테이블 (director) 데이터 입력
INSERT ALL 
INTO director  (director_index, director_name, content_index, content_title) VALUES (1, '마이클 차베즈', '1', '컨저링')
INTO director  (director_index, director_name, content_index, content_title) VALUES (2, '정범식', '2', '곤지암')
INTO director  (director_index, director_name, content_index, content_title) VALUES (3, '나홍진', '3', '곡성')
INTO director  (director_index, director_name, content_index, content_title) VALUES (4, '리차드 커티스', '4', '어바웃 타임')
INTO director  (director_index, director_name, content_index, content_title) VALUES (5, '닉 카사베츠', '5', '노트북')
INTO director  (director_index, director_name, content_index, content_title) VALUES (6, '이석근', '6', '너의 결혼식')
INTO director  (director_index, director_name, content_index, content_title) VALUES (7, '이상용', '7', '범죄도시3')
INTO director  (director_index, director_name, content_index, content_title) VALUES (8, '크리스토퍼 맥쿼리', '8', '미션임파서블 폴아웃')
INTO director  (director_index, director_name, content_index, content_title) VALUES (9, '이계벽', '9', '럭키')
INTO director  (director_index, director_name, content_index, content_title) VALUES (10, '낸시 마이어스', '10', '인턴')
INTO director  (director_index, director_name, content_index, content_title) VALUES (11, '게리 그레이', '11', '맨 인 블랙: 인터내셔널')
INTO director  (director_index, director_name, content_index, content_title) VALUES (12, '데이비드 예이츠', '12', '해리포터 혼혈왕자')
INTO director  (director_index, director_name, content_index, content_title) VALUES (13, '셰인 블랙', '13', '아이언맨3')
INTO director  (director_index, director_name, content_index, content_title) VALUES (14, '봉준호', '14', '설국열차')
INTO director  (director_index, director_name, content_index, content_title) VALUES (15, '박영균', '15', '뽀로로 슈퍼썰매대모험')
INTO director  (director_index, director_name, content_index, content_title) VALUES (16, '피트 닥터', '16', '인사이드아웃')
INTO director  (director_index, director_name, content_index, content_title) VALUES (17, '야마모토 야스이치로', '17', '명탐정 코난: 탐정들의 진혼가')
INTO director  (director_index, director_name, content_index, content_title) VALUES (18, '박훈정', '18', '신세계')
INTO director  (director_index, director_name, content_index, content_title) VALUES (19, '윤종빈', '19', '범죄와의 전쟁')
INTO director  (director_index, director_name, content_index, content_title) VALUES (20, '류승완', '20', '베테랑')
INTO director  (director_index, director_name, content_index, content_title) VALUES (21, '김성수', '21', '아수라')
INTO director  (director_index, director_name, content_index, content_title) VALUES (22, '이일형', '22', '검사외전')
INTO director  (director_index, director_name, content_index, content_title) VALUES (23, '노덕', '23', '연애의 온도')
INTO director  (director_index, director_name, content_index, content_title) VALUES (24, '곽재용', '24', '클래식')
INTO director  (director_index, director_name, content_index, content_title) VALUES (25, '김홍선', '25', '변신')
SELECT * FROM DUAL ;

SELECT * FROM DIRECTOR ;

-- 영화 배우 테이블 (actor) 생성
CREATE TABLE actor (
   ACTOR_INDEX    NUMBER(10) PRIMARY KEY,
   ACTOR_NAME      VARCHAR2(100),
   CONTENT_INDEX   NUMBER(10),
   CONTENT_TITLE   VARCHAR2(100)
);

-- 영화 배우 테이블 (actor)과 contents 테이블 (contents) 연결
ALTER TABLE     ACTOR
ADD CONSTRAINT    fk_content_index5
FOREIGN KEY    (content_index) 
REFERENCES       contents(content_index) 
ON DELETE SET NULL;

-- 영화 배우 테이블 (actor) 시퀀스 생성
--CREATE SEQUENCE actoridx_seq
--START WITH 1
--INCREMENT BY 1;

-- 영화 배우 테이블 (actor) 데이터 입력
INSERT ALL 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (1, '베라 파미가', 1, '컨저링')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (2, '패트릭 윌슨', 1, '컨저링')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (3, '줄리안 힐리아드', 1, '컨저링') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (4, '위하준', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (5, '박지현', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (6, '오아연', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (7, '문예원', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (8, '박성훈', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (9, '이승욱', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (10, '유제윤', 2, '곤지암') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (11, '곽도원', 3, '곡성') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (12, '황정민', 3, '곡성') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (13, '쿠니무라 준', 3, '곡성') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (14, '천우희', 3, '곡성') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (15, '김환희', 3, '곡성') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (16, '도널 글리슨', 4, '어바웃 타임') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (17, '레이첼 맥아담스', 4, '어바웃 타임') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (18, '라이언 고슬링', 5, '노트북') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (19, ' 레이첼 맥아담스', 5, '노트북') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (20, '박보영', 6, '너의 결혼식') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (21, '김영광', 6, '너의 결혼식') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (22, '마동석', 7, '범죄도시3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (23, '이준혁', 7, '범죄도시3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (24, '아오키 무네타카', 7, '범죄도시3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (25, '톰크루즈', 8, '미션임파서블 폴아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (26, '헨리 카빌', 8, '미션임파서블 폴아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (27, '사이먼 페그', 8, '미션임파서블 폴아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (28, '레베카 퍼거슨', 8, '미션임파서블 폴아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (29, '유해진', 9, '럭키') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (30, '이준', 9, '럭키') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (31, '조윤희', 9, '럭키') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (32, '임지연', 9, '럭키') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (33, '앤 해서웨이', 10, '인턴') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (34, '로버트 드니로', 10, '인턴') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (35, '크리스 헴스워스', 11, '맨 인 블랙: 인터내셔널') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (36, '테사 톰슨', 11, '맨 인 블랙: 인터내셔널') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (37, '다니엘 래드클리프', 12, '해리포터 혼혈왕자') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (38, '엠마 왓슨', 12, '해리포터 혼혈왕자') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (39, '루퍼트 그린트', 12, '해리포터 혼혈왕자') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (40, '로버트 다우니 주니어', 13, '아이언맨3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (41, '기네스 펠트로', 13, '아이언맨3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (42, '벤 킹슬리', 13, '아이언맨3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (43, '돈 치들', 13, '아이언맨3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (44, '가이 피어스', 13, '아이언맨3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (45, '레베카 홀', 13, '아이언맨3') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (46, '크리스 에반스', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (47, '송강호', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (48, '에드 해리스', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (49, '존 허트', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (50, '틸다 스윈튼', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (51, '제이미 벨', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (52, '옥타비아 스펜서', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (53, '이완 브렘너', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (54, '알리슨 필', 14, '설국열차')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (55, '고아성', 14, '설국열차') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (56, '이선(뽀로로)', 15, '뽀로로 슈퍼썰매대모험') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (57, '이미자(크롱)', 15, '뽀로로 슈퍼썰매대모험') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (58, '김환진(포비)', 15, '뽀로로 슈퍼썰매대모험')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (59, '함수정(에디)', 15, '뽀로로 슈퍼썰매대모험') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (60, '홍소영(루피)', 15, '뽀로로 슈퍼썰매대모험') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (61, '조현정(해리)', 15, '뽀로로 슈퍼썰매대모험') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (62, '에이미 포엘러(조이/기쁨)', 16, '인사이드 아웃')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (63, '필리스 스미스(슬픔/새드)', 16, '인사이드 아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (64, '민디 캘링(까칠/디스)', 16, '인사이드 아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (65, '빌 헤이더(소심/피어)', 16, '인사이드 아웃') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (66, '루이스 블랙(버럭/앵거)', 16, '인사이드 아웃')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (67, '타카야마 미나미(코난)', 17, '명탐정 코난 :탐정들의 진혼가') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (68, '야마자키 와카나(모리)', 17, '명탐정 코난 :탐정들의 진혼가')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (69, '이정재', 18, '신세계')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (70, '최민식', 18, '신세계')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (71, '황정민', 18, '신세계')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (72, '최민식', 19, '범죄와의 전쟁')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (73, '하정우', 19, '범죄와의 전쟁')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (74, '황정민', 20, '베테랑') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (75, '유아인', 20, '베테랑')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (76, '유해진', 20, '베테랑')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (77, '오달수', 20, '베테랑')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (78, '정우성', 21, '아수라')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (79, '황정민', 21, '아수라')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (80, '주지훈', 21, '아수라')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (81, '곽도원', 21, '아수라') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (82, '황정민', 22, '검사외전')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (83, '강동원', 22, '검사외전')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (84, '이민기', 23, '연애의 온도')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (85, '김민희', 23, '연애의 온도')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (86, '손예진', 24, '클래식')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (87, '조승우', 24, '클래식')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (88, '조인성', 24, '클래식') 
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (89, '배성우', 25, '변신')
INTO actor  (ACTOR_INDEX, ACTOR_NAME, content_index, content_title) VALUES (90, '성동일', 25, '변신')
SELECT * FROM DUAL ;

SELECT * FROM ACTOR a ;

-- 사용자 리스트 테이블 (user_list) 생성
CREATE TABLE user_list(
   list_index      number(10) PRIMARY KEY,
   USER_ID         varchar2(300),
   user_history   varchar2(300),
   user_like      varchar2(300),
   content_index   number(10)
);

-- 사용자 리스트 테이블 (user_list)와 contents 테이블과 연결
ALTER TABLE     USER_LIST 
ADD CONSTRAINT    fk_content_index6
FOREIGN KEY    (content_index) 
REFERENCES       contents(content_index) 
ON DELETE SET NULL;

-- 사용자 리스트 테이블 (user_list)와 user_info 테이블과 연결
ALTER TABLE     USER_LIST 
ADD CONSTRAINT    fk_user_id3
FOREIGN KEY    (user_id) 
REFERENCES       user_info(user_id) 
ON DELETE SET NULL;



-- 사용자 리스트 테이블 (user_list) 데이터 입력
INSERT ALL 
INTO user_list  (list_index, USER_ID, user_history, user_like,content_index) VALUES (1, 'hee0@naver.com', '곡성', '', '3')
INTO user_list  (list_index, USER_ID, user_history, user_like,content_index) VALUES (2, 'kim123@naver.com', '', '컨저링', '1')
INTO user_list  (list_index, USER_ID, user_history, user_like,content_index) VALUES (3, 'hj94@hanmil.net', '범죄와의 전쟁', '', '19')
INTO user_list  (list_index, USER_ID, user_history, user_like,content_index) VALUES (4, 'hj94@hanmil.net', '', '노트북', '5')
INTO user_list  (list_index, USER_ID, user_history, user_like,content_index) VALUES (5, 'ldh98721@gmail.com', '뽀로로 슈퍼썰매대모험', '', '15')
INTO user_list  (list_index, USER_ID, user_history, user_like,content_index) VALUES (6, 'ldh98721@gmail.com', '인사이드아웃', '', '16')
SELECT * FROM DUAL ;

SELECT * FROM USER_LIST ul ;

-- board 테이블 생성
CREATE TABLE board( 
   boardnum         number(10) PRIMARY KEY,
   user_id         varchar2(300),
   boardtitle         varchar2(300),
   boardcontent      varchar2(4000),
   boarddate         DATE,
   boardreadcount   number(10)
) ;


-- board 테이블 데이터 입력
INSERT ALL
INTO board  (boardnum, user_id, boardtitle, boardcontent, boarddate, boardreadcount) VALUES (board_seq.nextval, 'hee0@naver.com','리뷰','꿀잼',sysdate, 0)
INTO board  (boardnum, user_id, boardtitle, boardcontent, boarddate, boardreadcount) VALUES (board_seq.nextval, 'ldh98721@gmail.com','리뷰','무섭',sysdate, 0)
INTO board  (boardnum, user_id, boardtitle, boardcontent, boarddate, boardreadcount) VALUES (board_seq.nextval, 'ongong11@hanmail.net','리뷰','평점 10점!!',sysdate, 0)
INTO board  (boardnum, user_id, boardtitle, boardcontent, boarddate, boardreadcount) VALUES (board_seq.nextval, 'khn9811@gmail.com','리뷰','생각보다 노잼',sysdate, 0)
INTO board  (boardnum, user_id, boardtitle, boardcontent, boarddate, boardreadcount) VALUES (board_seq.nextval, 'kim123@naver.com','요청','오펜하이머 요청해요~',sysdate, 0)
INTO board  (boardnum, user_id, boardtitle, boardcontent, boarddate, boardreadcount) VALUES (board_seq.nextval, 'hee0@naver.com','추천','뽀로로 추천해요',sysdate, 0)
SELECT * FROM DUAL ;

SELECT * FROM board;
SELECT USER_ID, BOARDTITLE, BOARDDATE, BOARDREADCOUNT FROM BOARD;

SELECT USER_ID, BOARDTITLE, BOARDDATE, BOARDREADCOUNT FROM BOARD;
			
SELECT USER_ID, BOARDTITLE, BOARDDATE, BOARDREADCOUNT FROM BOARD ORDER BY BOARDNUM DESC

--보드 테이블 (actor) 시퀀스 생성

CREATE SEQUENCE board_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO BOARD VALUES(
board_seq.nextval,'게시글4','내용','홍길동',sysdate,0
);

TRUNCATE TABLE board;
-- board 테이블과 user_info 테이블 연결
ALTER TABLE     BOARD 
ADD CONSTRAINT    fk_user_id4
FOREIGN KEY    (user_id) 
REFERENCES       user_info(user_id) 
ON DELETE SET NULL;