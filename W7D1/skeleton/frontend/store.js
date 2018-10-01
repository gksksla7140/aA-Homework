import React from 'react';
import ReactDOM from 'react-dom';
import {createStore} from 'redux';
import reducer from "./reducer";

const store = createStore(reducer);


export default store;
