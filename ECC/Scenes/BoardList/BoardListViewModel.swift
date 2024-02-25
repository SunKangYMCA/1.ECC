//
//  BoardListDetailViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-22.
//

import Foundation

class BoardListViewModel: ObservableObject {
    
    var type: BoardType
    @Published var listContent: [BoardDetail] = []
    
    init(type: BoardType) {
        self.type = type
        self.listContent = fetch()
    }
    
    func fetch() -> [BoardDetail] {
        switch type {
        case .kindergarten:
            return kindergartenBoardDetails
        case .kids:
            return kidsBoardDetails
        case .youth:
            return youthBoardDeteails
        case .youngAdults:
            return youngAdultsBoardDeteails
        case .oldAdults:
            return oldAdultsBoardDeteails
        }
    }
    
    private let kindergartenBoardDetails: [BoardDetail] = [
        BoardDetail(date: "02.16", title: "유치부 이번주 성경말씀", detail: "The Thin Line\n로마서 15:17 ~ 21입니다.\n유선한 목사님께서 수고해 주시겠습니다.\n감사합니다!"),
        BoardDetail(date: "02.09", title: "유치부 주일 설교 본문 말씀", detail: "주일 설교 본문 말씀은\n요한복음 4:46~53절입니다.\n아이들이 본문 말씀을 한번이라도 읽고\n오면 말씀을 더 잘 이해 하리라 믿습니다!\n감사합니다!"),
        BoardDetail(date: "12.23", title: "유치부 크리스마스 예배 안내", detail: "안녕하세요,\n내일은 크리스마스 연합 예배가 있습니\n다. 청소년부는 아침 10시 체육관에서 모\n여 합창 연습을하고 본당에 다 같이 앉아\n예배 드립니다. 주님께 아름다운 찬양을 \n드릴 수 있도록 연습 시간 늦지않게 오면\n감사하겠습니다. 학생들이 사람들 앞에서 \n노래 부르는것이 아니라, 하나님께 영광\n돌리는 찬양이 되길 아이들이랑 같이 기\n도하면서 내일 예배 준비해주세요. ")
    ]
    
    private let kidsBoardDetails: [BoardDetail] = [
    BoardDetail(date: "01.16", title: "아동부 이번달 행사", detail: "행사는\n많은 봉사자가 필요합니다.\n많은 봉사 신청 부탁드립니다. 감사합니다."),
    BoardDetail(date: "01.15", title: "학부모 간담회", detail: "안녕하세요 😄 \n이곳에 온지 40년이 넘었는데 이런 추위\n는 처음인것 같아요.\n추위에 수고들 많으셨읍니다. \n전번에 올려 드렸듯이 오는 주일 21일엔 \n학부모 간담회가 있는 날입니다. 친교 나\n누시고 시작은 12시45분으로 되어 있네요"),
    BoardDetail(date: "12.17", title: "아동부 성탄축하 예배", detail: "안녕하세요.\n다음 주는 성탄축하 예배를 온 가족 함께\n11시에 드립니다. \n1)학생들은 10시에 Gym에서 모여 연습\n합니다.\n2)복장은 상의 빨강 아니면 초록, 하의는\n검정입니다."),
    ]
    
    private let youthBoardDeteails: [BoardDetail] = [
    BoardDetail(date: "02.11", title: "유스 행사", detail: "이번달 유스 행사 안내입니다.\n서로서로 전도하는 삶을 가집시다"),
    BoardDetail(date: "02.03", title: "토요일 찬양팀 연주연습", detail: "찬양팀 연주 연습이 오전 혹은 오후에\n있습니다.\n모두들 간식과 관심을 보여주세요.\n아이들은 항상 배고픕니다.\n감사합니다."),
    BoardDetail(date: "01.22", title: "주일 준비 사항", detail: "주일에는 성경책을 꼭 지참하세요.\n성경구절을 읽고 찾으면서 하나님과 가까워 진답니다.\n안가지고 오면 혼나요.\n혹시 구입을 원하시는 분들은 아래의 번호로 연락 부탁드립니다.")
    ]
    
    private let youngAdultsBoardDeteails: [BoardDetail] = [
    BoardDetail(date: "02.08", title: "참석여부", detail: "안녕하세요~ 다들 한주 잘 지내셨나요?? \n내일 제가 일이 있어서 1부만 드리고 집을 \n와야될것 같아서 2부 참석은 힘들것 같습\n니다... 혹시라도 문제가 있다면 전화주세\n요!"),
    BoardDetail(date: "02.01", title: "홈페이지 리뉴", detail: "참 그리고 홈페이지를 다시 리뉴하려고 \n하는데 사실 구현하고 코딩은 모두 가능\n한데 제가 미적 감각이 제로이고 무엇보\n다 포토샵이나 사진 , 비디오 아예 감각이 \n없습니다 ㅠㅠ \n\n홈페이지에 쓰일 이미지나 비디오, 또 디\n자인도 다 필요한데 능력자 분이나 관심")
    ]
    
    private let oldAdultsBoardDeteails: [BoardDetail] = [
    BoardDetail(date: "02.18", title: "유아세례, 입교, 세례 안내", detail: "3월 31일(주일) 2부 예배 시\n신청서는 안내석에 준비되어 있습니다(교육은 추후 광고)."),
    BoardDetail(date: "02.18", title: "2024년도 선교 일정", detail: "1) 세네갈 목회자 세미나 6월 1일(토) ~ 8일(금)\n2) 조지아(동유럽선교) 복음선교: 6월 14일(금) ~ 23일(주)\n3) 원주민 선교: 7월 15일(월) ~ 23일(화)\n4) 카작 복음선교 9월 13일(금) ~ 9월 22일(주)\n카작 목회자 세미나: 9월 22일(주) ~ 27일(금)\n5) 세네갈 복음 선교: 11월 5일(화) ~ 13일(수)"),
    BoardDetail(date: "02.18", title: "2월 요절 말씀", detail: "26너희가 다 믿음으로 말미암아 그리스도 예수 안에서 하나님의\n아들이 되었으니 27누구든지 그리스도와 합하기 위하여 세례를 받은\n자는 그리스도로 옷 입었느니라“ (갈 3:26~27)")
    ]
}
