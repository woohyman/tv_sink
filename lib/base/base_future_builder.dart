import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseFutureBuilder<T> extends StatefulWidget {
  final bool hideWhenLoadError;
  final GetStream<T>? stream;

  final Future<T> future;
  final Widget Function(T data, Function() update) builder;

  const BaseFutureBuilder({
    required this.future,
    required this.builder,
    this.hideWhenLoadError = false,
    super.key,
    this.stream,
  });

  @override
  State<BaseFutureBuilder<T>> createState() => _BaseFutureBuilderState<T>();
}

class _BaseFutureBuilderState<T> extends State<BaseFutureBuilder<T>> {
  final _obsData = Rxn<T>();

  @override
  void initState() {
    super.initState();
    widget.stream?.listen((data) {
      _obsData.value = data;
      _obsData.refresh();
    });
  }

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

        return Obx(() {
          final data = _obsData.value ?? snapshot.data!;
          if (data is Map && data.isEmpty) {
            return Container(
              alignment: Alignment.center,
              child: const Text("数据为空"),
            );
          }
          return widget.builder(_obsData.value ?? snapshot.data!, () {
            setState(() {});
          });
        });
      },
    );
  }
}
