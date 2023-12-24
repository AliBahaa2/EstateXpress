import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key, @required this.idd, @required this.dataa})
      : super(key: key);
  final idd;
  final dataa;

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 200), vsync: this, value: 1.0);

  bool _isFavorite = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          var collection = FirebaseFirestore.instance.collection('estatedb');

          //print(_isFavorite);
          if (_isFavorite == true) {
            collection
                .doc(widget.idd) // <-- Doc ID where data should be updated.
                .update({'fav': false}) // <-- Updated data
                .then((_) => print('false'))
                .catchError((error) => print('Update failed: $error'));
          } else {
            collection
                .doc(widget.idd) // <-- Doc ID where data should be updated.
                .update({'fav': true}) // <-- Updated data
                .then((_) => print('true'))
                .catchError((error) => print('Update failed: $error'));
          }
          _isFavorite = !_isFavorite;
        });
        _controller.reverse().then((value) => _controller.forward());
      },
      child: ScaleTransition(
        scale: Tween(begin: 0.7, end: 1.0).animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
        child: (widget.dataa['fav'] == true || _isFavorite == true)
            ? const Icon(
                Icons.favorite,
                size: 25,
                color: Colors.red,
              )
            : const Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 22,
              ),
      ),
    );
  }
}
