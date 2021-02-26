# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from heron/Motion.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Motion(genpy.Message):
  _md5sum = "095414ef2073631e78bdbf064814a71b"
  _type = "heron/Motion"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 position_x
float32 position_y

float32 orientation_z
float32 orientation_w

float32 plate_height"""
  __slots__ = ['position_x','position_y','orientation_z','orientation_w','plate_height']
  _slot_types = ['float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       position_x,position_y,orientation_z,orientation_w,plate_height

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Motion, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.position_x is None:
        self.position_x = 0.
      if self.position_y is None:
        self.position_y = 0.
      if self.orientation_z is None:
        self.orientation_z = 0.
      if self.orientation_w is None:
        self.orientation_w = 0.
      if self.plate_height is None:
        self.plate_height = 0.
    else:
      self.position_x = 0.
      self.position_y = 0.
      self.orientation_z = 0.
      self.orientation_w = 0.
      self.plate_height = 0.

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
      buff.write(_get_struct_5f().pack(_x.position_x, _x.position_y, _x.orientation_z, _x.orientation_w, _x.plate_height))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.position_x, _x.position_y, _x.orientation_z, _x.orientation_w, _x.plate_height,) = _get_struct_5f().unpack(str[start:end])
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
      buff.write(_get_struct_5f().pack(_x.position_x, _x.position_y, _x.orientation_z, _x.orientation_w, _x.plate_height))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.position_x, _x.position_y, _x.orientation_z, _x.orientation_w, _x.plate_height,) = _get_struct_5f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5f = None
def _get_struct_5f():
    global _struct_5f
    if _struct_5f is None:
        _struct_5f = struct.Struct("<5f")
    return _struct_5f
