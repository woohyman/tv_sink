import 'package:flutter/material.dart';

class BaseFutureBuilder<T> extends StatefulWidget {
  final bool hideWhenLoadError;

  final Future<T> future;
  final Widget Function(T data, Function() update) builder;

  const BaseFutureBuilder({
    required this.future,
    required this.builder,
    this.hideWhenLoadError = false,
    super.key,
  });

  @override
  State<BaseFutureBuilder<T>> createState() => _BaseFutureBuilderState<T>();
}

class _BaseFutureBuilderState<T> extends State<BaseFutureBuilder<T>> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            if (widget.hideWhenLoadError) {
              return Container();
            } else {
              return Container(
                alignment: Alignment.center,
                child: const Text("加载错误"),
              );
            }
          }else if(snapshot.data is Map){
            final data = snapshot.data as Map;
            if(data.isEmpty){
              return Container(
                alignment: Alignment.center,
                child: const Text("数据为空"),
              );
            }
          }
        } else {
          if (widget.hideWhenLoadError) {
            return Container();
          } else {
            return Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator());
          }
        }

        return widget.builder(snapshot.data!, () {
          setState(() {});
        });
      },
    );
  }
}
