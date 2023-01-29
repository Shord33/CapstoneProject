import { Home } from "./components/Home";
import AdminMovies from "./components/AdminMovies";
import UserMovies from "./components/UserMovies";

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
    }
];

export default AppRoutes;
