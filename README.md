# 🛒 ShopCraft

**ShopCraft** is a mobile shopping application built with **Flutter**.  
The app provides a seamless e-commerce experience with authentication, product browsing, featured items, and hot offers.  
It also supports **multi-language (English/Arabic)** using `easy_localization`.

---

## ✨ Features
- 👋 **Welcome Screen** with app introduction.
- 🔐 **Authentication** (Sign In / Sign Up).
- 🏠 **Home Screen** with product grid, featured slider, and hot offers.
- 🛍️ **Product Browsing** with categories and details.
- 🌍 **Localization** support for English and Arabic.
- 🎨 Custom theme with fonts, colors, and reusable widgets.

---

## 📱 Screens Explanation
### 1. **Welcome Screen**
- Entry point of the app.  
- Shows the app logo and navigation to Sign In / Sign Up.  
- Language direction changes dynamically (LTR/RTL).  

### 2. **Sign In Screen**
- Allows existing users to log in.  
- Includes form validation and error handling.  
- Clean UI with custom form field widgets.  

### 3. **Sign Up Screen**
- Registration form for new users.  
- Includes input validation (email, password, confirm password).  
- Connected to authentication logic.  

### 4. **Home Screen**
- **AppBar** with title (localized).  
- **Featured Products Carousel** using `card_swiper`.  
- **GridView** for product collections.  
- **Hot Offers Section** using `ListView`.  

---

## 🏗️ Design Pattern
The app follows **Clean Architecture** with:
- **Separation of Concerns**: UI, Data, and Business Logic are separated.  
- **Reusable Widgets**: Custom widgets for buttons, forms, and product cards.  
- **Localization Layer**: Managed with `.json` files + `easy_localization`.  

---

## 🎨 UI & Demo
- Modern **e-commerce UI** with product cards, carousels, and offers.  
- Responsive design (works on Android & iOS).
  
- 📸 **Screenshots**: *(Add your screenshots here in `/screenshots` folder)*  
  <div align="center">

  <img src="https://github.com/user-attachments/assets/918a02e0-7dbf-4ec0-8eac-2776ba2cc6db" width="180"/>
  <img src="https://github.com/user-attachments/assets/239cc93a-18a0-4abe-b90f-640acb8693ce" width="180"/>
  <img src="https://github.com/user-attachments/assets/0021fb55-81a0-4c42-ace6-b6826d0753a4" width="180"/>
  <img src="https://github.com/user-attachments/assets/ea890812-9cec-4340-87c4-d1b664ee4fb3" width="180"/>
  <br/>
  <img src="https://github.com/user-attachments/assets/3fe97ac2-aad9-4d61-b12c-cf51888e656b" width="180"/>
  <img src="https://github.com/user-attachments/assets/07da058f-1532-4bc6-ad10-ccb7074de210" width="180"/>
  <img src="https://github.com/user-attachments/assets/9df256bf-64c0-4e97-8afe-bdc7e75a178b" width="180"/>
  <img src="https://github.com/user-attachments/assets/7589b5a4-ead9-4304-8856-51936771ee4f" width="180"/>
  <br/>
  <img src="https://github.com/user-attachments/assets/4161af10-5a46-40e0-9afb-01ba873aa35d" width="180"/>

</div>


📹 **UI Demo Video**: *(Add your video link here, e.g. YouTube/Drive)*  


https://github.com/user-attachments/assets/1e80a266-914b-424e-b322-4494df230469



---

## 📦 Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  card_swiper: ^3.0.1       # Carousel for featured products
  easy_localization: ^3.0.8 # Multi-language support
  
 

