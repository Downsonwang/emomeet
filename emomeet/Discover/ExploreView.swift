//
//  ExploreView.swift
//  emomeet
//
//  Created by 王玉松 on 2025/2/20.
//

import SwiftUI

struct ExploreView: View {
    // 定义图标颜色
    private let mbtiIconColor = Color.blue
    private let constellationIconColor = Color.purple
    private let psychologyIconColor = Color.blue
    private let friendsIconColor = Color.blue
    private let moodIconColor = Color.green
    private let relationshipIconColor = Color.red
    private let fitnessIconColor = Color.orange
    private let milestoneIconColor = Color.indigo
    private let bazi8ChartsIconColor = Color.yellow
    private let dailyAccountingIconColor = Color.teal
    private let tarotCardIconColor = Color.pink
    private let strangeStoriesIconColor = Color.brown
    
    // 网格布局的列数
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // 标题
            Text("发现")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 16)
            
                            // 使用网格布局展示圆形图标
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    // --- 心理与性格测试类 ---
                    // MBTI测试
                    ExploreCircleItem(
                        icon: Image(systemName: "brain"),
                        title: "MBTI测试",
                        iconColor: mbtiIconColor
                    )
                    
                    // 心理测试
                    ExploreCircleItem(
                        icon: Image(systemName: "heart.text.square"),
                        title: "心理测试",
                        iconColor: psychologyIconColor
                    )
                    
                    // --- 占卜与命理类 ---
                    // 星座运势
                    ExploreCircleItem(
                        icon: Image(systemName: "sparkles"),
                        title: "星座运势",
                        iconColor: constellationIconColor
                    )
                    
                    // 塔罗牌
                    ExploreCircleItem(
                        icon: Image(systemName: "moonphase.full.moon"),
                        title: "塔罗牌",
                        iconColor: tarotCardIconColor
                    )
                    
                    // 八字命盘
                    ExploreCircleItem(
                        icon: Image(systemName: "calendar.circle"),
                        title: "八字命盘",
                        iconColor: bazi8ChartsIconColor
                    )
                    
                    // --- 生活记录与成长类 ---
                    // 心情笔记
                    ExploreCircleItem(
                        icon: Image(systemName: "note.text"),
                        title: "心情笔记",
                        iconColor: moodIconColor
                    )
                    
                    // 每日记账
                    ExploreCircleItem(
                        icon: Image(systemName: "dollarsign.circle"),
                        title: "每日记账",
                        iconColor: dailyAccountingIconColor
                    )
                    
                    // 记录里程碑
                    ExploreCircleItem(
                        icon: Image(systemName: "flag.fill"),
                        title: "记录里程碑",
                        iconColor: milestoneIconColor
                    )
                    
                    // --- 人际与健康类 ---
                    // 监督打卡
                    ExploreCircleItem(
                        icon: Image(systemName: "person.2.fill"),
                        title: "监督打卡",
                        iconColor: friendsIconColor
                    )
                    
                    // 亲密关系
                    ExploreCircleItem(
                        icon: Image(systemName: "heart.circle"),
                        title: "亲密关系",
                        iconColor: relationshipIconColor
                    )
                    
                    // 健身运动
                    ExploreCircleItem(
                        icon: Image(systemName: "figure.run"),
                        title: "健身运动",
                        iconColor: fitnessIconColor
                    )
                    
                    // --- 发现与娱乐类 ---
                    // 奇闻逸事
                    ExploreCircleItem(
                        icon: Image(systemName: "lightbulb.max"),
                        title: "奇闻逸事",
                        iconColor: strangeStoriesIconColor
                    )
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
            
            Spacer()
        }
        .background(Color(UIColor.systemGray6))
    }
}

// 圆形图标项组件
struct ExploreCircleItem: View {
    let icon: Image
    let title: String
    let iconColor: Color
    
    var body: some View {
        Button(action: {}) {
            VStack {
                // 圆形图标
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 70, height: 70)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    
                    icon
                        .font(.system(size: 28))
                        .foregroundColor(iconColor)
                }
                
                // 标题
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .padding(.top, 8)
            }
            .padding(.vertical, 10)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
