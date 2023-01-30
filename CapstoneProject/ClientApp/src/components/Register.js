import axios from "axios";
import { useEffect, useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import { toast } from "react-toastify";

export const Register = () => {
    const [username, setUsername] = useState("");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const api = "https://localhost:44440/Auth/register";

    const navigate = useNavigate();

    // form validation
    const IsValidate = () => {
        let isproceed = true;
        let errormessage = "Please enter this field:  ";

        if (username === null || username === "") {
            isproceed = false;
            errormessage += " Username";
        }

        if (email === null || email === "") {
            isproceed = false;
            errormessage += " Email";
        }

        if (password === null || password === "") {
            isproceed = false;
            errormessage += " Password";
        }

        if (!isproceed) {
            toast.warning(errormessage);
        } else {
            if (/^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[A-Za-z]+$/.test(email)) {
            } else {
                isproceed = false;
                toast.warning("Please enter the valid email");
            }
        }
        return isproceed;
    };

    // register new user
    const handlesubmit = (e) => {
        e.preventDefault();

        if (IsValidate()) {
            axios
                .post(api, {
                    Username: username,
                    Email: email,
                    Password: password,
                })
                .then((res) => {
                    toast.success("User registered");
                    navigate("/Login");
                })
                .catch((err) => {
                    toast.error("Login failed + err.message");
                });
        }
    };

    return (
        <>

            <div>
                <div className="offset-lg-3 col-lg-6" style={{ marginTop: "100px" }}>
                    <form className="container" onSubmit={handlesubmit}>
                        <div>
                            <div >
                                <h2>User Registration</h2>
                            </div>
                            <div>
                                <div className="row">
                                    <div className="col-lg-6">
                                        <div className="form-group">
                                            <label>
                                                User Name <span className="errmsg">*</span>
                                            </label>
                                            <input value={username} onChange={(e) => setUsername(e.target.value)} className="form-control"></input>
                                        </div>
                                    </div>
                                    <div className="col-lg-6">
                                        <div className="form-group">
                                            <label>
                                                Email <span className="errmsg">*</span>
                                            </label>
                                            <input value={email} onChange={(e) => setEmail(e.target.value)} className="form-control"></input>
                                        </div>
                                    </div>
                                    <div className="col-lg-6">
                                        <div className="form-group">
                                            <label>
                                                Password <span className="errmsg">*</span>
                                            </label>
                                            <input value={password} onChange={(e) => setPassword(e.target.value)} type="password" className="form-control"></input>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button type="submit" className="btn btn-dark">
                                    Register
                                </button>
                                &nbsp; &nbsp;
                                <Link className="btn btn-dark" to={"/Login"}>
                                    Login
                                </Link>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </>
    );
};
