import 'dart:io';
import 'package:pdf/widgets.dart' as pw;
import 'general.dart';

class PDF{
  final pdf = pw.Document();
  final General data;

  PDF(this.data);

  Future<void> export() async {
    draw();
    final file = File('export/file.pdf');
    await file.writeAsBytes(await pdf.save());
  }

  void draw(){
    var logoAzhr = pw.MemoryImage(File('assests/images/logos/azhar.png').readAsBytesSync());
    var logoAlex = pw.MemoryImage(File('assests/images/logos/alex.png').readAsBytesSync());
    var logoEGSA = pw.MemoryImage(File('assests/images/logos/egsa.png').readAsBytesSync());
    var logoEUT = pw.MemoryImage(File('assests/images/logos/eut.png').readAsBytesSync());

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
          pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
              children: [
                pw.Image(logoEGSA,width: 60),
                pw.Image(logoAzhr,width: 40),
                pw.Image(logoEUT,width: 80),
                pw.Image(logoAlex,width: 80)
              ]
          ),
          pw.Center(child: pw.Padding(
            padding: const pw.EdgeInsets.all(10),
              child: pw.Text('CDC - Report', style: pw.TextStyle(fontSize: 20)))),

          pw.Row(children: [pw.Padding(
            child: pw.Text('General'),
            padding: const pw.EdgeInsets.only(bottom: 4)
          )]),
          pw.Table(
              border: pw.TableBorder.all(width: 0.2),
              children: [
             pw.TableRow(children: [ cell('Orbit type') ,  cell(data.orbitType)]),
             pw.TableRow(children: [ cell('Satellite type') ,  cell(data.satType)]),
             pw.TableRow(children: [ cell('Size') ,  cell(data.unitsSize.toString())]),
             pw.TableRow(children: [ cell('Total power consumption') ,  cell(data.powerConsumption.toString())]),
             pw.TableRow(children: [ cell('RF power') ,  cell(data.rfPower.toString())]),
             pw.TableRow(children: [ cell('Antenna Gain') ,  cell(data.gain.toString())]),
             pw.TableRow(children: [ cell('Payload mission') ,  cell(data.payloadMission)]),
             pw.TableRow(children: [ cell('Weight') ,  cell(data.weight)]),
             pw.TableRow(children: [ cell('Life time') ,  cell(data.lifeTime.toString())]),
             pw.TableRow(children: [ cell('Cost') ,  cell(data.cost.toString())]),
          ]),

              pw.SizedBox(height: 10),

              pw.Row(children: [pw.Padding(
                  child: pw.Text('OBC'),
                  padding: const pw.EdgeInsets.only(bottom: 4)
              )]),
              pw.Table(
                  border: pw.TableBorder.all(width: 0.2),
                  children: [
                    pw.TableRow(children: [ cell('orbit type') ,  cell(data.orbitType)]),
                    pw.TableRow(children: [ cell('satellite type') ,  cell(data.satType)]),
                    pw.TableRow(children: [ cell('Size') ,  cell(data.unitsSize.toString())]),
                    pw.TableRow(children: [ cell('Total power consumption') ,  cell(data.powerConsumption.toString())]),
                    pw.TableRow(children: [ cell('RF power') ,  cell(data.rfPower.toString())]),
                    pw.TableRow(children: [ cell('Antenna Gain') ,  cell(data.gain.toString())]),
                    pw.TableRow(children: [ cell('payload mission') ,  cell(data.payloadMission)]),
                    pw.TableRow(children: [ cell('weight') ,  cell(data.weight)]),
                    pw.TableRow(children: [ cell('life time') ,  cell(data.lifeTime.toString())]),
                    pw.TableRow(children: [ cell('cost') ,  cell(data.cost.toString())]),
                  ]),


        ]),
      ),
    );
  }

  pw.Widget cell(val){
    return pw.Padding(
      child: pw.Text(val, style: const pw.TextStyle(fontSize: 10)),
      padding: const pw.EdgeInsets.only(left: 5, top: 1, bottom: 1),
    );
  }

}