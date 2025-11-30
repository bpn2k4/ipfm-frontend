import { BrowserRouter } from 'react-router'
import Router from './Router'
import { APP_API_URL } from './configs/environment'

function App() {
  console.log('APP_API_URL', APP_API_URL)
  return (
    <BrowserRouter>
      <Router />
    </BrowserRouter>
  )
}

export default App
