import React from 'react';
import Clock from './clock';

const App = () => {
    const tabs = [
        { title: 'hey', content: 'asefasfegsra'},
        { title: 'hey 2', content: 'asfergaargaweg' }
      ]

    return (
        <div>
            <Clock tabs={tabs}/>
        </div>
    )
}

export default App;