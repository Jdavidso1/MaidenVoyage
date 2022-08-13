import React from 'react';
import './App.css';

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      strength: "",
      strmod: ""
    };
  }

  getInput = (event) => {
    let value = event.target.value;
    this.setState({
      strength: value
    });
  }

  getModifer = (attribute) => {
    let modifier = ((attribute - 10) / 2);
    console.log(modifier)
  }

  render() {
    return (
      <div>
        <p>STR:<input value={this.state.strength} onChange={this.getInput}></input></p>
        <h4>STR MOD: {this.state.strmod}</h4>
        <button onClick={this.getModifer()}>Calculate!</button>
      </div>
    );
  }
}

export default App;

// JOHN NOTES:
// import React from 'react';
// import './App.css';

// class App extends React.Component {
//   constructor(props){
//     super(props);

//     this.state = {
//       strength: 8,
//       dexterity: 8
//     }

//     this.updateAttribute = this.updateAttribute.bind(this);
//   }

//   updateAttribute(event, stat){
//     // get the new value
//     // put it into the state
//     let newValue = Number(event.target.value);
//     if(isNaN(newValue))
//     {
//       newValue = 10;
//     }
//     let newState = {}
//     newState[stat] = newValue;

//     this.setState(newState)
//   }

//   render() {
//     return (
//       <div className="App">
//         <div>
//           <label>Strength</label>
//           <input type="text" value={this.state.strength} onChange={(e) => this.updateAttribute(e, "strength")}></input>
//           <label>Modifier: {(this.state.strength - 10) / 2}</label>
//         </div>
//         <div>
//           <label>Constitution</label>
//           <input type="text" value={this.state.constitution} onChange={(e) => this.updateAttribute(e, "constitution")}></input>
//           <label>Modifier: {(this.state.constitution - 10) / 2}</label>
//         </div>
//         <div>
//           <label>Dexterity</label>
//           <input type="text" value={this.state.dexterity} onChange={(e) => this.updateAttribute(e, "dexterity")}></input>
//           <label>Modifier: {(this.state.dexterity - 10) / 2}</label>
//         </div>
//         <div>
//           <label>Wisdom</label>
//           <input type="text" value={this.state.wisdom} onChange={(e) => this.updateAttribute(e, "wisdom")}></input>
//           <label>Modifier: {(this.state.wisdom - 10) / 2}</label>
//         </div>
//         <div>
//           <label>Intelligence</label>
//           <input type="text" value={this.state.intelligence} onChange={(e) => this.updateAttribute(e, "intelligence")}></input>
//           <label>Modifier: {(this.state.intelligence - 10) / 2}</label>
//         </div>
//         <div>
//           <label>Feet</label>
//           <input type="text" value={this.state.feet} onChange={(e) => this.updateAttribute(e, "feet")}></input>
//           <label>Modifier: {(this.state.feet - 10) / 2}</label>
//         </div>
//       </div>
//     );
//   }
// }

// export default App;