import 'package:bloc/bloc.dart';
import 'package:cantwait28/models/item_model.dart';
import 'package:cantwait28/repositories/item_repository.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository) : super(DetailsState(itemModel: null, ItemModel: ItemModel));

  final ItemsRepository _itemsRepository;

  Future<void> getItemsWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(DetailsState(itemModel: itemModel, ItemModel: ItemModel));
  }
}
