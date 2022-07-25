import React from "react";

class DogDetail extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            votes: 0
        };
    }
    addBreedVote(){
        this.props.addVote(); //comes from parent through props
        this.setState({ votes: this.state.votes + 1 })
    }

    render(){
        return(
            <div className ="dog-detail">
                {this.props.breed}: {this.state.votes}
            </div>
        )
    }
}