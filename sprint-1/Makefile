JAVA_FILES= \
   ./se/itu/game/cave/Thing.java   \
   ./se/itu/game/cave/Room.java     \
   ./se/itu/game/cave/Player.java    \
   ./se/itu/game/test/NavigationTests.java \
   ./se/itu/game/test/ThingTests.java \
   ./se/itu/game/test/TestUtils.java \
   ./se/itu/game/test/InitTest.java \
   ./se/itu/game/test/TestPlayer.java \
   ./se/itu/game/test/TestRoom.java \
   ./se/itu/game/cave/init/CaveInitializer.java \
   ./se/itu/game/cave/init/DbUtil.java \
   ./se/itu/game/gui/MainFrame.java \
   ./se/itu/game/main/MainGui.java

CLASS_FILES=$(JAVA_FILES:%.java=%.class)
PACKAGES="se.itu.game.cave se.itu.game.main se.itu.game.cave.init se.itu.game.gui"

%.class:%.java
	javac $<

all: $(CLASS_FILES) javadoc stat
	ls -al $(CLASS_FILES)

clean:
	-rm $(CLASS_FILES)
	-rm -fr doc/*
	find . -name "*~" | xargs rm -f

javadoc:
	javadoc -d doc -link  http://docs.oracle.com/javase/8/docs/api/ "${PACKAGES}"

stat:
	ohcount -s

if:
	@echo -n "Counting if or else: "
	@egrep -r "if |else " se | egrep -v "[ \t]*\*" | grep -v Test | wc -l
	@echo -n "Counting static (excl imports): "
	@egrep -r "static" se | egrep -v "[ \t]*\*" | grep -v Test | grep -v import | wc -l
	@echo -n "Counting interface: "
	@egrep -r "interface" se | egrep -v "[ \t]*\*" | grep -v Test | wc -l
	@echo -n "Counting implements: "
	@egrep -r "implements" se | egrep -v "[ \t]*\*" | grep -v Test | wc -l
	@echo -n "Counting lambda: "
	@egrep -r "\->" se | egrep -v "[ \t]*\*" | grep -v Test | wc -l
	@echo -n "Counting inheritance: "
	@egrep -r "extends" se | egrep -v "[ \t]*\*" | grep -v Test | wc -l
	@echo -n "Counting static imports: "
	@egrep -r "static" se | egrep -v "[ \t]*\*" | grep -v Test | grep import | wc -l

check: $(CLASS_FILES)
	@java -cp .:sqlite-jdbc-3.16.1.jar -ea se.itu.game.test.NavigationTests
	@java -cp .:sqlite-jdbc-3.16.1.jar -ea se.itu.game.test.ThingTests
	@java -cp .:sqlite-jdbc-3.16.1.jar -ea se.itu.game.test.InitTest
	@java -cp .:sqlite-jdbc-3.16.1.jar -ea se.itu.game.test.TestRoom
	@java -cp .:sqlite-jdbc-3.16.1.jar -ea se.itu.game.test.TestPlayer
