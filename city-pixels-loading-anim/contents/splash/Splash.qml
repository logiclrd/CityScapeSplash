    import QtQuick 2.5
    import QtQuick.Window 2.2

    Rectangle {
        id: root
        width: Screen.desktopWidth
        height: Screen.desktopHeight
        color: "#000000"

        Image {
          id: sky
          source: "images/sky.png"
          anchors.fill: parent
          fillMode: Image.TileHorizontally
        }

        Image {
          id: stars
          source: "images/stars.png"
          anchors.fill: parent
          fillMode: Image.PreserveAspectFit
        }

        AnimatedImage {
          id: cityscape
          source: "images/cityscape.mng"
          width: Screen.width
          height: Screen.height
          anchors.bottom: parent.bottom
          fillMode: Image.Stretch
        }

        AnimatedImage {
          id: loading
          source: "images/loading.gif"
          anchors.top: parent.verticalCenter
          anchors.topMargin: Screen.height / 8
          anchors.horizontalCenter: parent.horizontalCenter
          fillMode: Image.Pad
        }
    }
