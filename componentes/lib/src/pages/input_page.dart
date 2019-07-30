import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _firstname = '';
  String _email     = '';
  String _password  = '';
  String _date      = '';
  String _optionSelected = 'Iron-man';
  List<String> _options = ['Iron-man', 'Captain America', 'Thor'];
  TextEditingController dateEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Inputs'),centerTitle: true,),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        children: <Widget>[
          _createFirstnameInput(),
          
          Divider(),
          SizedBox(height: 10.0,),
          _createEmailInput(),
          
          Divider(),
          SizedBox(height: 10.0,),
          _createPasswordInput(),
          
          Divider(),
          SizedBox(height: 10.0,),
          _createDatepickerInput(),
          
          Divider(),
          SizedBox(height: 10.0,),
          _createDropdownInput(),

          Divider(),
          SizedBox(height: 10.0,),
          _createPersonData(),
        ],
      ),
    );
  }

  Widget _createFirstnameInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letters: ${_firstname.length}'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Your name',
        helperText: 'Only your firstname',
        icon: Icon(Icons.account_circle),
        hintText: 'Here add your firstname',
      ),
      onChanged: (value) {
        setState(() {
         _firstname = value; 
        });
      },
    );
  }

  Widget _createEmailInput() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        helperText: 'Add your email',
        labelText: 'Email',
        hintText: 'Here add your email',
        prefixIcon: Icon(Icons.email)
      ),
      onChanged: (value) => setState(() {
          _email = value;
        }),
    );

  }

  Widget _createPersonData() {

    return ListTile(
      leading: Icon(Icons.account_circle),
      title: Text('firstname is $_firstname'),
      subtitle: Text(_email),
      trailing: Text(_password),
    );

  }

  Widget _createPasswordInput() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: Icon(Icons.lock),
        labelText: 'Password',
        helperText: 'Add your password',
        hintText: 'Your password here'
      ),
      onChanged: (value) => setState(() => _password = value),
    );

  }

  Widget _createDatepickerInput() {

    return TextField(
      controller: dateEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Date',
        hintText: 'Select a date',
        prefixIcon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );

  }

  _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime( DateTime.now().year ),
      lastDate: DateTime( DateTime.now().add( Duration( days: 365 ) ).year ),
    );

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        dateEditingController.text = _date;
      });
    }

  }

  Widget _createDropdownInput() {

    return DropdownButton(
      //set items in example 1
      // items: [
      //   DropdownMenuItem(
      //     child: Text('Volar'),
      //     value: 'Volar',
      //   ),
      //   DropdownMenuItem(
      //     child: Text('Vision de rayos X'),
      //     value: 'Vision de rayos X',
      //   ),
      //   DropdownMenuItem(
      //     child: Text('Super fuerza'),
      //     value: 'Super fuerza',
      //   ),
      // ],
      value: _optionSelected,
      items: _avegersOptions(),
      onChanged: (value){
        print('--------');
        print(value);
        setState(() {
         _optionSelected = value; 
        });
      },
    );

  }

  _avegersOptions() {
    //list need to be explicit of dropdown string but if some would be strings and other number not to stay dynamci
    //in this case _optionsSelected is String as the value selected because the list if all of strings
    // but if it will have integers and strings o doubles ect it would be to set as dynamic _selectedOption = 'option'
    //or var _selectedOption = 'option'
    //it not affect the functunallity only applies to get strong type but if you set _selectedOption as string it will cause and
    //error for the strong type
    List <DropdownMenuItem<String>> list = List();
    //with for each loop
    // _options.forEach((value){
    //   list.add( DropdownMenuItem(
    //     child: Text(value),
    //     value: value,
    //   ) );
    // });
    //with map function
    _options.map( (value){
      list.add(DropdownMenuItem(
        child: Text(value),
        value: value,
      ));
    }).toList();
    //print(list);
    return list;

  }

}