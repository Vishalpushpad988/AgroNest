# AgroNest - Inventory & Billing Management System

 
![image](https://github.com/user-attachments/assets/733bb0c9-14da-4630-a445-90c2600d5b9e)


**AgroNest** is a modern, responsive, and feature-rich web-based inventory and billing management system designed specifically for agro-businesses like pesticide and seed shops. Built with ASP.NET Web Forms (VB.NET) and powered by modern front-end technologies, it provides a seamless single-page application (SPA) experience for efficient day-to-day operations.

---

## ✨ Features

AgroNest is packed with features to streamline business management:

*   **📊 Interactive Dashboard:** Get a real-time overview of your business with key metrics like daily sales, estimated profit, low-stock items, and items nearing expiry. Includes charts for weekly sales trends and top-selling products.
*   **🧾 Sales & Billing:** A fast and intuitive billing interface.
    *   Search customers and items dynamically.
    *   Real-time stock availability checks.
    *   **QR Code Scanning:** Use your device's camera to scan item barcodes/QR codes and add them to the bill instantly.
    *   Support for credit sales and customer ledger management.
    *   **PDF Invoice Generation:** Automatically generate and print professional, GST-ready invoices with a payment QR code.
*   **🛒 Purchase Management:** Easily record new stock purchases, manage supplier invoices, and update inventory with batch numbers and expiry dates.
*   **📦 Master Data Management:**
    *   **Item Master:** Manage your product catalog, including packing, company, HSN codes, purchase/selling rates, and minimum stock levels.
    *   **Supplier Master:** Maintain a directory of your suppliers.
    *   **Customer Master:** Manage your customer database and track their credit balances.
*   **📒 Customer Ledger (Khata):** A complete ledger system to track credit sales and receive payments from customers, maintaining a clear history of transactions.
*   **🏭 Stock Management:** View detailed, real-time stock reports. Search and filter items by name, company, or batch. Automatically highlights low-stock items.
*   **💸 Expense Tracking:** Record and categorize daily business expenses like rent, salaries, and utilities.
*   **📈 Comprehensive Reports:**
    *   **Daily & Monthly Reports:** Generate detailed business reports summarizing sales, purchases, profits, and expenses.
    *   **History View:** Access and manage a complete history of all sales and purchase transactions. Reprint or delete old invoices.
*   **⚙️ Customizable Settings:**
    *   Update your shop details (name, address, GSTIN) which appear on invoices.
    *   Set a custom UPI ID for generating dynamic payment QR codes.
    *   Personalize the application's look with a custom background image.
*   **🔐 Secure & Multi-User Ready:** Built with a user-based security model. All data is tied to the logged-in user, ensuring data privacy and integrity.

---

## 🛠️ Technology Stack

### Backend
*   **Framework:** ASP.NET Web Forms
*   **Language:** Visual Basic .NET (VB.NET)
*   **Database:** Microsoft SQL Server
*   **API Layer:** `[WebMethod]`s in ASP.NET for AJAX communication.
*   **JSON Serialization:** Newtonsoft.Json
*   **QR Code Generation:** QRCoder

### Frontend
*   **Framework/Library:** jQuery 3.x
*   **Styling:** Bootstrap 5, Font Awesome 6, Google Fonts
*   **UI/UX:** Custom CSS for a modern, single-page application (SPA) feel.
*   **Charting:** Chart.js for interactive dashboard charts.
*   **PDF Generation:** jsPDF & jsPDF-AutoTable for client-side PDF creation.
*   **QR Scanner:** html5-qrcode for in-browser QR code scanning.

---

## 🚀 Getting Started

Follow these steps to set up and run the project locally.

### Prerequisites
*   **Visual Studio** 2017 or later
*   **.NET Framework** 4.5 or later
*   **Microsoft SQL Server** (Express or any other edition)

### Installation Steps

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/AgroNest.git
    cd AgroNest
    ```

2.  **Database Setup:**
    *   Open SQL Server Management Studio (SSMS).
    *   Run the SQL script provided in `/Database/database_schema.sql` to create the necessary tables and initial user data.
    *   *Note: The script includes a default user (`admin`/`admin123`) for initial login.*

3.  **Configure Connection String:**
    *   Open the `Web.config` file in the root of the project.
    *   Locate the `<connectionStrings>` section.
    *   Update the `DefaultConnection` string with your SQL Server instance details (server name, database name, and credentials).
    ```xml
    <connectionStrings>
      <add name="DefaultConnection" 
           connectionString="Data Source=YOUR_SERVER_NAME;Initial Catalog=AgroNestDB;Integrated Security=False;User ID=your_sql_user;Password=your_sql_password;" 
           providerName="System.Data.SqlClient" />
    </connectionStrings>
    ```

4.  **Build and Run:**
    *   Open the `AgroNest.sln` file in Visual Studio.
    *   Restore the NuGet packages (it should happen automatically, but if not, right-click the solution and select "Restore NuGet Packages").
    *   Build the solution (Ctrl+Shift+B).
    *   Run the project (F5). The application will open in your default browser, starting with the `Login.aspx` page.

5.  **Login:**
    *   Use the default credentials to log in:
        *   **Username:** `admin`
        *   **Password:** `admin123`

---

## 🏗️ How It Works: The Application Flow

AgroNest is designed as a **Single-Page Application (SPA)**, where the page content is dynamically updated using JavaScript and AJAX, preventing full-page reloads and providing a faster user experience.

1.  **Initial Load:** The `Main.aspx` page loads once after login. It contains the HTML structure for the sidebar, top navigation, and all content sections (Dashboard, Sales, etc.), which are initially hidden except for the dashboard.
2.  **Navigation:** When a user clicks a link in the sidebar, a JavaScript function is triggered.
3.  **Content Switching:** The script hides the current content `div` and displays the `div` corresponding to the clicked link.
4.  **Data Fetching (AJAX):** To populate the displayed section with data, JavaScript makes an **AJAX call** to a specific `[WebMethod]` in the `Main.aspx.vb` code-behind file.
5.  **Backend Processing:** The VB.NET `WebMethod` executes business logic, queries the SQL Server database, and returns the data as a JSON object.
6.  **Rendering Data:** The JavaScript success callback receives the JSON data and dynamically renders it into the HTML (e.g., populating tables, updating charts, or filling form fields).

This client-side rendering approach makes the application highly responsive and efficient.

---

## 🤝 Contributing

Contributions are welcome! If you have suggestions for improvements or want to fix a bug, please feel free to:

1.  Fork the repository.
2.  Create a new branch (`git checkout -b feature/YourFeature` or `bugfix/YourBug`).
3.  Make your changes and commit them (`git commit -m 'Add some feature'`).
4.  Push to the branch (`git push origin feature/YourFeature`).
5.  Open a Pull Request.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
