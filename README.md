# 💱 Currency Converter Web Application

An elegant and responsive **Java Servlet-based web application** for converting currencies using real-time exchange rates. Built with **Java Servlets**, **JSP**, and a modern **Bootstrap-powered UI**, this tool enables users to convert amounts between popular world currencies.

---

## 🚀 Features

- 🌐 Real-time currency exchange using [ExchangeRate API](https://www.exchangerate-api.com/)
- 🎨 Beautiful glassmorphism-style responsive interface
- 🔁 Converts between USD, EUR, INR, GBP, and JPY
- 🧠 Handles conversion logic via Java Servlets
- 📄 Displays result on the **same page** without redirection
- ❌ Shows error messages on API failure or invalid input

---

## 🛠️ Requirements

- **Java JDK** 11 or higher  
- **Apache Tomcat** 10.x (Jakarta EE 9+ compatible)  
- **Eclipse IDE** (or any Java IDE with servlet support)  
- **Jakarta Servlet API** version 6.0.0  
- Free API key from [ExchangeRate API](https://www.exchangerate-api.com/)

---

## 📁 Project Structure

CurrencyConverterWeb/

├── `.classpath`  
├── `.project`  
├── `.settings/`  
│   └── `org.eclipse.jdt.core.prefs`  
├── `src/`  
│   └── `main/`  
│       └── `java/`  
│            └── `com/`  
│                └── `currency/`  
│                     └── `ConverterServlet.java`  
├── `WebContent/`  
│   ├── `index.jsp`    
│   ├── `css/`  
│   │   └── `style.css`  
│   └── `WEB-INF/`  
│       ├── `web.xml`  
│       └── `lib/` *(optional)*  
└── `README.md`  


---

## 🌐 How It Works

1. User enters amount and selects source and target currencies on **index.jsp**
2. The form submits to `ConverterServlet` via `POST`
3. The servlet fetches live exchange rates from **ExchangeRate API**
4. It calculates the converted amount and updates the same JSP page with the result
5. Error messages are shown if conversion fails or API key is invalid

---

## 🎨 UI Snapshot (Design Overview)

- Full-width Bootstrap container with a modern white card interface  
- Custom-styled select boxes for currency choice  
- Clean glassmorphism design with box shadows and blur  
- Responsive for desktop and mobile  
- Inline error or success message displays after form submission

---

## ▶️ Running the Project

1. Import the project into **Eclipse** as a Dynamic Web Project  
2. Configure **Apache Tomcat 10+** as the runtime server  
3. Replace the placeholder API key in `ConverterServlet.java`:

```java
private static final String API_KEY = "YOUR_API_KEY"; // Replace this!
```
4. Deploy the project on Tomcat
5. Open your browser and navigate to:
`http://localhost:8080/CurrencyConverter/`
6. Use the form to convert currency and view the result on the same page

---

## 🙋‍♀️ Author

Developed by **Rohini363**  
GitHub: [Check Git Repo](https://github.com/Rohini363/FileEncryptionDecryption)
