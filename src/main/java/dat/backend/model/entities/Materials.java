package dat.backend.model.entities;

import dat.backend.model.services.Calculator;

import java.util.ArrayList;
import java.util.List;

public class Materials
{
    private final ArrayList<Item> materials = new ArrayList<>();
    private final Calculator calculator = new Calculator();
    private Item item;
    public Materials()
    {
    }

    public void addMaterials(Carport carport)
    {
        //Carport
        //under-stern til for og bag
        materials.add(item = new Item(1,"25x200 mm. trykimp. Brædt", carport.getWidth(),2,"stk",  "understernbrædder til for & bag ende"));
        //under-stern til siderne
        materials.add(item = new Item(1,"25x200 mm. trykimp. Brædt", carport.getLength(),2,"stk", "understernbrædder\ttil\tsiderne"));
        //over-stern til for og bag
        materials.add(item = new Item(2,"25x125 mm. trykimp. Brædt", carport.getWidth(),2,"stk","oversternbrædder\ttil\tforenden"));
        //over-stern til siderne
        materials.add(item = new Item(2,"25x125 mm. trykimp. Brædt", carport.getLength(),2,"stk","oversternbrædder\ttil\tsiderne"));
        //side-remme
        materials.add(item = new Item(5,"45x195 mm. spærtræ ubh.", carport.getLength(),2,"stk","Remme\ti\tsider,\tsadles\tned\ti\tstolper"));
        //front og bag-remme
        //tag-spær
        materials.add(item = new Item(5,"45x195 mm. spærtræ ubh.", carport.getWidth(),2+calculator.antalTagBredt(carport),"stk","Spær,\tmonteres\tpå\trem\t"));
        //stolper
        materials.add(item = new Item(6,"97x97 mm. trykimp. Stolpe", 300,calculator.antalStolper(carport),"stk","Stolper\tnedgraves\t90\tcm.\ti\tjord"));
        //vandbræt sider
        materials.add(item = new Item(7,"19x100 mm. trykimp. Brædt", carport.getLength(),4,"stk","vandbrædt\tpå\tstern\ti\tsider"));
        //vandbræt forende
        materials.add(item = new Item(7,"19x100 mm. trykimp. Brædt", carport.getWidth(),2,"stk","vandbrædt\tpå\tstern\ti\tforende"));
        //tag-plader
        materials.add(item = new Item(8,"Plastmo Ecolite blåtonet", carport.getLength(),6,"stk","tagplader\tmonteres\tpå\tspær\t"));

        //skruer og beslag
        //skruer til tag
        materials.add(item = new Item(9,"plastmo bundskruer 200 stk.", 0,3,"pakke","Skruer\ttil\ttagplader"));
        materials.add(item = new Item(10,"hulbånd 1x20 mm. 10 mtr.", 0,2,"rulle","Til\tvindkryds\tpå\tspær"));
        materials.add(item = new Item(11,"universal 190 mm højre", 0,calculator.antalStolper(carport),"stk","Til\tmontering\taf\tspær\tpå\trem"));
        materials.add(item = new Item(12,"universal 190 mm venstre", 0,calculator.antalStolper(carport),"stk","Til\tmontering\taf\tspær\tpå\trem"));
        materials.add(item = new Item(13,"4,5 x 60 mm. skruer 200 stk. ", 0,1,"pakke","Til\tmontering\taf\tstern&vandbrædt"));
        materials.add(item = new Item(14,"4,0 x 50 mm. beslagskruer 250", 0,3,"pakke","Til\tmontering\taf\tuniversalbeslag\t+\thulbånd"));

        materials.add(item = new Item(15,"bræddebolt 10 x 120 mm.", 0,calculator.stolpeBolt(carport),"stk","Til\tmontering\taf\trem\tpå\tstolper"));
        materials.add(item = new Item(16,"firkantskiver 40x40x11mm", 0,calculator.stolpeSkiver(carport),"stk","Til montering\taf\trem\tpå\tstolper"));
        materials.add(item = new Item(17,"4,5 x 70 mm. Skruer 400 stk.", 0,2,"pakke","til\tmontering\taf\tyderste\tbeklædning"));
        materials.add(item = new Item(18,"4,5 x 50 mm. Skruer 300 stk.", 0,2,"pakke","til\tmontering\taf\tinderste\tbeklædning"));

        //Skur
        if(carport.getShedLength() != 0 || carport.getShedWidth() != 0)
        {
            materials.add(item = new Item(3, "38x73 mm. Lægte ubh.", carport.getShedLength(), 2, "stk","til\tz\tpå\tbagside\taf\tdør\t"));
            materials.add(item = new Item(4, "45x95 mm. Reglar ub.", carport.getShedWidth(), 2, "stk","løsholter\ttil\tskur\tgavle"));
            materials.add(item = new Item(19, "stalddørsgreb 50x75", 0, 1, "sæt","Til\tlås\tpå\tdør\ti\tskur"));
            materials.add(item = new Item(20, "t hængsel 390 mm", 0, 2, "stk","Til\tskurdør"));
            materials.add(item = new Item(21, "vinkelbeslag 35", 0, calculator.stolpeBolt(carport), "stk","Til\tmontering\taf\tløsholter\ti\tskur"));
        }
    }

    public int id(Item item) {return item.getId();}
    public String name(Item item) {return item.getName();}
    public int length(Item item) {return item.getLength();}
    public int quantity(Item item) {return item.getQuantity();}
    public String unit(Item item) {return item.getUnit();}
    public String des(Item item) {return item.getDes();}

    public List<Item> getMaterials()
    {
        return materials;
    }


}





