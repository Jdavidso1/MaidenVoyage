import React from 'react';
import Attribute from './Attribute';
import './App.css';

class App extends React.Component {
  constructor(props){
    super(props);

    this.state = {
      strength: 10,
      dexterity: 10,
      constitution: 10,
      wisdom: 10,
      intelligence: 10,
      shoes: 10
    }

    this.updateAttribute = this.updateAttribute.bind(this);
  }

  updateAttribute(event, stat) {
    // get the new value
    // put it into the state
    let newValue = Number(event.target.value);
    if(isNaN(newValue))
    {
      newValue = 10;
    }
    // old way when we needed to send the attribute/stat as well
    let newState = {};
    newState[stat] = newValue;
    this.setState(newState)

    // the above 3 lines could also be done as
    // this.setState({[stat]: newValue});
  }

  render() {
    return (
      <div className="App">
        <Attribute 
          stat="Strength"
          value={this.state.strength}
          updateStat={this.updateAttribute}
          name="strength"
        />
        <Attribute stat="Constitution" value={this.state.constitution} updateStat={this.updateAttribute} name="constitution"/>
        <Attribute stat="Dexterity" value={this.state.dexterity}/>
        <Attribute stat="Wisdom" value={this.state.wisdom}/>
        <Attribute stat="Intelligence" value={this.state.intelligence}/>
        <Attribute stat="Purple Shoes" value={this.state.shoes}/>

        <div>
          <table>
            <tr>
              <td>Strength</td>
              <td>{this.state.strength}</td>
            </tr>
          </table>
        </div>
      </div>
    );
  }
}

export default App;
