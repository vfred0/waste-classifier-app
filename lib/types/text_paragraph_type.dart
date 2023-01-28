enum TextParagraphType {
  xsmall('xsmall', 16, 1.56),
  small('small', 17.07, 1.49),
  medium('medium', 18.21, 1.54),
  large('large', 19.43, 1.53),
  xlarge('xlarge', 20.73, 1.51),
  xxlarge('xxlarge', 22.11, 1.50);

  final String name;
  final double size;
  final double height;

  const TextParagraphType(this.name, this.size, this.height);
}
