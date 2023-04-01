part of 'strings.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsVi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'core.home': return 'Flutter Init';
			case 'core.count': return ({required Object count}) => 'Bạn đã bấm ${count}';
			default: return null;
		}
	}
}
