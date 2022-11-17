# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fukuro_common/StrategyServiceRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class StrategyServiceRequest(genpy.Message):
  _md5sum = "36813d2bf1dd74d02dfcbc81194a6945"
  _type = "fukuro_common/StrategyServiceRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string strategy_state
string strategy_option
string role
int32 obs1_pos
int32 obs2_pos
int32 kiper_pos
string option
geometry_msgs/Pose2D home_pos
geometry_msgs/Pose2D kick_pos

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
"""
  __slots__ = ['strategy_state','strategy_option','role','obs1_pos','obs2_pos','kiper_pos','option','home_pos','kick_pos']
  _slot_types = ['string','string','string','int32','int32','int32','string','geometry_msgs/Pose2D','geometry_msgs/Pose2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       strategy_state,strategy_option,role,obs1_pos,obs2_pos,kiper_pos,option,home_pos,kick_pos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(StrategyServiceRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.strategy_state is None:
        self.strategy_state = ''
      if self.strategy_option is None:
        self.strategy_option = ''
      if self.role is None:
        self.role = ''
      if self.obs1_pos is None:
        self.obs1_pos = 0
      if self.obs2_pos is None:
        self.obs2_pos = 0
      if self.kiper_pos is None:
        self.kiper_pos = 0
      if self.option is None:
        self.option = ''
      if self.home_pos is None:
        self.home_pos = geometry_msgs.msg.Pose2D()
      if self.kick_pos is None:
        self.kick_pos = geometry_msgs.msg.Pose2D()
    else:
      self.strategy_state = ''
      self.strategy_option = ''
      self.role = ''
      self.obs1_pos = 0
      self.obs2_pos = 0
      self.kiper_pos = 0
      self.option = ''
      self.home_pos = geometry_msgs.msg.Pose2D()
      self.kick_pos = geometry_msgs.msg.Pose2D()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.strategy_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.strategy_option
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.role
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3i().pack(_x.obs1_pos, _x.obs2_pos, _x.kiper_pos))
      _x = self.option
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d().pack(_x.home_pos.x, _x.home_pos.y, _x.home_pos.theta, _x.kick_pos.x, _x.kick_pos.y, _x.kick_pos.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.home_pos is None:
        self.home_pos = geometry_msgs.msg.Pose2D()
      if self.kick_pos is None:
        self.kick_pos = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.strategy_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.strategy_state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.strategy_option = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.strategy_option = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.role = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.role = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.obs1_pos, _x.obs2_pos, _x.kiper_pos,) = _get_struct_3i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.option = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.option = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.home_pos.x, _x.home_pos.y, _x.home_pos.theta, _x.kick_pos.x, _x.kick_pos.y, _x.kick_pos.theta,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.strategy_state
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.strategy_option
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.role
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3i().pack(_x.obs1_pos, _x.obs2_pos, _x.kiper_pos))
      _x = self.option
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d().pack(_x.home_pos.x, _x.home_pos.y, _x.home_pos.theta, _x.kick_pos.x, _x.kick_pos.y, _x.kick_pos.theta))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.home_pos is None:
        self.home_pos = geometry_msgs.msg.Pose2D()
      if self.kick_pos is None:
        self.kick_pos = geometry_msgs.msg.Pose2D()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.strategy_state = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.strategy_state = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.strategy_option = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.strategy_option = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.role = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.role = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.obs1_pos, _x.obs2_pos, _x.kiper_pos,) = _get_struct_3i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.option = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.option = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.home_pos.x, _x.home_pos.y, _x.home_pos.theta, _x.kick_pos.x, _x.kick_pos.y, _x.kick_pos.theta,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3i = None
def _get_struct_3i():
    global _struct_3i
    if _struct_3i is None:
        _struct_3i = struct.Struct("<3i")
    return _struct_3i
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fukuro_common/StrategyServiceResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class StrategyServiceResponse(genpy.Message):
  _md5sum = "ebb43f57b7820ff999dc120ba80eb7d8"
  _type = "fukuro_common/StrategyServiceResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 ok

"""
  __slots__ = ['ok']
  _slot_types = ['uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ok

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(StrategyServiceResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ok is None:
        self.ok = 0
    else:
      self.ok = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.ok
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.ok,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.ok
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.ok,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class StrategyService(object):
  _type          = 'fukuro_common/StrategyService'
  _md5sum = '2db2786a5ed05eb6930ecf6644f9e863'
  _request_class  = StrategyServiceRequest
  _response_class = StrategyServiceResponse
