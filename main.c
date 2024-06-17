#include "GfxLib.h"  // Assurez-vous que ce chemin est correct
#include "demineur.h"  // Assurez-vous que ce chemin est correct

int main(int argc, char **argv) {
    initialiseGfx(argc, argv);
    prepareFenetreGraphique("Démineur Facile", 800, 600);
    lanceBoucleEvenements();
    return 0;
}

