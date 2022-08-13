import React from 'react';

class Attribute extends React.Component{
    constructor(props)
    {
        super(props);

    }

    render() {
        return(
          <div>
            <label>{this.props.stat}</label>
            <input type="text" value={this.props.value} onChange={(e) => this.props.updateStat(e, this.props.name)}></input>
            <label>Modifier: {(this.props.value - 10) / 2}</label>
          </div>
        )
    }
}

export default Attribute;