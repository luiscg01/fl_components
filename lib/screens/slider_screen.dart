  
class SliderScreen extends StatefulWidget {

    const SliderScreen ({Key? key} : super(key:key));

  
}
class _SliderScreenState  extends State<SliderScreen> {

  double _sliderValue = 100;
    
      @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBar(
        title: const Text('sliders y checkers'),
      )
      body: Center(
        children: [
            Slider.adaptative(
                min: 50,
                max: 400,
                value: 100,
                activeColor: AppTheme.primary,
                value = _sliderValue,
                onChanged: (value) {
                   _sliderValue = value;
                   setState((){})
                }
            ),

            Image(
                image: NetworkImage(),
            )
        ]
      )
    );
  }
}
  
