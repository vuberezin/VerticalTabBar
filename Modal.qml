import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.1


Dialog {

    width: 400
    height: 380
    title: "Модальное окно"
    contentItem: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#dbddde" }
            GradientStop { position: 1.0; color: "#5fc9f8" }
        }

        Text {
            font.italic : true
            font.bold : true
            font.pointSize : 10
            text: "Тестовый текст"
            color: "navy"
            anchors.centerIn: parent
        }
    }
    standardButtons: Dialog.Ok | Dialog.Cancel

    onAccepted: console.log("Ok clicked")
    onRejected: console.log("Cancel clicked")

}
