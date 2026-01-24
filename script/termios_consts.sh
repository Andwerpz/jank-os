cat > /tmp/show_vmin.c <<'EOF'
#include <stdio.h>
#include <termios.h>
int main() {
  printf("VMIN=%d VTIME=%d NCCS=%d\n", VMIN, VTIME, NCCS);
  return 0;
}
EOF
cc /tmp/show_vmin.c -o /tmp/show_vmin && /tmp/show_vmin
