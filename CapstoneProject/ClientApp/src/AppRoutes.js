import { Home } from "./components/Home";
import AdminMovies from "./components/AdminMovies";
import UserMovies from "./components/UserMovies";
import { Register } from "./components/Register";
import { Login } from "./components/Login";
import { AddUser } from "./components/AdminAddUser";
import { AllUser } from "./components/AdminUsers";
import AddRatings from "./components/AddRatings";

const AppRoutes = [
  {
    index: true,
    element: <Home />
  },
    {
        path: '/Admin-Movies',
        element: <AdminMovies />
    },
    {
        path: '/User-Movies',
        element: <UserMovies />
    },
    {
        path: '/Admin-Add-User',
        element: <AddUser />
    },
    {
        path: '/Admin-Users',
        element: <AllUser />
    },
    {
        path: '/Register',
        element: <Register />
    },
    {
        path: '/Login',
        element: <Login />
    },
    {
        path: '/Add-Ratings',
        element: <AddRatings />
    }
];

export default AppRoutes;
