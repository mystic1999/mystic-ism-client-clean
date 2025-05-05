import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Header from './components/Header';
import Sidebar from './components/Sidebar';
import DarkModeToggle from './components/DarkModeToggle';
import Dashboard from './pages/Dashboard';
import Users from './pages/Users';
import Settings from './pages/Settings';
import './index.css';

export default function App() {
  return (
    <Router>
      <div className="flex h-screen bg-white dark:bg-gray-900 text-black dark:text-white">
        <Sidebar />
        <div className="flex flex-col flex-1">
          <div className="flex items-center justify-between px-4 py-2 shadow-md border-b dark:border-gray-700">
            <Header />
            <DarkModeToggle />
          </div>
          <main className="p-6 overflow-auto">
            <Routes>
              <Route path="/" element={<Dashboard />} />
              <Route path="/users" element={<Users />} />
              <Route path="/settings" element={<Settings />} />
            </Routes>
          </main>
        </div>
      </div>
    </Router>
  );
}
