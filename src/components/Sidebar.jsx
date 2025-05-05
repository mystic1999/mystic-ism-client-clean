import React from 'react';
import { NavLink } from 'react-router-dom';

const Sidebar = () => {
  return (
    <aside className="h-screen w-64 bg-gray-900 text-white flex flex-col p-4">
      <h2 className="text-2xl font-bold mb-6">🧭 Dashboard</h2>
      <nav className="flex flex-col gap-3">
        <NavLink to="/" className="hover:bg-gray-700 p-2 rounded" end>
          Home
        </NavLink>
        <NavLink to="/analytics" className="hover:bg-gray-700 p-2 rounded">
          Analytics
        </NavLink>
        <NavLink to="/settings" className="hover:bg-gray-700 p-2 rounded">
          Settings
        </NavLink>
      </nav>
    </aside>
  );
};

export default Sidebar;