//+------------------------------------------------------------------+
//|                                                  PAN_randoms.mqh |
//|                                    Copyright 2020, Jhon Panqueva |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, Jhon Panqueva"
#property link      "https://www.mql5.com"
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+


string PAN_randoms_getRandomString(){
   
   
      int n = MathRand();
      string name = "";
      for(int x=1;x<=7; x++)
      {
         name += PAN_randoms_getRandomCaracter();
      } 
      
      return (name+IntegerToString(n));

   

}

string PAN_randoms_getRandomCaracter(){
      
      int n = MathRand();
      
      if(n<6553){
      return ("A");
      }else if(n<13106){
      return ("T");
      }
      else if(n<6553){
       return ("X");
      }
      else if(n<19659){
       return ("H");
      }
      else if(n<26212){
       return ("J");
      }else{
       return ("Z");
      }

      
   
}