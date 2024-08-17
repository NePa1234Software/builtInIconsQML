import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: root
    objectName: "Window"
    width: 800
    height: 600
    visible: true
    title: qsTr("Builtin Icons available in Material Style")

    Flickable {
        id: container
        anchors.fill: parent
        contentWidth: flow.width
        contentHeight: flow.height

        Flow {
            id: flow
            objectName: "Grid"
            width: container.width
            Repeater {
                id: repeater
                model: root.iconNames
                Button {
                    Layout.alignment: Qt.AlignCenter
                    id: button
                    text: modelData
                    icon.name: modelData
                    display: AbstractButton.TextUnderIcon
                }
            }
        }
    }
    // At end of file, as it is very long
    property list<string> iconNames: [
        // copied from QIcon cpp
        // static constexpr auto themeIconMapping = qOffsetStringArray(
            "address-book-new",
            "application-exit",
            "appointment-new",
            "call-start",
            "call-stop",
            "contact-new",
            "document-new",
            "document-open",
            "document-open-recent",
            "document-page-setup",
            "document-print",
            "document-print-preview",
            "document-properties",
            "document-revert",
            "document-save",
            "document-save-as",
            "document-send",
            "edit-clear",
            "edit-copy",
            "edit-cut",
            "edit-delete",
            "edit-find",
            "edit-paste",
            "edit-redo",
            "edit-select-all",
            "edit-undo",
            "folder-new",
            "format-indent-less",
            "format-indent-more",
            "format-justify-center",
            "format-justify-fill",
            "format-justify-left",
            "format-justify-right",
            "format-text-direction-ltr",
            "format-text-direction-rtl",
            "format-text-bold",
            "format-text-italic",
            "format-text-underline",
            "format-text-strikethrough",
            "go-down",
            "go-home",
            "go-next",
            "go-previous",
            "go-up",
            "help-about",
            "help-faq",
            "insert-image",
            "insert-link",
            "insert-text",
            "list-add",
            "list-remove",
            "mail-forward",
            "mail-mark-important",
            "mail-mark-read",
            "mail-mark-unread",
            "mail-message-new",
            "mail-reply-all",
            "mail-reply-sender",
            "mail-send",
            "media-eject",
            "media-playback-pause",
            "media-playback-start",
            "media-playback-stop",
            "media-record",
            "media-seek-backward",
            "media-seek-forward",
            "media-skip-backward",
            "media-skip-forward",
            "object-rotate-left",
            "object-rotate-right",
            "process-stop",
            "system-lock-screen",
            "system-log-out",
            "system-search",
            "system-reboot",
            "system-shutdown",
            "tools-check-spelling",
            "view-fullscreen",
            "view-refresh",
            "view-restore",
            "window-close",
            "window-new",
            "zoom-fit-best",
            "zoom-in",
            "zoom-out",

            "audio-card",
            "audio-input-microphone",
            "battery",
            "camera-photo",
            "camera-video",
            "camera-web",
            "computer",
            "drive-harddisk",
            "drive-optical",
            "input-gaming",
            "input-keyboard",
            "input-mouse",
            "input-tablet",
            "media-flash",
            "media-optical",
            "media-tape",
            "multimedia-player",
            "network-wired",
            "network-wireless",
            "phone",
            "printer",
            "scanner",
            "video-display",

            "appointment-missed",
            "appointment-soon",
            "audio-volume-high",
            "audio-volume-low",
            "audio-volume-medium",
            "audio-volume-muted",
            "battery-caution",
            "battery-low",
            "dialog-error",
            "dialog-information",
            "dialog-password",
            "dialog-question",
            "dialog-warning",
            "folder-drag-accept",
            "folder-open",
            "folder-visiting",
            "image-loading",
            "image-missing",
            "mail-attachment",
            "mail-unread",
            "mail-read",
            "mail-replied",
            "media-playlist-repeat",
            "media-playlist-shuffle",
            "network-offline",
            "printer-printing",
            "security-high",
            "security-low",
            "software-update-available",
            "software-update-urgent",
            "sync-error",
            "sync-synchronizing",
            "user-available",
            "user-offline",
            "weather-clear",
            "weather-clear-night",
            "weather-few-clouds",
            "weather-few-clouds-night",
            "weather-fog",
            "weather-showers",
            "weather-snow",
            "weather-storm"
         ]
}
