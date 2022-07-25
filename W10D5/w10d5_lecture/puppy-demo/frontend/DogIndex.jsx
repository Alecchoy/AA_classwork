import React from "react";

class DogIndex extends React.Compnent {
    constructor(props){
        super(props)
        this.state = {
            totalVotes : 0
        };
        this.addVote = this.addVote.bind(this)
    }
    addVote(){
        this.setState({totalVotes: this.state.totalVotes + 1})
    }

    render(){
        const breeds = [
            "dog1",
            "dog2",
            "doge3,"
        ]
    
    const breedElements = breeds.map(breed => 
                        <DogDetail key={breed}
                        addVote={this.addVote}
                        breed = {breed} />
                        );
    return(
        <>
        <h1>Total Dog Votes: {this.state.totalVotes} </h1>
        <ul>
            {breedElements}
        </ul>
        </>
    )

    }
}