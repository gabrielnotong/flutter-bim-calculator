# bmi_calculator

BMI Calculator

## Main point

It uses a function as a class(widget) property type.

```
class ReuseAbleCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReuseAbleCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
```


> usage:

`onPress` here, is our function property use in the ReuseAbleCard custom widget

```
...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIM CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseAbleCard(
                    color: gender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                ),
...

```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
