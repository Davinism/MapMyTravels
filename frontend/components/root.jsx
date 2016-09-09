import React from 'react';
import { Provider } from 'react-redux';
import AppRouter from './router.jsx';
import SiteFooter from './site_footer/site_footer';

const Root = ({store}) => (
  <Provider store={store}>
    <AppRouter/>
  </Provider>
);

export default Root;
