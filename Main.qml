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

    GridView {
        id: container
        anchors.fill: parent
        model: root.iconNames
        cellWidth: 50
        cellHeight: 50
        delegate: Item {
            height: GridView.view.cellHeight
            width: GridView.view.cellWidth

            Button {
                id: button
                anchors.horizontalCenter: parent.horizontalCenter
                text: modelData
                icon.name: modelData
                display: AbstractButton.TextUnderIcon
                Component.onCompleted: {
                    if (button.implicitWidth > container.cellWidth) {
                        container.cellWidth = button.implicitWidth
                    }
                    if (button.implicitHeight > container.cellHeight) {
                        container.cellHeight = button.implicitHeight
                    }
                }
            }
        }
    }

    // At end of file, as it is very long
    // TODO sync fully with
    // https://specifications.freedesktop.org/icon-naming-spec/icon-naming-spec-latest.html
    // TIP QT_LOGGING_RULES=qt.gui.icon.loader.debug=true
    // TIP QT_LOGGING_RULES=*.debug=true; qt.quick.pointer.localization=false;qt.quick.hover=false


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
            "edit-find-replace",  // added as missing in QIcon
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
            "go-bottom",  // added as missing in QIcon
            "go-down",
            "go-first",  // added as missing in QIcon
            "go-home",
            "go-jump",  // added as missing in QIcon
            "go-last",  // added as missing in QIcon
            "go-next",
            "go-previous",
            "go-top",  // added as missing in QIcon
            "go-up",
            "help-about",
            "help-contents",  // added as missing in QIcon
            "help-faq",
            "insert-image",
            "insert-link",
            "insert-object",  // added as missing in QIcon
            "insert-text",
            "list-add",
            "list-remove",
            "mail-forward",
            "mail-mark-important",
            "mail-mark-junk",  // added as missing in QIcon
            "mail-mark-notjunk",  // added as missing in QIcon
            "mail-mark-read",
            "mail-mark-unread",
            "mail-message-new",
            "mail-reply-all",
            "mail-reply-sender",
            "mail-send",
            "mail-send-receive",  // added as missing in QIcon
            "media-eject",
            "media-playback-pause",
            "media-playback-start",
            "media-playback-stop",
            "media-record",
            "media-seek-backward",
            "media-seek-forward",
            "media-skip-backward",
            "media-skip-forward",
            "object-flip-horizontal",  // added as missing in QIcon
            "object-flip-vertical",  // added as missing in QIcon
            "object-rotate-left",
            "object-rotate-right",
            "process-stop",
            "system-lock-screen",
            "system-log-out",
            "system-run",  // added as missing in QIcon
            "system-search",
            "system-reboot",
            "system-shutdown",
            "tools-check-spelling",
            "view-fullscreen",
            "view-refresh",
            "view-restore",
            "view-sort-ascending",  // added as missing in QIcon
            "view-sort-descending",  // added as missing in QIcon
            "window-close",
            "window-new",
            "zoom-fit-best",
            "zoom-in",
            "zoom-original",  // added as missing in QIcon
            "zoom-out",

            "process-working",   // added as missing in QIcon

            "audio-card",
            "audio-input-microphone",
            "battery",
            "camera-photo",
            "camera-video",
            "camera-web",
            "computer",
            "drive-harddisk",
            "drive-optical",
            "drive-removable-media", // added
            "input-gaming",
            "input-keyboard",
            "input-mouse",
            "input-tablet",
            "media-flash",
            "media-floppy",
            "media-optical",
            "media-tape",
            "modem",
            "multimedia-player",
            "network-wired",
            "network-wireless",
            "pda",
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
            "weather-storm",

            // found in qwindows.dll...
            "accessories-calculator",
            "accessories-character-map",
            "accessories-dictionary",
            "accessories-text-editor",   // From
            "help-browser",
            "multimedia-volume-control",
            "preferences-desktop",
            "preferences-desktop-accessibility",
            "preferences-desktop-font",
            "preferences-desktop-keyboard",
            "preferences-desktop-locale",
            "preferences-desktop-screensaver",
            "preferences-desktop-theme",
            "preferences-desktop-wallpaper",
            "preferences-desktop-peripherals",
            "preferences-desktop-personal",
            "preferences-other",
            "preferences-system",
            "preferences-system-network",
            "system-file-manager",
            "system-software-install",
            "system-software-update",
            "utilities-system-monitor",
            "utilities-terminal",
            "applications-accessories",
            "applications-development",
            "applications-engineering",
            "applications-games",
            "applications-graphics",
            "applications-internet",
            "applications-multimedia",
            "applications-office",
            "applications-other",
            "applications-science",
            "applications-system",
            "applications-utilities",
            "system-help",
            "emblem-default",
            "emblem-documents",
            "emblem-downloads",
            "emblem-favorite",
            "emblem-important",
            "emblem-mail",
            "emblem-photos",
            "emblem-shared",
            "emblem-symbolic-link",
            "emblem-synchronized",
            "emblem-system",
            "emblem-unreadable",
            "folder",
            "folder-remote",
            "start-here",
            "user-bookmarks",
            "user-desktop",
            "user-home",
            "user-trash",
            "dialog-error",
            "weather-overcast",
            "network-server",
            "network-workgroup"
         ]
}
