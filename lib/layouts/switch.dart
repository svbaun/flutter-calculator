part of layouts;

/// Класс для переключения макетов
class SwitchLayout {

  const SwitchLayout();
  
  /// Определяет расположение (вертикальное/горизонтальное)
  /// и посылает соответствующее событие для изменения состояния
  void detectPosition(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isHorz = size.width > size.height;
    ViewBloc bloc = BlocProvider.of(context);
    bloc.add(isHorz ? const Horizontal() : const Vertical());
  }
}
