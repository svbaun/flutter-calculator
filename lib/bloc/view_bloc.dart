part of bloc;

class ViewBloc extends Bloc<ViewEvent, ViewData> {

  ViewBloc() : super(ViewData()) {
    on<ViewEvent>((event, emit) {
      final data = ViewData();
      data.layout = state.layout;
      data.operations = List<Operation>.from(state.operations);
      data.value = state.value;
      data.memory = state.memory;

      event.doSomething(data);
      emit(data);
    });
  }
}

