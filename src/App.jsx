import React from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import './index.css'; // Tailwind & globale Styles

const App = () => {
  return (
    <div className="flex h-screen bg-white dark:bg-gray-900 text-black dark:text-white">
      <Sidebar />
      <div className="flex-1 flex flex-col">
        <Header />
        <main className="p-4">
          <h1 className="text-xl font-bold">Dashboard</h1>
          <p>Welcome to your Admin Dashboard 🚀</p>
        </main>
      </div>
    </div>
  );
};

export default App;