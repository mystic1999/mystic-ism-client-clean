export default function Sidebar() {
  return (
    <aside className="w-64 bg-gray-800 text-white p-4">
      <nav className="space-y-4">
        <a href="/" className="block hover:text-indigo-400">Dashboard</a>
        <a href="/users" className="block hover:text-indigo-400">Users</a>
        <a href="/settings" className="block hover:text-indigo-400">Settings</a>
      </nav>
    </aside>
  );
}
