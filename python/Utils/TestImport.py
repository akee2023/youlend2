class TestImport():
    def __init__(self, event, transactFunction):
        self.transactFunction = transactFunction



    def LoadAndTrack(self):
        console.log("Hello World")
        self.transactFunction("session")
           



