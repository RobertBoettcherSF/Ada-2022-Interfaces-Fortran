pragma Ada_2022;
with Interfaces.Fortran;
package body Topic_Demo is
   function Available return Boolean is
      F : constant Interfaces.Fortran.Fortran_Character :=
        Interfaces.Fortran.To_Fortran ("Ada");
   begin
      return Interfaces.Fortran.To_Ada (F) = "Ada";
   end Available;
end Topic_Demo;
