# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from auvsi16/HSVValue.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class HSVValue(genpy.Message):
  _md5sum = "19ceef5ba7ddd7e83c3e574d372bbffc"
  _type = "auvsi16/HSVValue"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 iLowH
int32 iHighH
int32 iLowS
int32 iHighS
int32 iLowV
int32 iHighV

"""
  __slots__ = ['iLowH','iHighH','iLowS','iHighS','iLowV','iHighV']
  _slot_types = ['int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       iLowH,iHighH,iLowS,iHighS,iLowV,iHighV

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HSVValue, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.iLowH is None:
        self.iLowH = 0
      if self.iHighH is None:
        self.iHighH = 0
      if self.iLowS is None:
        self.iLowS = 0
      if self.iHighS is None:
        self.iHighS = 0
      if self.iLowV is None:
        self.iLowV = 0
      if self.iHighV is None:
        self.iHighV = 0
    else:
      self.iLowH = 0
      self.iHighH = 0
      self.iLowS = 0
      self.iHighS = 0
      self.iLowV = 0
      self.iHighV = 0

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
      buff.write(_struct_6i.pack(_x.iLowH, _x.iHighH, _x.iLowS, _x.iHighS, _x.iLowV, _x.iHighV))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.iLowH, _x.iHighH, _x.iLowS, _x.iHighS, _x.iLowV, _x.iHighV,) = _struct_6i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_6i.pack(_x.iLowH, _x.iHighH, _x.iLowS, _x.iHighS, _x.iLowV, _x.iHighV))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.iLowH, _x.iHighH, _x.iLowS, _x.iHighS, _x.iLowV, _x.iHighV,) = _struct_6i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6i = struct.Struct("<6i")
