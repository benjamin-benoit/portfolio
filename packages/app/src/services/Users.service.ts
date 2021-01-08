
import { handleResponse } from './HandleResponse';

export const userService = { getAll }

function getAll() {
    const requestOptions = {
        method: 'GET'
    };
    return fetch(`${process.env.REACT_APP_API_URL}/auth/users`, requestOptions).then(handleResponse);
}

