from Utils.IEventProcessor import IEventProcessor
from Utils.TestImport import LoadAndTrackData
import pandas as pd

class FeatureSet1A(IEventProcessor):
	def __init__(self, event, loanID):
		self.event = event
		self.loanID = loanID

	def Transact(self, session):
    		console.log("loanid: "+self.loanID)
    		 
def lambda_endpoint(event, context):
    eventClass = FeatureSet1A(event)
    LoadAndTrackData(event["payload"], eventClass.Transact).LoadAndTrack()