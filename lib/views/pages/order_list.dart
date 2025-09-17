import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/bloc/bloc_state.dart' hide State;
import 'package:test1/bloc/bloc_event.dart';
import 'package:test1/bloc/bloc_bloc.dart';
import 'package:test1/presentation/sections/list_card.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key, required this.state});
  final String state;
  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final _scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController.addListener(_onScroll);
  // }

  // void _onScroll() {
  //   if (_isBottom) {
  //     ImplementBloc().add(LoadingMoreData());
  //   }
  // }

  bool get _isBottom {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll - 200.0);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: BlocProvider<ImplementBloc>(
        create: (_) => ImplementBloc()..add(FetchData()),
        child: BlocBuilder<ImplementBloc, OrderState>(
          builder: (context, state) {
            if (state is LoadingState && state is! LoadedState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is LoadedState) {
              final data = state.comments.body;
              if (state.comments.body!.isEmpty) {
                return Center(child: Text("No data"));
              }
              return RefreshIndicator(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  controller: _scrollController,
                  itemCount: data!.length + (state is LoadingMoreData ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == data.length) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 20.0,
                      ),
                      child: ListCard(
                        id: "#${data[index].id}",
                        state: widget.state,
                        departure: data[index].name,
                        destination: data[index].name,
                      ),
                    );
                  },
                ),
                onRefresh: () async {
                  context.read<ImplementBloc>().add(RefreshData());
                },
              );
            } else if (state is ErrorState) {
              return Center(child: Text("Error: ${state.message}"));
            }
            return Text("Error");
          },
        ),
      ),
    );
  }
}
