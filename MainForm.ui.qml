import QtQuick 2.9
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

Item {
    id: item1
    property alias item1: item1
    width: 960
    height: 540
    property alias tableView1: tableView1
    property alias tableView: tableView
    property alias groupBox: groupBox
    Image {
        id: item1_bg
        anchors.fill: parent
        smooth: true
        source: '/image/bg.png'
    }

    Image {
        id:groupbox_bg
        source: "/image/block.png"
        anchors.fill: groupBox
        smooth: true
    }
    Image {
        id:groupbox_bg1
        source: "/image/block.png"
        anchors.fill: groupBox1
        smooth: true
    }
    Rectangle {
        id: rectangle
        height: parent.height/3*2
        color: "#00000000"
        Image {
        id: rectangle_bg
        anchors.fill: rectangle
        smooth: true
        source: '/image/assemble.png'
        }
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
    }
    GroupBox {
        id: groupBox
        flat:true
        width: parent.width/100*47
        height: parent.height/81*22
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        ListModel {
            id:statemodel

            ListElement {
                name:"No."
                state:"4008021"
            }
            ListElement {
                name:"Battery"
                state:"60%"
            }
            ListElement {
                name:"State"
                state:"Charging"
            }
        }
        ListModel {
            id:taskmodel
            ListElement {
                ID:"1"
                MachineTool:"CA6140B"
                Taking:"grey"
                PickUp:"yellow"
                Sending:"grey"
                PutDown:"grey"
            }
            ListElement {
                ID:"2"
                MachineTool:"TA5042B"
                Taking:"grey"
                PickUp:"grey"
                Sending:"grey"
                PutDown:"grey"
            }
        }
        ListModel {
            id:headmodel
            ListElement {
                HeadID:"ID"
                HeadMachineTool:"MachineTool"
                HeadTaking:"Taking"
                HeadPickUp:"PickUp"
                HeadSending:"Sending"
                HeadPutDown:"PutDown"
            }
        }
        TableView {
            id: tableView
            headerVisible:false
            frameVisible: false
            backgroundVisible: false
            alternatingRowColors:false
            width: groupBox.width/64*16
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            model:statemodel
            verticalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            TableViewColumn {
                role:"name"
                width: tableView.width/3
                delegate:Rectangle {
                    color: "#00000000"
                    Text {
                        color: "white"
                        anchors.left:parent.left
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family: "Helvetica"
                        font.pointSize: 16
                    }
                }
            }
            TableViewColumn {
                role:"state"
                width: tableView.width/3*2
                delegate:Rectangle{
                    color: "#00000000"
                    Text {
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family: "Helvetica"
                        font.pointSize: 16
                    }
                }
            }
            rowDelegate:Rectangle {
                height:tableView.height/3
                color: "#00000000"
            }
        }
        TableView {
            id: tableView2
            //    x: 100
            headerVisible:false
            frameVisible:false
            backgroundVisible:false
            alternatingRowColors:false
            width: groupBox.width/64*45
            height: groupBox.height/6
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 15
            verticalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            model:headmodel
            TableViewColumn {
                role:"HeadID"
                width:tableView2.width/12
                delegate:Rectangle {
                    color: "#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text:styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadMachineTool"
                width:tableView2.width/64*15
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadTaking"
                width: tableView2.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadPickUp"
                width: tableView2.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role: "HeadSending"
                width: tableView2.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadPutDown"
                width: tableView2.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            rowDelegate:Rectangle {
                color: "#00000000"
            }
        }
        TableView {
            id:tableView1
            //      x: 124
            //      y: 35
            headerVisible:false
            frameVisible:false
            backgroundVisible:false
            alternatingRowColors:false
            width: groupBox.width/64*45
            anchors.top: tableView2.bottom
            anchors.bottom:parent.bottom
            anchors.bottomMargin: 0
            anchors.right:parent.right
            anchors.rightMargin: 0
            verticalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            model:taskmodel

            TableViewColumn {
                role:"ID"
                width:tableView1.width/12
                delegate:Rectangle {
                    color: "#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text:styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"MachineTool"
                width:tableView1.width/64*15
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"Taking"
                width: tableView1.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id:rectangleTaking
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            TableViewColumn {
                role:"PickUp"
                width: tableView1.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id:rectanglePickUp
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            TableViewColumn {
                role: "Sending"
                width: tableView1.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id: rectangleSending
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            TableViewColumn {
                role:"PutDown"
                width: tableView1.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id:rectanglePutDown
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            rowDelegate:Rectangle {
                height:tableView1.height/5
                color: "#00000000"
            }
        }
    }
    GroupBox {
        id: groupBox1
        flat:true
        width: parent.width/100*47
        height: parent.height/81*22
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 20
        ListModel {
            id:statemodel1

            ListElement {
                name:"No."
                state:"4008021"
            }
            ListElement {
                name:"Battery"
                state:"60%"
            }
            ListElement {
                name:"State"
                state:"Charging"
            }
        }
        ListModel {
            id:taskmodel1
            ListElement {
                ID:"1"
                MachineTool:"CA6140B"
                Taking:"grey"
                PickUp:"yellow"
                Sending:"grey"
                PutDown:"grey"
            }
            ListElement {
                ID:"2"
                MachineTool:"TA5042B"
                Taking:"grey"
                PickUp:"grey"
                Sending:"grey"
                PutDown:"grey"
            }
        }
        ListModel {
            id:headmodel1
            ListElement {
                HeadID:"ID"
                HeadMachineTool:"MachineTool"
                HeadTaking:"Taking"
                HeadPickUp:"PickUp"
                HeadSending:"Sending"
                HeadPutDown:"PutDown"
            }
        }
        TableView {
            id: tableView3
            headerVisible:false
            frameVisible: false
            backgroundVisible: false
            alternatingRowColors:false
            width: groupBox1.width/64*16
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            model:statemodel1
            verticalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            TableViewColumn {
                role:"name"
                width: tableView3.width/3
                delegate:Rectangle {
                    color: "#00000000"
                    Text {
                        color: "white"
                        anchors.left:parent.left
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family: "Helvetica"
                        font.pointSize: 16
                    }
                }
            }
            TableViewColumn {
                role:"state"
                width: tableView3.width/3*2
                delegate:Rectangle{
                    color: "#00000000"
                    Text {
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family: "Helvetica"
                        font.pointSize: 16
                    }
                }
            }
            rowDelegate:Rectangle {
                height:tableView3.height/3
                color: "#00000000"
            }
        }
        TableView {
            id: tableView4
            //    x: 100
            headerVisible:false
            frameVisible:false
            backgroundVisible:false
            alternatingRowColors:false
            width: groupBox1.width/64*45
            height: groupBox1.height/6
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 15
            verticalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            model:headmodel1
            TableViewColumn {
                role:"HeadID"
                width:tableView4.width/12
                delegate:Rectangle {
                    color: "#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text:styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadMachineTool"
                width:tableView4.width/4
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadTaking"
                width: tableView4.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadPickUp"
                width: tableView4.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role: "HeadSending"
                width: tableView4.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"HeadPutDown"
                width: tableView4.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            rowDelegate:Rectangle {
                color: "#00000000"
            }
        }
        TableView {
            id:tableView5
            //      x: 124
            //      y: 35
            headerVisible:false
            frameVisible:false
            backgroundVisible:false
            alternatingRowColors:false
            width: groupBox1.width/64*45
            anchors.top: tableView4.bottom
            anchors.bottom:parent.bottom
            anchors.bottomMargin: 0
            anchors.right:parent.right
            anchors.rightMargin: 0
            verticalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            horizontalScrollBarPolicy:Qt.ScrollBarAlwaysOff
            model:taskmodel1

            TableViewColumn {
                role:"ID"
                width:tableView5.width/12
                delegate:Rectangle {
                    color: "#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text:styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"MachineTool"
                width:tableView5.width/4
                delegate:Rectangle {
                    color:"#00000000"
                    Text {
                        color:"white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter:parent.verticalCenter
                        text: styleData.value
                        font.family:"Helvetica"
                        font.pointSize:12
                    }
                }
            }
            TableViewColumn {
                role:"Taking"
                width: tableView5.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id:rectangleTaking1
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            TableViewColumn {
                role:"PickUp"
                width: tableView5.width/6
                delegate:Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id:rectanglePickUp1
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            TableViewColumn {
                role: "Sending"
                width: tableView5.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id: rectangleSending1
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            TableViewColumn {
                role:"PutDown"
                width: tableView5.width/6
                delegate: Rectangle {
                    color:"#00000000"
                    Rectangle {
                        id:rectanglePutDown1
                        color: styleData.value
                        anchors.right: parent.right
                        anchors.rightMargin: parent.width/11*4
                        anchors.left:parent.left
                        anchors.leftMargin: parent.width/11*4
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/6
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: parent.height/6
                    }
                }
            }
            rowDelegate:Rectangle {
                height:tableView5.height/5
                color: "#00000000"
            }
        }
    }
}
