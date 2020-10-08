# Encuentro :two_women_holding_hands:

Pequeña utilidad para activar y desactivar el micrófono o la cámara en encuentros virtuales. Busca la ventana correspondiente y cambia el estado del micrófono o cámara, según se pida.

Cobra mucho más sentido cuando se la dispara desde algún otro dispositivo que tengamos a mano (celular, tablet, control remoto, auriculares, etcétera).

### ¿Cómo se usa?

```
$ encuentro mic
$ encuentro video
```

### ¿Qué plataformas soporta?

Por ahora:
* Google Meet
* Zoom Meetings

### Ideas de integración

* Con un dispositivo Android, creando un comando en la aplicación [KDE Connect](https://kdeconnect.kde.org/).
* Con algún auricular que tenga botón de Play/Pause, usando [AutoKey](https://github.com/autokey/autokey) para ejecutar el script al presionarlo.

### ¿Cómo funciona?

En esencia, utiliza [xdotool](https://www.semicomplete.com/projects/xdotool/) para buscar una ventana con cierto nombre y luego envía la combinación de teclas que realiza la acción solicitada en esa aplicación. 

Por ejemplo, si pedimos apagar el micrófono y estamos usando Google Meet, buscará una ventana cuyo nombre comience con `Meet - ` y enviará la combinación de teclas <kbd>Control</kbd> + <kbd>D</kbd>.
