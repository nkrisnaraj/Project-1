
# EliteZ: Inventory Fulfillment and Distribution Platform

EliteZ is a B2B e-commerce and inventory management platform that connects companies (manufacturers) with shop owners (retailers) for product distribution, order management, and analytics.

## Features
- Multi-role system: Admin, Company, Customer (Shop)
- Registration and approval workflow for companies and shops
- Product management (add, update, delete, view)
- Shopping cart and order placement
- Invoice and payment processing
- Order tracking and delivery management
- Messaging and notifications
- Analytics dashboard with charts
- Email integration for notifications

## Tech Stack
- **Frontend:** React.js (Vite, Material-UI, Bootstrap, Chart.js)
- **Backend:** PHP (REST API), MySQL
- **Other:** PHPMailer, CORS, JWT/session-based authentication

## Project Structure
```
Project-1/
├── backend/           # PHP API and business logic
├── frontend/          # React app (Vite)
├── package.json       # Project metadata
├── README.md          # This file
└── ...
```

## Getting Started

### Prerequisites
- Node.js & npm
- PHP >= 7.4
- MySQL

### Setup
1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd Project-1
   ```
2. **Install frontend dependencies:**
   ```bash
   cd frontend
   npm install
   ```
3. **Configure backend:**
   - Set up your MySQL database and update credentials in `backend/api/Connection/connection.php`.
   - Import the database schema (see `/backend` for SQL files if provided).
4. **Run the frontend:**
   ```bash
   npm run dev
   ```
5. **Run the backend:**
   - Serve the `backend/` folder with a local PHP server (e.g., XAMPP, WAMP, or `php -S localhost:8080 -t backend`)

## Usage
- Access the frontend at `http://localhost:5173`
- The backend API runs at `http://localhost:8080/backend/api/`
- Register as a company or shop, wait for admin approval, then log in to access your dashboard.

## Folder Details
- `frontend/` - React app source code
- `backend/api/` - PHP API endpoints for Admin, Company, Customer, etc.
- `backend/Connection/` - Database connection scripts
- `backend/config/` - CORS and config files
- `backend/Phpmailer/` - Email sending library

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is for educational/demo purposes.
