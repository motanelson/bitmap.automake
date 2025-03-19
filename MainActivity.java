package p1.c1.app;
import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import android.app.*;
import android.os.*;
import android.app.AlertDialog;
import android.app.Activity;
import android.widget.Toast;
import java.util.Random;

public class MainActivity extends Activity
{
    private TextView textView;
    private final Handler handler = new Handler();
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss", Locale.getDefault());
    
    private final Runnable updateTimeRunnable = new Runnable() {
        
        public void run() {
            Random r = new Random();
            
            int n=0;
            int i =r.nextInt(9);
            String s = "";
            for(n=0;n<8;n++){
                     i =r.nextInt(9);
                     s=s+Integer.toString(i);
                     
            }
            textView.setText(s);
            handler.postDelayed(this, 10000); // Atualiza a cada segundo
        }
    };
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        textView = (TextView)findViewById(R.id.textView);
        handler.post(updateTimeRunnable);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        handler.removeCallbacks(updateTimeRunnable);
    }
}
