import { BrowserRouter as Router, Routes, Route, NavLink } from "react-router-dom";
import Dashboard from "./pages/Dashboard";
import Users from "./pages/Users";
import Settings from "./pages/Settings";

export default function App() {
  return (
    <Router>
      <div className="flex h-screen">
        <aside className="w-64 bg-gray-800 text-white p-4">
          <h1 className="text-lg font-bold mb-6">🔒 Mystic-ISM Admin</h1>
          <nav className="flex flex-col gap-2">
            <NavLink to="/" className="hover:text-blue-400" end>Dashboard</NavLink>
            <NavLink to="/users" className="hover:text-blue-400">Users</NavLink>
            <NavLink to="/settings" className="hover:text-blue-400">Settings</NavLink>
          </nav>
        </aside>
        <main className="flex-1 p-6 overflow-auto">
          <Routes>
            <Route path="/" element={<Dashboard />} />
            <Route path="/users" element={<Users />} />
            <Route path="/settings" element={<Settings />} />
          </Routes>
        </main>
      </div>
    </Router>
  );
}