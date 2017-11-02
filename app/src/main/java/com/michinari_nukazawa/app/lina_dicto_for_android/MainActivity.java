package com.michinari_nukazawa.app.lina_dicto_for_android;

import android.graphics.Color;
import android.os.Build;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        WebView webView1 = (WebView)findViewById(R.id.webView1);
        webView1.setBackgroundColor(Color.TRANSPARENT);
        webView1.loadUrl("file:///android_asset/lina_dicto/index.html");

        WebSettings webSettings = webView1.getSettings();
        webSettings.setJavaScriptEnabled(true);

        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            webView1.setWebContentsDebuggingEnabled(true);
        }
    }
}
