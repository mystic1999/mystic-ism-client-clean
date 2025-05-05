
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import { useState } from 'react';
import { Toaster } from 'sonner';
import { Button } from '@/components/ui/button';
import { Sun, Moon } from 'lucide-react';

function App() {
  const [darkMode, setDarkMode] = useState(true);

  return (
    <div className={darkMode ? 'dark' : ''}>
      <div className="min-h-screen bg-background text-foreground">
        <Router>
          <nav className="p-4 border-b flex justify-between items-center">
            <h1 className="text-xl font-bold">🚀 Mystic-ISM</h1>
            <div className="flex items-center gap-2">
              <Button variant="ghost" onClick={() => setDarkMode(!darkMode)}>
                {darkMode ? <Sun className="w-4 h-4" /> : <Moon className="w-4 h-4" />}
              </Button>
            </div>
          </nav>

          <div className="grid grid-cols-5">
            <aside className="col-span-1 border-r p-4">
              <ul className="space-y-2">
                <li><a href="/dashboard">Dashboard</a></li>
                <li><a href="/users">Users</a></li>
                <li><a href="/settings">Settings</a></li>
              </ul>
            </aside>

            <main className="col-span-4 p-6">
              <Routes>
                <Route path="/dashboard" element={<Dashboard />} />
                <Route path="/users" element={<Users />} />
                <Route path="/settings" element={<Settings />} />
              </Routes>
            </main>
          </div>

          <Toaster richColors />
        </Router>
      </div>
    </div>
  );
}

function Dashboard() {
  return (
    <div>
      <h2 className="text-2xl font-semibold mb-4">Dashboard Overview</h2>
      <p>Welcome to your Admin Dashboard 👋</p>
    </div>
  );
}

function Users() {
  return (
    <div>
      <h2 className="text-2xl font-semibold mb-4">User Management</h2>
      <p>List, add, or edit users here.</p>
    </div>
  );
}

function Settings() {
  return (
    <div>
      <h2 className="text-2xl font-semibold mb-4">System Settings</h2>
      <p>Manage configurations and preferences here.</p>
    </div>
  );
}

export default App;
