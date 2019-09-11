import sys

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QUrl

from PySide2.QtCore import QObject, Signal, Slot, Property

class NumberGenerator(QObject):
    def __init__(self):
        QObject.__init__(self)
        self.__Stg1Pres = 100
        self.__Stg2Pres = 102
        self.__Stg3Pres = 115
        self.__Stg4Pres = 150
        self.__Stg5Pres = 38

    def get_number1(self):
        return self.__Stg1Pres
    def get_number2(self):
        return self.__Stg2Pres
    def get_number3(self):
        return self.__Stg3Pres
    def get_number4(self):
        return self.__Stg4Pres
    def get_number5(self):
        return self.__Stg5Pres

    number1 = Property(int, get_number1)
    number2 = Property(int, get_number2)
    number3 = Property(int, get_number3)
    number4 = Property(int, get_number4)
    number5 = Property(int, get_number5)

if __name__ == '__main__':
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    number_generator = NumberGenerator()
    engine.rootContext().setContextProperty("numberGenerator", number_generator)

    engine.load(QUrl("main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
