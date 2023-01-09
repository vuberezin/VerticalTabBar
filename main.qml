import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.1
import QtCharts 2.4

Window {
    id: all
    maximumWidth: 940
    maximumHeight: 780
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("Test")
    Rectangle {
        //id: all
        width: all.width
        height: all.height
        //color: "transparent"
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#f8306a" }
            GradientStop { position: 1.0; color: "#fb5b40" }
        }


    }
    ColumnLayout {

        Rectangle {
            id: rect
            Layout.alignment: Qt.AlignLeft
            //color: "transparent"
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#DC143C" }
                GradientStop { position: 1.0; color: "#fb5b40" }
            }
            border.color: Qt.lighter(color, 1.1)
            //Layout.preferredWidth: 640
            //Layout.preferredHeight: 70
            Layout.preferredWidth: all.width
            Layout.preferredHeight: all.height/6.8
            Text {
                anchors.centerIn: parent
                color: "white"
                font.italic : true
                font.bold : true
                font.pointSize : 10
                text: "Личный кабинет"
            }

            Image {
                   id: imgAuthor
                   opacity: 1
                   smooth: false
                   anchors.left: parent.left
                   source: "logo.png"
               }
        }


   GridLayout {
       id: grid
       anchors.top: rect.bottom
    Column {
            Layout.alignment: Qt.AlignLeft
            id: buttonRow
            spacing:2


            TopButton {
                id: button1
                width: all.width/4.3
                height: all.height/9
                Text {
                    id: name
                    text: qsTr("Основной экран")
                    color: "white"
                    anchors.centerIn: parent
                    font.italic : true
                    font.pointSize : 10

                }
                selected: true
                onClicked: {
                    button2.selected = false
                    button3.selected = false
                    button4.selected = false
                    button5.selected = false
                    button6.selected = false
                    selected = true
                    layout.currentIndex = 0
                }
            }

            TopButton {
                id: button2
                width: all.width/4.3
                height: all.height/9
                Text {
                    id: name1
                    text: qsTr("Мои подписки")
                    color: "white"
                    anchors.centerIn: parent
                    font.italic : true
                    font.pointSize : 10
                }
                onClicked: {
                    button1.selected = false
                    button3.selected = false
                    button4.selected = false
                    button5.selected = false
                    button6.selected = false
                    selected = true
                    layout.currentIndex = 1
                }
            }

            TopButton {
                id: button3
                width: all.width/4.3
                height: all.height/9
                Text {
                    id: name2
                    text: qsTr("Оповещения")
                    color: "white"
                    anchors.centerIn: parent
                    font.italic : true
                    font.pointSize : 10
                }
                onClicked: {
                    button1.selected = false
                    button2.selected = false
                    button4.selected = false
                    button5.selected = false
                    button6.selected = false
                    selected = true
                    layout.currentIndex = 2
                }
            }

            TopButton {
                id: button4
                width: all.width/4.3
                height: all.height/9
                Text {
                    id: name3
                    text: qsTr("Заявки")
                    color: "white"
                    anchors.centerIn: parent
                    font.italic : true
                    font.pointSize : 10
                }
                onClicked: {
                    button1.selected = false
                    button2.selected = false
                    button3.selected = false
                    button5.selected = false
                    button6.selected = false
                    selected = true
                    layout.currentIndex = 3
                }
            }
            TopButton {
                id: button5
                width: all.width/4.3
                height: all.height/9
                Text {
                    id: name4
                    text: qsTr("Уведомления")
                    color: "white"
                    anchors.centerIn: parent
                    font.italic : true
                    font.pointSize : 10
                }
                onClicked: {
                    button1.selected = false
                    button2.selected = false
                    button3.selected = false
                    button4.selected = false
                    button6.selected = false
                    selected = true
                    layout.currentIndex = 4
                }
            }
            TopButton {
                id: button6
                width: all.width/4.3
                height: all.height/9
                Text {
                    id: name5
                    text: qsTr("Статистика")
                    color: "white"
                    anchors.centerIn: parent
                    font.italic : true
                    font.pointSize : 10
                }
                onClicked: {
                    button1.selected = false
                    button2.selected = false
                    button3.selected = false
                    button4.selected = false
                    button5.selected = false
                    selected = true
                    layout.currentIndex = 5
                }
            }

        }

    StackLayout {
        id: stack
        StackLayout {
            id: layout
            anchors.fill: parent
            //currentIndex: 0
//            Rectangle {
//                color: 'teal'
//                implicitWidth: 500
//                implicitHeight: 200
                    ScrollView {
                        id: scroll_t
                        clip: true
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        ColumnLayout {
                            id: clayout
                            width: scroll_t.width
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Rectangle {
                                color: 'teal'
                              width: 500
                              height: 150

                                //width: all.width/1.28
                                //height: all.height/3.2
                        }
                            Rectangle {
                                color: 'pink'
                                implicitWidth: 500
                                implicitHeight: 150

                            }
                            Rectangle {
                                color: 'lightblue'
                                implicitWidth: 500
                                implicitHeight: 150

                            }
                            Rectangle {
                                color: 'green'
                                implicitWidth: 500
                                implicitHeight: 150

                            }
                            Rectangle {
                                color: 'yellow'
                                implicitWidth: 500
                                implicitHeight: 150
                            }
                }
            }
            //}
            Rectangle {
                color: 'brown'
                implicitWidth: 500
                implicitHeight: 200

                ChartView {
                    id: chart
                    title: "Internet Traffic Monitor"
                    anchors.fill: parent
                    legend.alignment: Qt.AlignBottom
                    antialiasing: true
                    theme: ChartView.ChartThemeBrownSand

                    PieSeries {
                        id: pieSeries

                        PieSlice { label: "Yandex"; value: 13.5;
                            onClicked: {
                                pieSeries.at(0).exploded = true;
                                pieSeries.at(1).exploded = false;
                                pieSeries.at(2).exploded = false;
                                pieSeries.at(3).exploded = false;
                                pieSeries.at(4).exploded = false;
                                pieSeries.at(5).exploded = false;
                                }
                        }
                        PieSlice { label: "Telegram"; value: 10.9;
                            onClicked: {
                                pieSeries.at(0).exploded = false;
                                pieSeries.at(1).exploded = true;
                                pieSeries.at(2).exploded = false;
                                pieSeries.at(3).exploded = false;
                                pieSeries.at(4).exploded = false;
                                pieSeries.at(5).exploded = false;

                            }
                        }
                        PieSlice { label: "Firefox"; value: 8.6
                            onClicked: {
                                pieSeries.at(0).exploded = false;
                                pieSeries.at(1).exploded = false;
                                pieSeries.at(2).exploded = true;
                                pieSeries.at(3).exploded = false;
                                pieSeries.at(4).exploded = false;
                                pieSeries.at(5).exploded = false;
                            }

                        }
                        PieSlice { label: "Skype"; value: 8.2
                            onClicked: {
                                pieSeries.at(0).exploded = false;
                                pieSeries.at(1).exploded = false;
                                pieSeries.at(2).exploded = false;
                                pieSeries.at(3).exploded = true;
                                pieSeries.at(4).exploded = false;
                                pieSeries.at(5).exploded = false;
                            }
                        }
                        PieSlice { label: "VirtualBoxVM"; value: 6.8
                            onClicked: {
                                pieSeries.at(0).exploded = false;
                                pieSeries.at(1).exploded = false;
                                pieSeries.at(2).exploded = false;
                                pieSeries.at(3).exploded = false;
                                pieSeries.at(4).exploded = true;
                                pieSeries.at(5).exploded = false;
                            }
                        }

                        }


                    }

                Component.onCompleted: {
                    //pieSeries.fun();
                    pieSeries.append("Others", 52.0);
                    pieSeries.at(0).exploded = true;
                }
            }
            Rectangle {
                color: 'yellow'
                implicitWidth: 500
                implicitHeight: 200
            }
            Rectangle {
                color: 'pink'
                implicitWidth: 500
                implicitHeight: 200
            }
            Rectangle {
                color: 'blue'
                implicitWidth: 500
                implicitHeight: 200
            }
        }

    }
    }
//    RowLayout {

    Rectangle {
        id: first
        //radius : 10
        //Layout.alignment: Qt.AlignLeft
       property int count: 9
        anchors.top: grid.bottom
       anchors.margins: 2

       height: all.height/12
       width: all.width/3
       gradient: Gradient {
           GradientStop { position: 0.0; color: "#dbddde" }
           GradientStop { position: 1.0; color: "red" }
       }
       border.color: Qt.lighter(color, 1.1)

       Text {
           color: "white"
           anchors.centerIn: parent
           font.italic : true
           //font.bold : true
           font.pointSize : 10
           text: "Управление услугами"
       }

       MouseArea {

           anchors.fill: parent

           cursorShape: Qt.PointingHandCursor
           hoverEnabled: true
           onEntered: {
               parent.color = "blue" }
           onExited: {
               parent.color = "white" }


           onClicked: {
               mod.open()
               mod.x = parent.width/2 - mod.width/2
               mod.y = parent.height/2 - mod.height/2
               //theModel.append({"number": ++parent.count})
           }
       }
   }

    Rectangle {
        id:second
        //radius : 10
        //Layout.alignment: Qt.AlignRight
       property int count: 9
//       anchors.top: grid.bottom
//       anchors.left: parent.left
//       anchors.right: parent.right
       anchors.left: first.right
       anchors.top: grid.bottom
       anchors.margins: 2

//       height: 40
//       width: 212
       height: all.height/12
       width: all.width/3
       gradient: Gradient {
           GradientStop { position: 0.0; color: "#dbddde" }
           GradientStop { position: 1.0; color: "red" }
       }
       border.color: Qt.lighter(color, 1.1)

       Text {
           color: "white"
           anchors.centerIn: parent
           font.italic : true
           //font.bold : true
           font.pointSize : 10
           text: "Тарифы"
       }

       MouseArea {

           anchors.fill: parent

           cursorShape: Qt.PointingHandCursor
           hoverEnabled: true
           onEntered: {
               parent.color = "blue" }
           onExited: {
               parent.color = "white" }


           onClicked: {
               mod.open()
               mod.x = parent.width/2 - mod.width/2
               mod.y = parent.height/2 - mod.height/2
               //theModel.append({"number": ++parent.count})
           }
       }
   }
    Rectangle {
        id:third
        //radius : 10
        //Layout.alignment: Qt.AlignRight
       property int count: 9
       anchors.left: second.right
       anchors.top: grid.bottom
       anchors.margins: 2

       height: all.height/12
       width: all.width/3
       gradient: Gradient {
           GradientStop { position: 0.0; color: "#dbddde" }
           GradientStop { position: 1.0; color: "red" }
       }
       border.color: Qt.lighter(color, 1.1)

       Text {
           color: "white"
           anchors.centerIn: parent
           font.italic : true
           //font.bold : true
           font.pointSize : 10
           text: "Акции"
       }

       MouseArea {

           anchors.fill: parent

           cursorShape: Qt.PointingHandCursor
           hoverEnabled: true
           onEntered: {
               parent.color = "blue" }
           onExited: {
               parent.color = "white" }


           onClicked: {
               mod.open()
               mod.x = parent.width/2 - mod.width/2
               mod.y = parent.height/2 - mod.height/2
               //theModel.append({"number": ++parent.count})
           }
       }
   }
//}
   Modal {
      id: mod

   }
   }
}
