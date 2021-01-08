import userConstants from '../constants/Users.constants';

export default function User (state = {}, action) {
    switch (action.type) {
        case userConstants.GET_ALL_USERS_REQUEST :
            return {
                loading: true
            }
        case userConstants.GET_ALL_USERS_REQUEST_SUCCESS :
            return {
                data: action.data
            }
        case userConstants.GET_ALL_USERS_REQUEST_FAILURE :
            return {
                error: action.error
            }
        default:
            return state
    }
}