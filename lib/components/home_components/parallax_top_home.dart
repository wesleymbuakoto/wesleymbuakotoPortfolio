
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants.dart';


class parallax_home extends StatelessWidget {
  parallax_home({Key? key, required this.first_name_home,required this.second_name_home}) : super(key: key);


  final String first_name_home;
  final String second_name_home;
  final GlobalKey _backgroundImageKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.width * 0.65,
      child: Stack(
        children: [
          Flow(
            delegate: ParallaxFlowDelegate(
              scrollable: Scrollable.of(context)!,
              listItemContext: context,
              backgroundImageKey: _backgroundImageKey,
            ),
            children: [
              Image.network(
                'https://storage.googleapis.com/wesley_web_assets/assets/images/rock.jpg',
                key: _backgroundImageKey,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) => progress == null
                    ? child
                    : LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Container(
                margin: const EdgeInsets.all(100),
                constraints:
                 BoxConstraints(maxWidth: 1110),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(40,40,40,10),
                                  child: AutoSizeText(
                                    first_name_home,
                                    style: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(40,10,40,40),
                                  child:  AutoSizeText(
                                    second_name_home,
                                    style: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 70),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              children: const [
                                AutoSizeText(
                                  "Scroll Down",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10),
                                ),
                                Icon(
                                  Icons.expand_more,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
        listItemBox.size.centerLeft(Offset.zero),
        ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
    (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
    verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform:
      Transform.translate(offset: Offset(0.0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
