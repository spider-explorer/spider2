TEMPLATE = subdirs
SUBDIRS = archive-api boot2 main sha256 git-console gitlab-console scoop-console qt-console qml-console $$(HOME)/qt/common

archive-api.depends = $$(HOME)/qt/common
boot2.depends = $$(HOME)/qt/common archive-api
main.depends = $$(HOME)/qt/common archive-api
sha256.depends = $$(HOME)/qt/common
git-console.depends = $$(HOME)/qt/common
gitlab-console.depends = $$(HOME)/qt/common
scoop-console.depends = $$(HOME)/qt/common
qt-console.depends = $$(HOME)/qt/common
qml-console.depends = $$(HOME)/qt/common
