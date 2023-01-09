import QtQuick 2.0

Rectangle {
    id: button
    width: 150
    height: 50
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#f8306a" }
        GradientStop { position: 1.0; color: "#fb5b40" }
    }
    border.color: Qt.lighter(color, 1.1)

    radius: 2
    property alias text: buttontext
    signal clicked

    property bool selected

    Text {
        id: buttontext
        color: "navy"
        anchors.centerIn: parent
        font.italic : true
        font.pointSize : 10
        //text: "Test"
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        hoverEnabled: true
        onEntered: {
            parent.color = "blue" }
        onExited: {
            parent.color = "white" }

        onClicked: button.clicked()
    }

    Rectangle {
        id: underlineRect
        visible: button.selected
        height: 2
        width: button.width
        color: "blue"
        anchors.bottom: parent.bottom
    }

    Behavior on selected {PropertyAnimation {properties: "selected"; easing.type: Easing.InOutElastic; easing.amplitude: 2.0; easing.period: 0.5}}
}
