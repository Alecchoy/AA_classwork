const

1. can be declared and assigned ONLY once
   aka it must be initialized at the of declaration 
2. const is block scoped 
3. reassign is not allowed
4. 

scope: "the scope of a variable is the region of a program where it can be accessed"

function scopeExample(){
    const x = "x";
    if (true) {
        const y = "y";
    }
    {
        const z = "z"
        // print it to the console aka terminal
    }
}


//What will happen here?
function howToConst() {
    const username = 'Harold';

    if (true) {
        const username = 'Url';
        console.log(username);
    }
    console.log(username);
}


What about here?
function howToConst2() {
    const username = 'Harold';

    if (true) {
        console.log(username);
    }

    console.log(username);
}
howToConst2();

What about here?
function howToConst3() {
    if (true) {
        const username = 'Harold';
        console.log(username);
    }
    console.log(username);
}
howToConst3();

let 1. let can only be declared only once 


let hash = {
    fn1 : function doubler(){
        return num * 2 
    },
    fn2: function century(){
        return num * 100
    }
}

hash.fn2(45);

let toyota = newCar("toyota", )

Car.prototype.isNew = function(){
    if (this.year >= 2020){
        return true;
    }else {
        return false;
    }
}

toyota.isNew();

 function logElement(el){
     console.log(el)
 }

 const arr = [1,2,3];

 arr.forEach(function(el){

 })




 function hello(){

 }
 // const hello = function() {}

 const hello = ()=>{

 }



 const doubler = function(el){
     return el * 2;
 }

 const decade = function(el){
     return el * 10;
 }

 const century = function(el){
     return el * 100; 
 }

 function doMathWithNumbers (num, func){
    return func(num)
 }

 doMathWithNumbers(5, doubler)



 const singers = function(){
     const popStars = ["the weekend"]
     return function(newSinger){
         popStars.push(newSinger);
         return `I have listened to ${popStars.join(' and ')}`
     }
 }

 let returnFunc = singers();
 returnedFunc();

 singers()("taylor swift")

 const singers2 = function(artistArray){
     return function(newStar){
         artistArray.push(newStar);
         return `I have listened to ${artistArray.join(' and ')}`
     }
 }


 singers2("[zendaya]")("bazzi")