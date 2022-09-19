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
        build: (pw.Context context) => pw.Column(children: [
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
              child: pw.Text('CDC - Report', style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)))),

          pw.Text('General'),
          pw.Table(
              border: pw.TableBorder.all(width: 0.2),

              children: [
             pw.TableRow(children: [ pw.Text('orbit type') ,  pw.Text(data.orbitType)]),
             pw.TableRow(children: [ pw.Text('satellite type') ,  pw.Text(data.satType)]),
             pw.TableRow(children: [ pw.Text('Size') ,  pw.Text(data.unitsSize.toString())]),
             pw.TableRow(children: [ pw.Text('Total power consumption') ,  pw.Text(data.powerConsumption.toString())]),
             pw.TableRow(children: [ pw.Text('RF power') ,  pw.Text(data.rfPower.toString())]),
             pw.TableRow(children: [ pw.Text('Antenna Gain') ,  pw.Text(data.gain.toString())]),
             pw.TableRow(children: [ pw.Text('payload mission') ,  pw.Text(data.payloadMission)]),
             pw.TableRow(children: [ pw.Text('weight') ,  pw.Text(data.weight)]),
             pw.TableRow(children: [ pw.Text('life time') ,  pw.Text(data.lifeTime.toString())]),
             pw.TableRow(children: [ pw.Text('cost') ,  pw.Text(data.cost.toString())]),
          ])


        ]),
      ),
    );
  }
}