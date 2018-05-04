import React, { Component} from 'react';
import { connect } from 'react-redux';
import {bindActionCreators} from 'redux';
import Chart from '../components/chart'
import GoogleMap from '../components/google_map';


class WeatherList extends Component {
    
    renderWeather(cityData){
        const name = cityData.city.name
        
        const {lon, lat} = cityData.city.coord
        
        const temp = cityData.list.map(weather => weather.main.temp)
        const pressure = cityData.list.map(weather => weather.main.pressure)
        const hum = cityData.list.map(weather => weather.main.humidity)
        
        return(
            <tr key={name}>
                <td><GoogleMap lat={lat} lon={lon}/></td>
                <td> <Chart color="red" data={temp} units="K"/> </td>
                <td> <Chart color="orange" data={pressure} units="hPa"/> </td>
                <td> <Chart color="blue" data={hum} units="%"/> </td>
            </tr>
        );
    }

    render(){
        return(
            <table className="table table-hover">
                <thead>
                    <tr>  
                        <th>City</th>
                        <th>Temperature(K)</th>
                        <th>Pressure(hPa)</th>
                        <th>Humidity(%)</th>
                    </tr>
                </thead>
                <tbody>
                    {this.props.weather.map(this.renderWeather)}
                </tbody>
            </table>
        );
    }
}

// function mapPropsToState({weather}){ // equivalent to const weather = state.weather
//     return {weather}; // equivalent to {weather: weather}
// }

function mapPropsToState(state){
    return {
        weather: state.weather
    };
}

export default connect(mapPropsToState)(WeatherList);