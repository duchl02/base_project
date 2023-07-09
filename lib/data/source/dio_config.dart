class DioLogConfig {
  const DioLogConfig({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = true,
    this.responseBody = true,
    this.responseHeader = false,
    this.error = true,
    this.maxWidth = 90,
    this.compact = true,
  });

  final bool request;

  final bool requestHeader;

  final bool requestBody;

  final bool responseBody;

  final bool responseHeader;

  final bool error;

  final bool compact;

  final int maxWidth;
}
