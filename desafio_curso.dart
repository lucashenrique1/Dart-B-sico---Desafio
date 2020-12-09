void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  int pacientesMaisDeVinte;
//
  for (var i = 0; i < pacientes.length; i++) {
    var idadeNum1 = int.parse(pacientes[i].split('|')[1]);
    if (idadeNum1 > 20) {
      pacientesMaisDeVinte = idadeNum1;
    }
  }
  print('${pacientesMaisDeVinte.bitLength} pacientes tem mais que 20 anos');
  print('Pacientes da mesma familia \n');
  print('Familia Rahman:');

  String familias;
  String sobreNome;
  var rahman;
  for (var i = 0; i < pacientes.length; i++) {
    familias = pacientes[i].split('|')[0];
    sobreNome = familias.split(' ')[1];
    if (sobreNome == 'Rahman') {
      rahman = familias;
      print(rahman);
    }
  }
  print(" ");
  print('Familia Silva');
  for (var i = 0; i < pacientes.length; i++) {
    familias = pacientes[i].split('|')[0];
    sobreNome = familias.split(' ')[1];
    if (sobreNome == 'Silva') {
      rahman = familias;
      print(rahman);
    }
  }
  print(" ");
  print('Familia Verne');
  for (var i = 0; i < pacientes.length; i++) {
    familias = pacientes[i].split('|')[0];
    sobreNome = familias.split(' ')[1];
    if (sobreNome == 'Verne') {
      rahman = familias;
      print(rahman);
    }
  }
}
