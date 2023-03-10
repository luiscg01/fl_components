class AppTheme {

static const  Color primary = Colors.indigo;
static final ThemeData lightTheme = ThemeData.ThemeData.dark().copyWith(
        primaryColor: Colors.indigo

        appBarTheme: AppBarTheme(
          color: primary,
          elevation: 0
        ),
        

        textButtonTheme: textButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.indigo)
        )

        floatingActionButtomTheme: const  floatingActionButtomTheme(
          backgroundColor: primary,
          elevation: 0,
        ),

        elevatedButtomTheme: elevatedButtomThemeData(
              style: ElevatedButtom.styleForm(
              primary: Color.indigo,
              shape: const StadiumBorder  (),
              elevation: 0
            )
        ),

        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineBorder(
            borderSide: BorderSide(color: primary)
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: R)
          )
        ),
        focusedBorder: OutlineBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: R;)
        )

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: R;)    
        )
          
      );


}