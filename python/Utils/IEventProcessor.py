import abc

class IEventProcessor(metaclass=abc.ABCMeta):
    @classmethod
    def __subclasshook__(cls, subclass):
        return (hasattr(subclass, 'Transact') and
                callable(subclass.Transact) or
                NotImplemented)

@abc.abstractmethod
def Transact(self, session):
    raise NotImplementedError