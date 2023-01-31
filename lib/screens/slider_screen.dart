  
class SliderScreen extends StatefulWidget {

    const SliderScreen ({Key? key} : super(key:key));

  
}
class _SliderScreenState  extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;
    
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

            Checkbox(
              value: _sliderEnabled,
              onChanged: (value) { }
              _sliderEnabled =value ?? true;
              setState((){})
            ),

            CheckboxListTittle(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value:  _sliderEnabled,
              onChanged: (value) =>setState(() {_sliderEnabled = value ?? true;})
            )

            SwitchListTitle.adaptative(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) => setState((){_sliderEnabled = value ?? true;})
            )
            
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: NetworkImage(''),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
        ]
      )
    );
  }
}
  
