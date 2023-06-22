class Odontologo {
  final int id;
  final String nombre;
  final String apellido;
  final String experiencia;
  final String ciudad;
  bool read;

  Odontologo({
    required this.id,
    required this.nombre,
    required this.apellido,
    required this.experiencia,
    required this.ciudad,
    this.read = false,
  });
}
