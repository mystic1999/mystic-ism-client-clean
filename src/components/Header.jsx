import ThemeToggle from './ThemeToggle';

export default function Header() {
  return (
    <header className="flex justify-between items-center p-4 border-b border-gray-700">
      <h1 className="text-xl font-bold">🔐 Mystic-ISM Admin</h1>
      <ThemeToggle />
    </header>
  );
}
