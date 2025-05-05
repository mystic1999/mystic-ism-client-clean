export default function App() {
  return (
    <div style={{ textAlign: 'center', paddingTop: '4rem' }}>
      <h1>🚀 Mystic-ISM läuft live!</h1>
      <p>Backend: {import.meta.env.VITE_API_URL}</p>
    </div>
  )
}
