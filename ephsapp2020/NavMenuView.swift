//
//  NavMenuView.swift
//  EPHS App
//
//  Created by 90305863 on 10/29/20.
//


import SwiftUI

struct NavMenuView: View {
    @ObservedObject var viewRouter: ViewRouter
    @State private var refreshAlert = false
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                if !isGuest {
                    viewRouter.homePage = "assignments"
                }
            }) {
                if !isGuest {
                    Image("assignments")
                        .resizable()
                        .frame(width: 57, height: 57)
                        .padding(.leading, 20)

                } else {
                    Image("DisabledAssignments")
                        .resizable()
                        .frame(width: 57, height: 57)
                        .padding(.leading, 20)

                }
            }
            Button(action: {
                if !isGuest {
                    viewRouter.homePage = "announcements"
                }
            }) {
                if !isGuest {
                    Image("announcements")
                        .resizable()
                        .frame(width: 57, height: 57)

                } else {
                    Image("DisabledAnnouncements")
                        .resizable()
                        .frame(width: 57, height: 57)

                }
            }
            Button(action: {viewRouter.homePage = "menu"}) {
                Image("menu")
                    .resizable()
                    .frame(width: 57, height: 57)
            }
            Button(action: {
                if !isGuest {
                    viewRouter.homePage = "grade"
                }
            }) {
                if !isGuest {
                    Image("grade")
                        .resizable()
                        .frame(width: 57, height: 57)
                } else {
                    Image("DisabledGrade")
                        .resizable()
                        .frame(width: 57, height: 57)
                }
            }
            Button(action: {viewRouter.homePage = "account"}) {
                Image("account")
                    .resizable()
                    .frame(width: 57, height: 57)
            }
        }
        .padding()
        .frame(minWidth: 0, maxWidth: 400, minHeight: 0, maxHeight: 50, alignment: .center)
        .border(Color(.systemGray), width: 1)
    }
}

struct NavMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavMenuView(viewRouter: ViewRouter())
    }
}
