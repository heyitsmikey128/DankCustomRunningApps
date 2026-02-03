import QtQuick
import qs.Common
import qs.Modules.Plugins
import qs.Widgets

PluginSettings {
    id: root
    pluginId: "customRunningApps"

    //SIZE SETTINGS//

    Rectangle {
        height: 4
        width: parent.width
        color: Theme.withAlpha(Theme.surfaceText, 0.15)
    }

    StyledText {
        width: parent.width
        text: "Size Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    SliderSetting {
        settingKey: "itemPercentage"
        label: "Widget Size"
        defaultValue: 100
        minimum: 10
        maximum: 120
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



    //HOVER SETTINGS//

    Rectangle {
        height: 4
        width: parent.width
        color: Theme.withAlpha(Theme.surfaceText, 0.15)
    }

    StyledText {
        width: parent.width
        text: "Hover Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    ToggleSetting {
        id: showBackgroundOnHover
        settingKey: "showBackgroundOnHover"
        label: "Show Background on Hover"
        defaultValue: true
    }

    ToggleSetting {
        id: showIndicatorOnHover
        settingKey: "showIndicatorOnHover"
        label: "Show Indicator on Hover"
        defaultValue: true
    }

   ToggleSetting {
        id: resizeToggle
        settingKey: "resizeOnHover"
        label: "Resize Icon on Hover"
        defaultValue: true
    }

    SliderSetting {
        visible: resizeToggle.value
        settingKey: "resizePercentage"
        label: "Icon Resize Percentage"
        defaultValue: 125
        minimum: 1
        maximum: 200
        unit: "%"
    }

    //FCUSED APP SETTINGS//

    Rectangle {
        height: 4
        width: parent.width
        color: Theme.withAlpha(Theme.surfaceText, 0.15)
    }
    
    StyledText {
        width: parent.width
        text: "Focused App Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    ToggleSetting {
        id: showIconBackground
        settingKey: "showIconBackground"
        label: "Show Icon Background"
        defaultValue: true
    }

    ToggleSetting {
        id: showAdditionalIndicator
        settingKey: "showAdditionalIndicator"
        label: "Show Indicator"
        defaultValue: false
    }

    //INDICATOR SETTINGS//

    Rectangle {
        visible: showIconBackground.value || showBackgroundOnHover.value || showAdditionalIndicator.value || showIndicatorOnHover.value
        height: 4
        width: parent.width
        color: Theme.withAlpha(Theme.surfaceText, 0.15)
    }

    StyledText {
        visible: showIconBackground.value || showBackgroundOnHover.value || showAdditionalIndicator.value || showIndicatorOnHover.value
        width: parent.width
        text: "Indicator Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    SliderSetting {
        visible: showIconBackground.value || showBackgroundOnHover.value
        id: iconBackgroundSize
        settingKey: "iconBackgroundSize"
        label: "Icon Background Size"
        defaultValue: 110
        minimum: 100
        maximum: 150
        unit: "%"
    }

    SelectionSetting {
        visible: showAdditionalIndicator.value || showIndicatorOnHover.value
        id: indicatorLocation
        settingKey: "indicatorLocation"
        label: "Indicator Location"
        options: [
            {label: "Top", value: "top"},
            {label: "Bottom", value: "bottom"},
        ]
        defaultValue: "bottom"
    }

    SelectionSetting {
        visible: showAdditionalIndicator.value || showIndicatorOnHover.value
        id: indicatorType
        settingKey: "indicatorType"
        label: "Indicator Type"
        options: [
            {label: "Bar", value: "bar"},
            {label: "Circle", value: "circle"},
        ]
        defaultValue: "bar"
    }

    SliderSetting {
        visible: showAdditionalIndicator.value || showIndicatorOnHover.value
        id: indicatorSize
        settingKey: "indicatorSize"
        label: "Indicator Size"
        defaultValue: 8
        minimum: 1
        maximum: 20
        unit: "px"
    }

    SliderSetting {
        visible: (showAdditionalIndicator.value || showIndicatorOnHover.value) && indicatorType.value === "bar"
        id: indicatorBarSpan
        settingKey: "indicatorBarSpan"
        label: "Indicator Bar Width"
        defaultValue: 80
        minimum: 1
        maximum: 100
        unit: "%"
    }

    //OVERRIDE SETTINGS//

    Rectangle {
        height: 4
        width: parent.width
        color: Theme.withAlpha(Theme.surfaceText, 0.15)
    }

    StyledText {
        width: parent.width
        text: "Overrides"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    SelectionSetting {
        id: overrideBackground
        settingKey: "overrideBackground"
        label: "Override Widget Background"
        options: [
            {label: "Default", value: "default"},
            {label: "Background Off", value: "false"},
            {label: "Background On", value: "true"}
        ]
        defaultValue: "default"
    }
}
