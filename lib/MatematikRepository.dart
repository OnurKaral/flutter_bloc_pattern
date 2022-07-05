class MatematikRepository {
  int topla(String  sayi1, String sayi2) {
    int sayi1int = int.parse(sayi1);
    int sayi2int = int.parse(sayi2);
    return(sayi1int + sayi2int);
  }
  int carp(String  sayi1, String sayi2) {
    int sayi1int = int.parse(sayi1);
    int sayi2int = int.parse(sayi2);
    return(sayi1int * sayi2int);
  }
}