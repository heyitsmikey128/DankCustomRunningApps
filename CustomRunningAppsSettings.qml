import QtQuick
import qs.Common
import qs.Modules.Plugins
import qs.Widgets

PluginSettings {
    id: root
    pluginId: "customRunningApps"

    StyledText {
        width: parent.width
        text: "Size Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    SliderSetting {
        settingKey: "itemPercentage"
        label: "App Icon Size"
        defaultValue: 90
        minimum: 10
        maximum: 110
        unit: "%"
    }

    SliderSetting {
        settingKey: "spaceBetweenItems"
        label: "App Icon Spacing"
        description: "Space Between Each Running Application"
        defaultValue: 2
        minimum: 0
        maximum: 28
        unit: "px"
    }

    StyledText {
        width: parent.width
        text: "Hover Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

   ToggleSetting {
        id: resizeToggle
        settingKey: "resizeOnHover"
        label: "Resize App Icon"
        description: "Resize Icon on Mouse Hover"
        defaultValue: true
    }

    SliderSetting {
        visible: resizeToggle.value
        settingKey: "resizePercentage"
        label: "App Resize Percentage"
        description: "How much should the icon grow/shrink on hover"
        defaultValue: 125
        minimum: 1
        maximum: 200
        unit: "%"
    }


}