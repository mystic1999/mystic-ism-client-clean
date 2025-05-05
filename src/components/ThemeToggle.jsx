import useThemeStore from '../store/themeStore';

export default function ThemeToggle() {
  const { dark, toggleTheme } = useThemeStore();
  return (
    <button onClick={toggleTheme} className="bg-gray-700 px-3 py-1 rounded text-sm">
      {dark ? '🌞 Light' : '🌙 Dark'}
    </button>
  );
}
