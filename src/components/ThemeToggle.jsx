import useThemeStore from '../store/themeStore';

function ThemeToggle() {
  const { dark, toggleTheme } = useThemeStore();
  return (
    <button
      onClick={toggleTheme}
      className="bg-gray-300 dark:bg-gray-700 text-sm px-4 py-2 rounded"
    >
      {dark ? 'Light Mode' : 'Dark Mode'}
    </button>
  );
}

export default ThemeToggle;