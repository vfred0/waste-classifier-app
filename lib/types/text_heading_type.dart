
enum TextHeadingType {
  xsmall('xsmall', 14.22),
  small('small', 16),
  medium('medium', 18),
  large('large', 20.25),
  xlarge('xlarge', 22.78),
  xxlarge('xxlarge', 25.62);

  final String name;
  final double size;
  
  const TextHeadingType(this.name, this.size);
}
