import axios from 'axios';
const API_KEY = '4d15ff39ffbfbbd1eb8fe79ab6af73e6';
const ROOT_URL = `http://api.openweathermap.org/data/2.5/forecast?appid=${API_KEY}`;

export const FETCH_WEATHER = 'FETCH_WEATHER';

export function fetchWeather(cityName){
    const url = `${ROOT_URL}&q=${cityName},us`
    const request = axios.get(url);

    return {
        type: FETCH_WEATHER,
        payload: request
    }
}