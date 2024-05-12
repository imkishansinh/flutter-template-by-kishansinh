/// Replaces the placeholders in the given [template] with the provided [params].
///
/// The [template] is a string that may contain placeholders in the form of `{param}`.
/// The [params] is a map where the keys are the placeholder names and the values are the replacement values.
///
/// Returns the modified string with the placeholders replaced by their corresponding values.
String replaceWithParams(String template, List<String> params) {
  assert(template.isNotEmpty, 'templateString must not be empty');

  for (int i = 0; i < params.length; i++) {
    template = template.replaceFirst('{}', params[i]);
  }

  return template;
}
