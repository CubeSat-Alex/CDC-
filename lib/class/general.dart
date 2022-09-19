
class General{
   String orbitType = 'LEO';
   String satType = 'CubeSAT';
   int canRadius= 2;
   String unitsSize= '2U';
   int powerConsumption = 500;
   int rfPower = 600;
   int gain = 30;
   String payloadMission = 'Weather';
   String weight= '3 KG';
   int lifeTime = 5;
   int cost = 3000;

  // subsystem
  late OBCSub obc;
  late CommunicationSub comm;
  late PayloadSub payload;


}

class OBCSub{

}

class CommunicationSub{

}

class PayloadSub{

}