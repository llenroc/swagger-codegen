--  Swagger Petstore
--  This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
--
--  OpenAPI spec version: 1.0.0
--  Contact: apiteam@swagger.io
--
--  NOTE: This package is auto generated by the swagger code generator 2.3.0-SNAPSHOT.
--  https://github.com/swagger-api/swagger-codegen.git
--  Do not edit the class manually.
with Swagger.Streams;
with Ada.Containers.Vectors;
package Samples.Petstore.Models is


   --  ------------------------------
   --  An uploaded response
   --  Describes the result of uploading an image resource
   --  ------------------------------
   type ApiResponse_Type is
     record
       Code : Integer;
       P_Type : Swagger.UString;
       Message : Swagger.UString;
     end record;

   package ApiResponse_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => ApiResponse_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ApiResponse_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ApiResponse_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ApiResponse_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ApiResponse_Type_Vectors.Vector);


   --  ------------------------------
   --  Pet catehgry
   --  A category for a pet
   --  ------------------------------
   type Category_Type is
     record
       Id : Swagger.Long;
       Name : Swagger.UString;
     end record;

   package Category_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Category_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Category_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Category_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Category_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Category_Type_Vectors.Vector);


   --  ------------------------------
   --  Pet Tag
   --  A tag for a pet
   --  ------------------------------
   type Tag_Type is
     record
       Id : Swagger.Long;
       Name : Swagger.UString;
     end record;

   package Tag_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Tag_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Tag_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Tag_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Tag_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Tag_Type_Vectors.Vector);


   --  ------------------------------
   --  a User
   --  A User who is purchasing from the pet store
   --  ------------------------------
   type User_Type is
     record
       Id : Swagger.Long;
       Username : Swagger.UString;
       First_Name : Swagger.UString;
       Last_Name : Swagger.UString;
       Email : Swagger.UString;
       Password : Swagger.UString;
       Phone : Swagger.UString;
       User_Status : Integer;
     end record;

   package User_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => User_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in User_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in User_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out User_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out User_Type_Vectors.Vector);


   --  ------------------------------
   --  Pet Order
   --  An order for a pets from the pet store
   --  ------------------------------
   type Order_Type is
     record
       Id : Swagger.Long;
       Pet_Id : Swagger.Long;
       Quantity : Integer;
       Ship_Date : Swagger.Datetime;
       Status : Swagger.UString;
       Complete : Boolean;
     end record;

   package Order_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Order_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Order_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Order_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Order_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Order_Type_Vectors.Vector);


   --  ------------------------------
   --  a Pet
   --  A pet for sale in the pet store
   --  ------------------------------
   type Pet_Type is
     record
       Id : Swagger.Long;
       Category : Samples.Petstore.Models.Category_Type;
       Name : Swagger.UString;
       Photo_Urls : Swagger.UString_Vectors.Vector;
       Tags : Samples.Petstore.Models.Tag_Type_Vectors.Vector;
       Status : Swagger.UString;
     end record;

   package Pet_Type_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Positive,
                                  Element_Type => Pet_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Pet_Type);

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Pet_Type_Vectors.Vector);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Pet_Type);

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Pet_Type_Vectors.Vector);


end Samples.Petstore.Models;
