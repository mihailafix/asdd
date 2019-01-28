import QtQuick 2.0

import "../components" as KosonComponents

TextEdit {
    color: KosonComponents.Style.defaultFontColor
    font.family: KosonComponents.Style.fontRegular.name
    selectionColor: KosonComponents.Style.dimmedFontColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
