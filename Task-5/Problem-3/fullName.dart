class FullName {
  String _first;
  String _middle;
  String _last;

  FullName(this._first, this._middle, this._last);
  String get fullName=>"$_first $_middle $_last";
}