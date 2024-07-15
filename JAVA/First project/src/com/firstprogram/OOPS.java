package com.firstprogram;

import java.util.jar.Attributes.Name;

// class Pen{
//     String color;
//     String type;

//     public void write(){
//         System.out.println("write");
//     }

//     public void color(){
//         System.out.println(this.color);
//     }
// }

// public class OOPS{
//     public static void main(String[] args) {
//         Pen pen1 = new Pen();// By default JAVA made a constuctor for this

//         pen1.color="black";
//         pen1.type="ballpoint";
//         pen1.write();
//         pen1.color();
//     }
// }


// 1. Polymorphism -->> Same method/function, but used different times. It refers to many forms, also can be used in Inheritance, usinf function of same class to its sub-class. Same method will be differentiiated either by parameters or return type defined.

// @SuppressWarnings("unused")
// class Student{
//     String name;
//     int age;

//     public void printInfo(String name){
//         System.out.println("Name is : "+name);
//     }
//     public void printInfo(int age){
//         System.out.println("Age is : "+age);
//     }
//     public void printInfo(String name , int age){
//         System.err.println(name + " " + age);
//     }
// }

// public class Polymorphism{
//     public static void main(String[] args) {
//         Student obj = new Student();
//         // obj.name="John";
//         // obj.age=25;
//         obj.printInfo(34);
//         obj.printInfo("John");
//         obj.printInfo("Alex", 35);
//     }
// }

// 2. Inheritance -> 

// @SuppressWarnings("unused")
// class Car{
//     protected String carName = "Ford";
//     public void honk(){
//         System.out.println("Honk");
//     }
// }

// class Modelname extends Car{
//     private String modelName = "Mustang";
//     public static void main(String[] args) {
//         Modelname car = new Modelname();
//         car.honk();

//         System.out.println(car.carName + " " + car.modelName);
//     } 
// }

// Getters and setters for calling private access modifier in another class
// @SuppressWarnings("unused")
// class first{
//     private String password;

//     public void setPassword(String password){
//         this.password = password;
//     }

//     public String getPassword(){
//         return this.password;
//     }
// }

// public class Password{
//     public static void main(String[] args) {
//         first obj = new first();

//         obj.setPassword("P@ssw0rd");
//         obj.getPassword();
//         System.out.println(obj.getPassword());
//     }
// }

//Abstraction -->
// @SuppressWarnings("unused")
// abstract class Animal{
//     abstract void honk();
//     public void eat(){
//         System.out.println("Eats");
//     }
// }
// class Horse extends Animal{
//     public void honk(){
//         System.out.println("Horese honks");
//     }
// }
// class Chicken extends Animal{
//     public void honk(){
//         System.out.println("Chicken honks");
//     }
// }


// public class OOPS {
//     public static void main(String[] args) {
//         Horse horse = new Horse();
//         Chicken chicken = new Chicken();
//         horse.honk();
//         chicken.honk();
//         horse.eat();
//         chicken.eat();
//     }
// }

//Interfaces --> Pure abstract class, also allows Multiple Inheritance

// interface Animal{
//     void eat();
//     void walk();
// }

// interface Herbivore{

// }

// class Horse implements Animal, Herbivore{  // Multiple Inheritance
//     public void eat(){
//         System.out.println("horse eats");
//     }
//     public void walk(){
//         System.out.println("horse walks");
//     }
// }

// public class OOPS{
//     public static void main(String[] args) {
//         Horse horse = new Horse();
//         horse.eat();
//         horse.walk();
//     }
// } 

