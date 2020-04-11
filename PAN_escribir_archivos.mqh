//+------------------------------------------------------------------+
//|                                         PAN_escribir_arhivos.mqh |
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

#include <PAN/PAN_randoms.mqh>

void PAN_escribir_archivos_starInfo(string datos_row,string archivo_nombre){
   
   int file_handle=FileOpen("start_info_"+archivo_nombre+".txt",FILE_READ|FILE_WRITE|FILE_COMMON);
   //Comment(file_handle); 
    
   FileSeek(file_handle,0,SEEK_END);
   //FileWriteString(file_handle,IntegerToString(HistoryOrdersTotal())+"\r\n");
   //FileWriteString(file_handle,DoubleToString(ptrade.GetPositionCommission())+"\r\n");
   
   FileWriteString(file_handle,datos_row);
   FileClose(file_handle);                  
}

void PAN_escribir_archivos_endinfo(string datos_row,string archivo_nombre){
               
   int file_handle=FileOpen("end_info_"+archivo_nombre+".txt",FILE_READ|FILE_WRITE|FILE_COMMON);
   
   //Comment(file_handle); 
          
   //GetPositionProperties();
   
   
   
   FileSeek(file_handle,0,SEEK_END);
   
   FileWriteString(file_handle,datos_row);
   //FileWriteString(file_handle,DoubleToString(deal_profit)+"\r\n");
   FileClose(file_handle);
}