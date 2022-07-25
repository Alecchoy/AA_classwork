import React from 'react';

class Clock extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            time: new Date()
        }
    this.tick = this.tick.bind(this);
    }

    tick(){
        this.setState({time: new Date()});
    }
    componentDidMount(){
       setInterval(() => {this.tick()}, 1000)
    }
    
    componentWillUnmount(){
        var interval = this.componentDidMount()
        clearInterval(interval)
        interval = 0
    }
    
    
    render(){
       return (<div>
       <h1>{String(this.state.time.getHours())}:{String(this.state.time.getMinutes()).padStart(2, '0')}:{String(this.state.time.getSeconds()).padStart(2, '0')}</h1>
       {this.props.tabs.map(tab => {
           return (<div>
               {tab.title}
           </div>)}
       )}
       </div> )
    }
}

export default Clock;
