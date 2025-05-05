import React from 'react';
import Sidebar from './components/Sidebar';
import Header from './components/Header';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import Analytics from './pages/Analytics';
import Settings from './pages/Settings';

const App = () => {
  return (
    <Router>
      <div className="flex h-screen">
        <Sidebar />
        <div className="flex-1">
          <Header />
          <main className="p-4">
            <Routes>
              <Route path="/" element={<Home />} />
              <Route path="/analytics" element={<Analytics />} />
              <Route path="/settings" element={<Settings />} />
            </Routes>
          </main>
        </div>
      </div>
    </Router>
  );
};

export default App;