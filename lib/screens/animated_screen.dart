class AnimatedScreen extends StatefullsWidget {

    const AnimatedScreen({Key? key}) : super(key: key);


    State<AnimatedScreen> createState() => _AnimatedScreenState();
    
}

class AnimatedScreen extends State<AnimatedScreen> {

    double _width = 50,
    double _height = 50,
    Color _color = Colors.indigo,
    BorderRadius _borderRadius =    BorderRadius.circular(10)
    

    void changeShape() {
        _width += 100;
        -height += 100;
        _color = Colors.red;
        _borderRadius = BorderRadius.circular(10);

        setState(() { });
    }

        Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Animated Container'),
                backgroundColor: Colors.red,
            ),
            body: Center (
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.bounceOut,
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                        color: _color,
                        borderRadius:_borderRadius
                    )
                )
            ),
            floatingActionButton: floatingActionButton(
                child: const Icon(Icons.play_circle_outline, size: 35),
                onPressed: () {

                },
            ),
        );
    }
}