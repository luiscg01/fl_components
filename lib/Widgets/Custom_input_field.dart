class CustomInputField extends StatelessWidget {

    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? icon;
    final IconData? suffixIcon;
    final TextInputType? keyboardType;
    final bool? obscureText;

    const CustomInputField ({
        Key?
        this.hintText,
        this.helperText,
        this.labelText,
        this.icon,
        this.suffixIcon,
        this.keyboardType,
        this.obscureText
        key,
    }) super (Key: Key);
  Widget build(BuildContext) {
    return  TextField{
      autofocus: true,
      initialValue: 'Fernando Herrera',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
          print('value: $value');
      },
      validator:(value) {
          if(value == null) {
            return 'Este campo es requerido';
            return value.length <3 ?  'Minimo de 3 letras' : null;
          },
      autoValidateMode: AutoValidateMode.onUserInteraction,
      decoration: InputDecoration(
      hintText: hintText,
      labelText:labelText,
      helperText: helperText,
      suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
      icon: icon == null ? null : Icon(icon), 
      counterText: '3 caracteres',
      suffixIcon: Icon(Icons.group_outlined),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))            
      )
    )
   },
  }
 }
}                            


