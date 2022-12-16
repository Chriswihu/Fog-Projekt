package dat.backend.model.entities;

import dat.backend.model.services.Calculator;

import java.util.ArrayList;
import java.util.List;

public class MaterialList {
    Calculator calculator;
    Item item;

    public ArrayList<Item> materials = new ArrayList<>();

    public void CarportMaterials(Carport carport)
    {
        calculator = new Calculator();
        //Carport
        //under-stern til for og bag
        materials.add(item = new Item(1,"25x200 mm. trykimp. Brædt", carport.getWidth(),2,"stk"));
        //under-stern til siderne
        materials.add(item = new Item(1,"25x200 mm. trykimp. Brædt", carport.getLength(),2,"stk"));
        //over-stern til for og bag
        materials.add(item = new Item(2,"25x200 mm. trykimp. Brædt", carport.getWidth(),2,"stk"));
        //over-stern til siderne
        materials.add(item = new Item(2,"25x200 mm. trykimp. Brædt", carport.getLength(),2,"stk"));
        //side-remme
        materials.add(item = new Item(5,"45x195 mm. spærtræ ubh.", carport.getLength(),2,"stk"));
        //front og bag-remme
        materials.add(item = new Item(5,"45x195 mm. spærtræ ubh.", carport.getWidth(),2,"stk"));
        //tag-spær
        materials.add(item = new Item(5,"45x195 mm. spærtræ ubh.", carport.getWidth(),calculator.antalTagBredt(carport),"stk"));
        //stolper
        materials.add(item = new Item(6,"97x97 mm. trykimp. Stolpe", 300,calculator.antalStolper(carport),"stk"));
        //vandbræt sider
        materials.add(item = new Item(7,"19x100 mm. trykimp. Brædt", carport.getLength(),4,"stk"));
        //vandbræt forende
        materials.add(item = new Item(7,"19x100 mm. trykimp. Brædt", carport.getWidth(),2,"stk"));
        //tag-plader
        materials.add(item = new Item(8,"Plastmo Ecolite blåtonet", carport.getLength(),6,"stk"));

        //skruer og beslag
        //skruer til tag
        materials.add(item = new Item(9,"plastmo bundskruer 200 stk.", 0,3,"pakke"));
        materials.add(item = new Item(10,"hulbånd 1x20 mm. 10 mtr.", 0,2,"rulle"));
        materials.add(item = new Item(11,"universal 190 mm højre", 0,calculator.antalStolper(carport),"stk"));
        materials.add(item = new Item(12,"universal 190 mm venstre", 0,calculator.antalStolper(carport),"stk"));
        materials.add(item = new Item(13,"4,5 x 60 mm. skruer 200 stk. ", 0,1,"pakke"));
        materials.add(item = new Item(14,"4,0 x 50 mm. beslagskruer 250", 0,3,"pakke"));

        materials.add(item = new Item(15,"bræddebolt 10 x 120 mm.", 0,calculator.stolpeBolt(carport),"stk"));
        materials.add(item = new Item(16,"firkantskiver 40x40x11mm", 0,calculator.stolpeSkiver(carport),"stk"));
        materials.add(item = new Item(17,"4,5 x 70 mm. Skruer 400 stk.", 0,2,"pakke"));
        materials.add(item = new Item(18,"4,5 x 50 mm. Skruer 300 stk.", 0,2,"pakke"));


        //Skur
        materials.add(item = new Item(3,"38x73 mm. Lægte ubh.", carport.getShedLenght(),2,"stk"));
        materials.add(item = new Item(4,"45x95 mm. Reglar ub.", carport.getShedWidth(),2,"stk"));
        materials.add(item = new Item(19,"stalddørsgreb 50x75", 0,calculator.stolpeBolt(carport),"sæt"));
        materials.add(item = new Item(20,"t hængsel 390 mm", 0,calculator.stolpeBolt(carport),"stk"));
        materials.add(item = new Item(21,"vinkelbeslag 35", 0,calculator.stolpeBolt(carport),"stk"));
    }

    public List<Item> getMaterialList()
    {
        return materials;
    }

}





