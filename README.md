## Configuración del Proyecto

1. **Clonar el Repositorio:**
   ```
   git clone https://github.com/jcrisarh/embedDAIoT.git
   cd embedDAIoT
   ```

3. **Configurar el Entorno de Desarrollo ESP-IDF:**  
- Descarga e instala el ESP-IDF según las instrucciones en [ESP-IDF Programming Guide](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/get-started/index.html).
- Configura las variables de entorno necesarias según tu sistema operativo.

3. **Conectar el Sensor MQ135 al ESP32:**  
- Conecta los pines del sensor MQ135 al ESP32 según las especificaciones del fabricante. Por ejemplo:
  ```
  Sensor MQ135   ->   ESP32
  VCC            ->   3.3V
  GND            ->   GND
  OUT            ->   Pin GPIO
  ```

4. **Configurar las Credenciales de Conexión al Broker MQTT:**
   - Abre una terminal en la carpeta del proyecto.
   - Ejecuta el siguiente comando:
   ```
  idf.py menuconfig
  ```
- Ingresa la dirección del broker MQTT, el puerto y las credenciales de autenticación según corresponda.

5. **Certificados TLS:**  
- Asegúrate de tener los certificados TLS necesarios para una comunicación segura con el broker MQTT.
- Configura los certificados en el proyecto según las instrucciones del ESP-IDF.

6. **Compilar y Cargar el Firmware en el ESP32:**  
- Abre una terminal en la carpeta del proyecto.
- Ejecuta el siguiente comando para compilar el firmware:
  ```
  idf.py build
  ```
- Una vez compilado, carga el firmware en el ESP32 con el siguiente comando:
  ```
  idf.py -p /dev/ttyUSB0 flash
  ```
Asegúrate de reemplazar `/dev/ttyUSB0` con el puerto serial correcto del ESP32 en tu sistema.

