import 'package:flutter/material.dart';
import 'package:login/data/constants.dart';

class BuildChairs{
  static Widget selectedChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }

  static Widget availableChair() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.grey,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      onPressed: () {

      },
      child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(6.0))),
    );
  }

  static Widget reservedChair(){
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(6.0)
      ),
    );
  }
}