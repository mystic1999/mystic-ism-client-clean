import { create } from 'zustand';

const useThemeStore = create((set) => ({
  dark: true,
  toggleTheme: () => set(state => ({ dark: !state.dark }))
}));

export default useThemeStore;