import axios from "axios";
import { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { toast } from "react-toastify";

export const Login = () => {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [role, setRole] = useState("");
    const api = "https://localhost:44440/Auth/login";

    const usenavigate = useNavigate();

    // clear all session storage
    useEffect(() => {
        sessionStorage.clear();
    }, []);

    const ProceedLoginusingAPI = (e) => {
        e.preventDefault();

        if (validate()) {
            axios
                .post(api, {
                    Username: username,
                    Password: password,
                })
                .then((res) => {
                    if (Object.keys(res).length === 0) {
                        toast.error("Login failed, invalid credentials");
                    } else {
                        toast.success("Success");
                        sessionStorage.setItem("username", username);
                        sessionStorage.setItem("token", res.data.token);
                        sessionStorage.setItem("role", res.data.roles);

                        setRole(res.data.roles);

                        // console.log(res.data.roles);

                        if (res.data.roles === "Admin") {
                            usenavigate("/Admin-Movies");
                        } else {
                            usenavigate("/");
                        }
                    }
                })
                .catch((err) => {
                    toast.error("Login failed, invalid credentials");
                });
        }
    };

    // form validation
    const validate = () => {
        let result = true;
        if (username === "" || username === null) {
            result = false;
            toast.warning("Please Enter Username");
        }
        if (password === "" || password === null) {
            result = false;
            toast.warning("Please Enter Password");
        }
        return result;
    };

    return (
        <>
            <div className="row">
                <div className="offset-lg-3 col-lg-6" style={{ marginTop: "100px" }}>
                    <form onSubmit={ProceedLoginusingAPI} className="container">
                        <div>
                            <div>
                                <h2>User Login</h2>
                            </div>
                            <div>
                                <div className="form-group">
                                    <label>
                                        User Name <span className="errmsg">*</span>
                                    </label>
                                    <input value={username} onChange={(e) => setUsername(e.target.value)} className="form-control"></input>
                                </div>
                                <div className="form-group">
                                    <label>
                                        Password <span className="errmsg">*</span>
                                    </label>
                                    <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} className="form-control"></input>
                                </div>
                            </div>
                            <div>
                                <button type="submit" className="btn btn-dark">
                                    Login
                                </button>{" "}
                                &nbsp; &nbsp;
                                <Link className="btn btn-dark" to={"/register"}>
                                    New User
                                </Link>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </>
    );
};
