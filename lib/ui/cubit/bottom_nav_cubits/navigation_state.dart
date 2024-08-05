part of 'navigation_bloc.dart';

class NavigationState {
  final int selectedIndex;

  NavigationState({required this.selectedIndex});

  factory NavigationState.initial() {
    return NavigationState(selectedIndex: 0);
  }

  NavigationState copyWith({int? selectedIndex}) {
    return NavigationState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
