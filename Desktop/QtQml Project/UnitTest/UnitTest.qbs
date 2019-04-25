import qbs

CppApplication {
    consoleApplication: true

    Depends { name: "cpp" }
    Depends { name: "Qt.core" }
    Depends {
        condition: Qt.core.versionMajor > 4
        name: "Qt.qmltest"
    }

    Group {
        name: "main application"
        files: [ "main.cpp" ]
    }

    Group {
        name: "qml test files"
        files: "tst_quicktest.qml"
    }

    cpp.defines: base.concat("QUICK_TEST_SOURCE_DIR=\"" + path + "\"")
}
