import React from 'react';
import logo from './logo.svg';
import './App.css';
import { Provider } from 'react-redux';
import { store } from './helpers/Store';
import { Header } from './components';

function App() {
  return (
    <Provider store={store}>
      <Header />
    </Provider>
  );
}

export default App;
