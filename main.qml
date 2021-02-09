import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task 01")

    // тестовая часть
    property int getNum: 10  // "getNum дает Мгер"
    property int checkNum: getRandomInt(1, getNum)  // количество чекбоксов

    function getRandomInt(min, max) {
        min = Math.ceil(min)
        max = Math.floor(max)
        return Math.floor(Math.random() * (max - min)) + min //Максимум не включается, минимум включается
    }



    Row {
        Repeater {
            id: root
            model: checkNum
            Rectangle {
                width: 100; height: 40
                border.width: 1
                color: "yellow"
                CheckBox{
                    text: index + 1
                    checked: false
                }
            }
        }
    }
}
