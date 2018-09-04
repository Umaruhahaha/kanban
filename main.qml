import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1
import QtQuick.Controls 1.2
Window {
  visible: true
  title: qsTr("Hello Board")
  width: 960
  height: 540
  flags:Qt.FramelessWindowHint

  MainForm {
    anchors.fill: parent

  }

}
