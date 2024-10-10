import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'carrusel_model.dart';
export 'carrusel_model.dart';

class CarruselWidget extends StatefulWidget {
  const CarruselWidget({
    super.key,
    this.imgList,
  });

  final List<String>? imgList;

  @override
  State<CarruselWidget> createState() => _CarruselWidgetState();
}

class _CarruselWidgetState extends State<CarruselWidget> {
  late CarruselModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarruselModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final imagenes = widget.imgList?.toList() ?? [];

        return SizedBox(
          width: double.infinity,
          height: 470.0,
          child: CarouselSlider.builder(
            itemCount: imagenes.length,
            itemBuilder: (context, imagenesIndex, _) {
              final imagenesItem = imagenes[imagenesIndex];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  fadeInDuration: const Duration(milliseconds: 500),
                  fadeOutDuration: const Duration(milliseconds: 500),
                  imageUrl: valueOrDefault<String>(
                    imagenesItem,
                    'https://firebasestorage.googleapis.com/v0/b/leche-61850.appspot.com/o/jorien-loman-00YD5QLyaGU-unsplash%20(1).png?alt=media&token=a647ff7a-05f9-4350-9d91-eb3ff2f95576',
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
            carouselController: _model.carouselController ??=
                CarouselController(),
            options: CarouselOptions(
              initialPage: max(0, min(1, imagenes.length - 1)),
              viewportFraction: 1.0,
              disableCenter: true,
              enlargeCenterPage: false,
              enlargeFactor: 0.0,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayInterval: const Duration(milliseconds: (800 + 4000)),
              autoPlayCurve: Curves.linear,
              pauseAutoPlayInFiniteScroll: true,
              onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
            ),
          ),
        );
      },
    );
  }
}
