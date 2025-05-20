# 현재 위치 경로를 출력한다.
pwd

# 현재 위치에서 파일 및 폴더 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히, 숨김파일까지
ls -al 

# 목록조회 자세히, 숨김파일, 오래된순정렬(최신은 alt)
ls -alrt

# 디렉토리 생성
mkdir jinwoo_dir

# 특정 디렉토리로 이동
cd jinwoo_dir

# 상위 디렉토리로 이동
cd ..
# 또는 cd ../

# 루트디렉토리(최상위디렉토리) 이동
cd /

# 직전폴더로 이동
cd - 

# 홈경로(/home/본인계정)로 이동
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home

# 비어있는 파일 만들기
touch first_file.txt

# 파일내용 터미널창에  출력하기 
cat first_file.txt

# 파일내용 상위 10줄
head first_file.txt

# 파일 내용 하위 10줄
tail 파일명

# 파일내용 상/하위 n개 조회 
tail -n 파일명 최신 로그는 아래에 쌓이기 때문에 tail을 많이 사용한다.

# 파일 내용 실시간 조회
tail -f 파일명 

# 파일 내용 편집기 : nano, vi
# 도스키 위/아래를 통해 이전명령어 조회 
# 이전에 실행했던 명령어 몯 ㅜ조회
history

# ^c를 통해 입력명령어 취소 

# 현재 내 터미널창에 모든 명령어 삭제
clear

# 파일 삭제 명령어, -f 옵션을 통해 묻지않고 삭제 
rm 파일명
# 폴더째 삭제
rm -r 폴더명

# 터미널창에 문자열 출력
echo "hello world"
# echo를 통해 파일에 내용 입력
# > : 덮어쓰기 >> : 추가하기
echo "hello world" > firs_file.txt 

# cp는 복사 명령어
# cp 복사대상 복사될 파일명
# 폴더 복사시에는 -r 옵션
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt
cp 1_file.txt jinwoo_dir/2_file.txt - 하위 경로 이동

# grep : 파일 내에서 문자열 찾기 
# r : 모든 디렉토리 내, n:라인 수 출력, i:대소문자 구분없이
grep -rni "hello" .


# find : 이름으로 파일 또는 디렉토리 찾기 
find . -name "*.txt" 
find . -type f -name ""

# find 와 grep의 혼용
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름은 first로 시작하고 그 파일 안에 hello라는 키워드가 들어가 있는 문장 찾기
# find . -type f -name "first*" | xargs grep -rni "hello" 
find . -name "first*" -type f | xargs grep -rni "hello"