/*Positioned(
top: 365,
left: 40,
right: 40,
child: Container(
height: 80,
child: GestureDetector(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => RecyclePage()), // Replace with your RecyclePage widget
);
setState(() {
_isElevated = !_isElevated;
});
// Start a timer to reset the elevated state after a certain duration
Timer(const Duration(milliseconds: 300), () {
setState(() {
_isElevated = false;
});
});
_navigateToRecyclePage();
},
child: AnimatedContainer(
duration: const Duration(milliseconds: 100),
child: Center(
child: Text(
'RECYCLE',
style: TextStyle(
color: Colors.black,
fontSize: 30,
fontWeight: FontWeight.w900,
),
),
),

padding: EdgeInsets.all(25),
decoration: BoxDecoration(
color: Color(0xFF8CD8BF),
borderRadius: BorderRadius.circular(20),
boxShadow: _isElevated
? null
    : [
BoxShadow(
color: Colors.black38,
offset: Offset(-7, 7),
blurRadius: 3,
spreadRadius: 3,
),
BoxShadow(
color: Colors.white70,
offset: Offset(7, -7),
blurRadius: 3,
spreadRadius: 3,
),
],
),
),
),
),
)
*/
