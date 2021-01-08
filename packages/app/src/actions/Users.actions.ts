
import userConstants from '../constants/Users.constants';
import { userService } from '../services/Users.service';
export const userActions = { }

function getAll() {
    return dispatch => {
        dispatch(request())
        userService.getAll().then(
            data => dispatch(success(data)),
            error => dispatch(failure(error))
        )
    }
    function request() {
        return { type: userConstants.GET_ALL_USERS_REQUEST }
    }
    function success(data) {
        return { type: userConstants.GET_ALL_USERS_REQUEST_SUCCESS, data }
    }
    function failure(error) {
        return { type: userConstants.GET_ALL_USERS_REQUEST_FAILURE, error }
    }
}