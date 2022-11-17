# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fukuro_common/RobotControlInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class RobotControlInfo(genpy.Message):
  _md5sum = "3d219701cbb4b4f70bacc052c397c3a7"
  _type = "fukuro_common/RobotControlInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 error_radius
float64 error_angle
geometry_msgs/Pose2D setpoint
bool plan
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
  __slots__ = ['error_radius','error_angle','setpoint','plan']
  _slot_types = ['float64','float64','geometry_msgs/Pose2D','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       error_radius,error_angle,setpoint,plan

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotControlInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.error_radius is None:
        self.error_radius = 0.
      if self.error_angle is None:
        self.error_angle = 0.
      if self.setpoint is None:
        self.setpoint = geometry_msgs.msg.Pose2D()
      if self.plan is None:
        self.plan = False
    else:
      self.error_radius = 0.
      self.error_angle = 0.
      self.setpoint = geometry_msgs.msg.Pose2D()
      self.plan = False

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
      _x = self
      buff.write(_get_struct_5dB().pack(_x.error_radius, _x.error_angle, _x.setpoint.x, _x.setpoint.y, _x.setpoint.theta, _x.plan))
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
      if self.setpoint is None:
        self.setpoint = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 41
      (_x.error_radius, _x.error_angle, _x.setpoint.x, _x.setpoint.y, _x.setpoint.theta, _x.plan,) = _get_struct_5dB().unpack(str[start:end])
      self.plan = bool(self.plan)
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
      _x = self
      buff.write(_get_struct_5dB().pack(_x.error_radius, _x.error_angle, _x.setpoint.x, _x.setpoint.y, _x.setpoint.theta, _x.plan))
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
      if self.setpoint is None:
        self.setpoint = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 41
      (_x.error_radius, _x.error_angle, _x.setpoint.x, _x.setpoint.y, _x.setpoint.theta, _x.plan,) = _get_struct_5dB().unpack(str[start:end])
      self.plan = bool(self.plan)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5dB = None
def _get_struct_5dB():
    global _struct_5dB
    if _struct_5dB is None:
        _struct_5dB = struct.Struct("<5dB")
    return _struct_5dB
