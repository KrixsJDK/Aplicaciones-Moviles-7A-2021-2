/**
 * Cristhopher_Alcivar_Briones
 */
package com.example.diceroller
import com.example.diceroller.R
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast

/**
 * Esta actividad permite al usuario tirar un dado y
 * ver el resultado en la pantalla del emulador.
*/
class MainActivity : AppCompatActivity() {
    /**
     * Se llama a este método cuando se crea la actividad.
     */
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        /**
         * El botón se encuentra en el diseño
         */
        val rollButton: Button = findViewById(R.id.button)
        /**
         * Establezca una funcion clic en el botón para tirar los
         * dados cuando el usuario interactue con el botón
         */
        rollButton.setOnClickListener { rollDice() }

        /**
         * Primera lanzada de inicio de aplicacion para ayudar al
         * usuario a enteder el comportamiento del aplicativo.
         */
        rollDice()
    }

/**
 * Esta funcion nos permite tirar los dados y
 * actualiza la pantalla con el resultado.
*/
    private fun rollDice() {
    // Creamos un nuevo objeto en este caso llamado Dice
    // que contiene 6 caras diferentes para obtener
        val dice = Dice(6)
        val diceRoll = dice.roll()
    // Nos muestra el resultado actualizado por cada vez que lanzamos
    // el dado con nuestro boton pero ahora. Busca la imagen
    // correspondiente en ImageView en el apartado diseño.
        val diceImage: ImageView = findViewById(R.id.imageView)
    // Establecemos una condicion para buscar la imagen segun el
    // resultado obtenido del 1 al 6, para mostarlo.
            val drawableResource = when (diceRoll) {
                1 -> R.drawable.dice_1
                2 -> R.drawable.dice_2
                3 -> R.drawable.dice_3
                4 -> R.drawable.dice_4
                5 -> R.drawable.dice_5
                else -> R.drawable.dice_6
            }
            /**
             *Actualizar ImageView con el ID de recurso extraíble
             * correcto
             */
            diceImage.setImageResource(drawableResource)

            /**
             * Se concentra en estar actualizando constantemente
             * la descripcion de la imagen
             */
            diceImage.contentDescription = diceRoll.toString()
    }
}

/**
 * Esta clase nos ayuda a generar una lanzada de dados
 * con un resultado aleatorio en un rango del 1 al 6.
 */
class Dice(private val numSides: Int) {
    fun roll(): Int {
        return (1..numSides).random()
    }
}