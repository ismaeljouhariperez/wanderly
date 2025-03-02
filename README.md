# AI Micro-Adventure Journal

## 🚀 Overview

AI Micro-Adventure Journal is a Rails application that allows users to upload photos and generate automatic adventure summaries using OpenAI. The app includes tagging, search capabilities, and geolocation features for enhanced organization and retrieval of past experiences.

## 🛠️ Tech Stack

- **Rails 8** (API + Views)
- **PostgreSQL** (Database)
- **ElasticSearch** (Search engine)
- **ActiveStorage** (File uploads via S3/Cloudinary)
- **Geocoder** (Location-based services)
- **OpenAI API** (For AI-generated summaries & tags)
- **Vanilla JS (Fetch API)** (Dynamic frontend updates)
- **Sidekiq** (Background jobs for AI processing)
- **Render/Fly.io** (Deployment)

## 📌 Features

### **MVP Features (Phase 1)**

- ✅ CRUD for Adventures (Title, Description, Date, Location, Tags, Images)
- ✅ Image Uploads (ActiveStorage)
- ✅ AI-Generated Summaries (OpenAI)
- ✅ Auto-tagging based on AI analysis
- ✅ Search by Title, Date, and Tags (SQL-based)
- ✅ Authentication (Devise) & User Access Control (Pundit)
- ✅ Background Processing (Sidekiq for AI requests)
- ✅ Deployment-ready (Render/Fly.io)

### **Upcoming Features (Phase 2)**

- 🔹 Advanced Search (ElasticSearch with auto-completion)
- 🔹 Geospatial Search (Find adventures within a radius)
- 🔹 AI-Based Emotion & Theme Detection
- 🔹 Multi-user Collaboration & Sharing
- 🔹 Timeline View & Interactive Map
- 🔹 Image Similarity Search (OpenAI/CLIP)
- 🔹 Export Markdown/PDF with interactive content
- 🔹 Gamification (Badges & Statistics)

## 🏗️ Installation Guide

### **1. Clone the Repository**

```sh
 git clone https://github.com/your-repo/adventure-journal.git
 cd adventure-journal
```

### **2. Install Dependencies**

```sh
bundle install
```

### **3. Setup Database**

```sh
rails db:create db:migrate
```

### **4. Start Redis & Sidekiq** (For background jobs)

```sh
redis-server
bundle exec sidekiq
```

### **5. Start the Server**

```sh
rails s
```

Visit `http://localhost:3000` in your browser.

## 🔧 Configuration

### **Environment Variables**

Create a `.env` file to store API keys:

```env
OPENAI_API_KEY=your_openai_api_key
CLOUDINARY_URL=your_cloudinary_url
```

## 🚀 Deployment

### **1. Prepare for Production**

- Set environment variables in your hosting provider
- Run database migrations:

```sh
rails db:migrate RAILS_ENV=production
```

### **2. Deploy to Render/Fly.io**

Follow hosting platform-specific deployment steps.

## 🎯 Next Steps

- Implement AI-enhanced search and recommendations
- Optimize performance and scalability
- Improve UI/UX with a dynamic frontend

---

## 📬 Contributing

Contributions are welcome! Fork the repo, make changes, and submit a pull request.

## 📝 License

This project is licensed under the MIT License.

## 💬 Contact

For questions, reach out to `ismael.jouhari@gmail.com` or open an issue on GitHub.
