//
//  ModelExample.swift
//  hapdong-28th
//
//  Created by 초이 on 2021/05/15.
//

import Foundation

// 서버 통신 전 sameple data
struct Tumblebug {
    var objectArray = [
        
        // 에디터픽
        
        [
            ProjectModel(image: "img1", category: "의류", company: "포인트랩", title: "여자 셋이 만든 <노브라 티셔츠> 숨통이 트이는 '숨통티'", percentage: "1605"),
            ProjectModel(image: "img2", category: "간편식", company: "아무말 미식가", title: "전국을 발로 뛰어 만들어낸 \"극한 떡볶이\"", percentage: "1410"),
            ProjectModel(image: "img3", category: "잡화", company: "러브라이크디스", title: "전통 와당으로 현대를 장식하다 : 와당 노리개와 키링", percentage: "236"),
            ProjectModel(image: "img4", category: "실용 · 취미", company: "출판사 위민", title: "먹고 읽고 투자하라, 소이빈의 <복리 성장 곡선>", percentage: "236"),
            ProjectModel(image: "img1", category: "의류", company: "포인트랩", title: "여자 셋이 만든 <노브라 티셔츠> 숨통이 트이는 '숨통티'", percentage: "1605"),
            ProjectModel(image: "img2", category: "간편식", company: "아무말 미식가", title: "전국을 발로 뛰어 만들어낸 \"극한 떡볶이\"", percentage: "1410"),
            ProjectModel(image: "img3", category: "잡화", company: "러브라이크디스", title: "전통 와당으로 현대를 장식하다 : 와당 노리개와 키링", percentage: "236"),
            ProjectModel(image: "img4", category: "실용 · 취미", company: "출판사 위민", title: "먹고 읽고 투자하라, 소이빈의 <복리 성장 곡선>", percentage: "236"),
            ProjectModel(image: "img1", category: "의류", company: "포인트랩", title: "여자 셋이 만든 <노브라 티셔츠> 숨통이 트이는 '숨통티'", percentage: "1605"),
            ProjectModel(image: "img2", category: "간편식", company: "아무말 미식가", title: "전국을 발로 뛰어 만들어낸 \"극한 떡볶이\"", percentage: "1410"),
            ProjectModel(image: "img3", category: "잡화", company: "러브라이크디스", title: "전통 와당으로 현대를 장식하다 : 와당 노리개와 키링", percentage: "236"),
            ProjectModel(image: "img4", category: "실용 · 취미", company: "출판사 위민", title: "먹고 읽고 투자하라, 소이빈의 <복리 성장 곡선>", percentage: "236"),
        ],
        
        // 공개예정 프로젝트
        
        [
            ProjectModel(image: "img5", category: "카드 게임", company: "김다정", title: "고양이 마법사와 마녀들의 특별한주문 \"스펠\"트럼프카드", percentage: "1211"),
            ProjectModel(image: "img6", category: "자연사진", company: "TOT x Sam&Jino", title: "집을 오가며 기록한 파도의 얼굴, Wave 엽서집과 포스터", percentage: "649"),
            ProjectModel(image: "img7", category: "조향", company: "PERSTAY", title: "녹색의 모든 것 <625> 향수", percentage: "568"),
            ProjectModel(image: "img8", category: "조향", company: "센트바이제인", title: "[라 보라카이] 설레이는 보라카이의 3가지 향기", percentage: "471"),
            ProjectModel(image: "img9", category: "잡화", company: "미묘한피크닉", title: "부산을 담은 ‘미묘한 밀크글라스'", percentage: "384"),
            ProjectModel(image: "img10", category: "잡화", company: "S.A. Ystudio", title: "실크 한복의 은은한 광택을 담은 가방, ‘노방백'", percentage: "374"),
            ProjectModel(image: "img11", category: "주얼리", company: "스튜디오에다", title: "말레피센트의 저주로부터 당신을 지켜줄 <요정수호링>", percentage: "369"),
            ProjectModel(image: "img12", category: "잡화", company: "Stasty", title: "호감가는 대화의 비밀, 한 알로 가볍게 챙기는 숨결케어", percentage: "342"),
        ],
        
        // 진행중인 기획전
        [
            ExhibitionModel(image: "bigImg1", title: "인형놀이", projectCount: "10", tags: ["보드게임", "반려인형", "꿀잠템", "피규어"]),
            ExhibitionModel(image: "bigImg2", title: "추가공약", projectCount: "16", tags: ["숨통티", "대담한카드", "난전일기", "배드위켄드"]),
            ExhibitionModel(image: "bigImg1", title: "인형놀이", projectCount: "10", tags: ["보드게임", "반려인형", "꿀잠템", "피규어"]),
            ExhibitionModel(image: "bigImg2", title: "추가공약", projectCount: "16", tags: ["숨통티", "대담한카드", "난전일기", "배드위켄드"]),
            ExhibitionModel(image: "bigImg1", title: "인형놀이", projectCount: "10", tags: ["보드게임", "반려인형", "꿀잠템", "피규어"]),
            ExhibitionModel(image: "bigImg2", title: "추가공약", projectCount: "16", tags: ["숨통티", "대담한카드", "난전일기", "배드위켄드"]),
            ExhibitionModel(image: "bigImg1", title: "인형놀이", projectCount: "10", tags: ["보드게임", "반려인형", "꿀잠템", "피규어"]),
            ExhibitionModel(image: "bigImg2", title: "추가공약", projectCount: "16", tags: ["숨통티", "대담한카드", "난전일기", "배드위켄드"]),
        ],
        
        // 인기추천 프로젝트
        
        [
            ProjectModel(image: "img13", category: "카드 게임", company: "김다정", title: "고양이 마법사와 마녀들의 특별한주문 \"스펠\"트럼프카드", percentage: "1211"),
            ProjectModel(image: "img14", category: "자연사진", company: "TOT x Sam&Jino", title: "집을 오가며 기록한 파도의 얼굴, Wave 엽서집과 포스터", percentage: "649"),
            ProjectModel(image: "img15", category: "조향", company: "PERSTAY", title: "녹색의 모든 것 <625> 향수", percentage: "568"),
            ProjectModel(image: "img1", category: "조향", company: "센트바이제인", title: "[라 보라카이] 설레이는 보라카이의 3가지 향기", percentage: "471"),
            ProjectModel(image: "img16", category: "잡화", company: "미묘한피크닉", title: "부산을 담은 ‘미묘한 밀크글라스'", percentage: "384"),
            ProjectModel(image: "img17", category: "잡화", company: "S.A. Ystudio", title: "실크 한복의 은은한 광택을 담은 가방, ‘노방백'", percentage: "374"),
            ProjectModel(image: "img18", category: "주얼리", company: "스튜디오에다", title: "말레피센트의 저주로부터 당신을 지켜줄 <요정수호링>", percentage: "369"),
            ProjectModel(image: "img2", category: "잡화", company: "Stasty", title: "호감가는 대화의 비밀, 한 알로 가볍게 챙기는 숨결케어", percentage: "342"),
        ],
        
        // 신규추천 프로젝트
        
        [
            ProjectModel(image: "img19", category: "카드 게임", company: "김다정", title: "고양이 마법사와 마녀들의 특별한주문 \"스펠\"트럼프카드", percentage: "1211"),
            ProjectModel(image: "img20", category: "자연사진", company: "TOT x Sam&Jino", title: "집을 오가며 기록한 파도의 얼굴, Wave 엽서집과 포스터", percentage: "649"),
            ProjectModel(image: "img21", category: "조향", company: "PERSTAY", title: "녹색의 모든 것 <625> 향수", percentage: "568"),
            ProjectModel(image: "img12", category: "조향", company: "센트바이제인", title: "[라 보라카이] 설레이는 보라카이의 3가지 향기", percentage: "471"),
            ProjectModel(image: "img15", category: "잡화", company: "미묘한피크닉", title: "부산을 담은 ‘미묘한 밀크글라스'", percentage: "384"),
            ProjectModel(image: "img4", category: "잡화", company: "S.A. Ystudio", title: "실크 한복의 은은한 광택을 담은 가방, ‘노방백'", percentage: "374"),
            ProjectModel(image: "img21", category: "주얼리", company: "스튜디오에다", title: "말레피센트의 저주로부터 당신을 지켜줄 <요정수호링>", percentage: "369"),
            ProjectModel(image: "img22", category: "잡화", company: "Stasty", title: "호감가는 대화의 비밀, 한 알로 가볍게 챙기는 숨결케어", percentage: "342"),
        ],
        
        // 두번째 페이지
        
        [
            FundingModel(imageStr: "secondImg1", title: "누구나 쉽게 타로를 볼 수 있는 '별 타로'\n", category: "그래픽 디자인", writer: "별", description: "타로를 배우지 않아도 누구나 쉽고 정확하게 점을 볼 수 있는 타로카드 '별 타로'입니다."),
            FundingModel(imageStr: "secondImg2", title: "호감가는 대화의 비밀, 한 알로 가볍게 챙기는 숨결케어", category: "잡화", writer: "Stasty", description: "[식약처인증/구취감소 98%] 씹을수록 상쾌한 데일리 덴탈케어, 환경까지 챙긴 순수 성분!"),
            FundingModel(imageStr: "secondImg3", title: "한복에서 착안한, 프리사이즈 3way 로브 원피스\n", category: "의류", writer: "파도", description: "한복 마고자와 두루마기에서 착안하여 편하게, 여러가지로 연출하여 입을 수 있는 옷입니다."),
            FundingModel(imageStr: "secondImg4", title: "실크 한복의 은은한 광택을 담은 가방, '노방백'\n", category: "잡화", writer: "S.A.Ystudio", description: "전통 한복 원단인 실크 노방, 그 특별한 매력을 일상 속으로"),
            FundingModel(imageStr: "secondImg5", title: "녹색의 모든 것 <625> 향수\n", category: "조향", writer: "PERSTAY", description: "아름다운 향기, 녹색의 향기를 느껴보세요"),
            FundingModel(imageStr: "secondImg6", title: "호감가는 대화의 비밀, 한 알로 가볍게 챙기는 숨결케어", category: "그래픽디자인", writer: "별", description: "타로를 배우지 않아도 누구나 쉽고 정확하게 점을 볼 수 있는 타로카드 '별 타로'입니다."),
            FundingModel(imageStr: "secondImg7", title: "당신의 일상에 마법같은 힘을! <마법소녀 타로카드>", category: "그래픽디자인", writer: "아보타로", description: "꿈과 희망이 가득한 78장의 마법소녀 타로카드. 달콤한 마법의 힘을 담았습니다!"),
            FundingModel(imageStr: "secondImg8", title: "11가지 컬러의 아른거리는 비침, \"무아레 셔츠원피스\"", category: "의류", writer: "ARTISIAN[아티시안]", description: "전통 한복 소재 (아리노방)로 만든 시스루 셔츠원피스 입니다."),
            FundingModel(imageStr: "secondImg9", title: "영원한 우리들의 여정을 기억해! '반려동물 털 목걸이'", category: "주얼리", writer: "마티스블루", description: "영원한 가족인 반려동물을 평생 기억하기위해 반려동물의 털을 넣어 목걸이를 만들어드립니다."),
            
        ]
        
        
    ]
}
 
