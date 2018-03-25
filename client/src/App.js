import React, { Component } from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

// COMPONENTS
import Home from './components/Home'
import Admin from './components/admin/Admin'

class App extends Component {
  render() {
    return (
      <Router>
        <div>
          <Switch>

            {/* PUBLIC */}
            <Route exact path="/" component={Home} />

            {/* ADMIN */}
            <Route exact path="/admin" component={Admin} />

          </Switch>
        </div>
      </Router>
    );
  }
}

export default App;
