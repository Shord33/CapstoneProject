import React, { useEffect, useState } from "react";
import Button from 'react-bootstrap/Button';
import Modal from 'react-bootstrap/Modal';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import 'react-toastify/dist/ReactToastify.css';
import { toast, ToastContainer } from 'react-toastify';

const AdminMovies = () => {
    const [data, setData] = useState([]);
    const [show, setShow] = useState(false);

    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);

    const [title, setTitle] = useState('');
    const [genre, setGenre] = useState('');
    const [description, setDescription] = useState('');
    const [rating, setRating] = useState(0);
    const [posterId, setPosterId] = useState(0);

    const [editId, setEditId] = useState('');
    const [editTitle, setEditTitle] = useState('');
    const [editGenre, setEditGenre] = useState('');
    const [editDescription, setEditDescription] = useState('');
    const [editRating, setEditRating] = useState(0);
    const [editPosterId, setEditPosterId] = useState(0);

    useEffect(() => {
        getData();
    }, [])

    //Get all data from database through API
    const getData = () => {
        fetch(`/Movies`)
            .then((results) => {
                return results.json();
            })
            .then(data => {
                setData(data);
            }).catch(error => console.log(error));
        console.log("Function getdata called!");
    }

    //Get Edit view for specific Movie object
    const handleEdit = (id) => {
        handleShow();
        fetch(`/Movies/${id}`)
            .then(response => response.json())
            .then(data => {
                setEditTitle(data.title);
                setEditDescription(data.description);
                setEditGenre(data.genre);
                setEditPosterId(data.posterId);
                setEditId(id);
                console.log("Edit function called");
            })
            .catch((error) => {
              console.log(error);
            })
    }

    //Delete specific Movie object based on id using API
    const handleDelete = (id) => {
        if (window.confirm("Are you sure you want to delete this movie?") == true) {
            fetch(`/Movies/${id}`, {
                method: 'DELETE',
                headers: { 'Content-Type': 'application/json' }
            })
                .then(data => {
                    setData(data);
                    toast.success('Movie has been deleted');
                    getData();
                })
                .catch(error => toast.error(error));

        }
    }

    //Update specific Movie object using API call
    const handleUpdate = () => {
        const data = {
            "title": editTitle,
            "genre": editGenre,
            "description": editDescription,
            "rating": editRating,
            "posterId": editPosterId,
            "movieId": editId
        }
        fetch(`/Movies/${editId}`, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        })
            .then(data => {
                setData(data);
                getData();
                clear();
                toast.success('Movie has been updated');
            })
            .catch(error => console.log(error));
    }
    const handleSave = () => {
        const data = {
            "title": title,
            "genre": genre,
            "description": description,
            "rating": 0,
            "posterId": posterId
        }
        fetch('/Movies', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        })
            .then(response => response.json())
            .then(data => {
                setData(data);
                getData();
                clear();
                toast.success('Movie has been added');
            })
            .catch(error => console.log(error));
    }
    const clear = () => {
        setTitle(' ');
        setDescription(' ');
        setGenre('')
        setRating(0);
        setPosterId(0);
        setEditTitle(' ');
        setEditDescription(' ');
        setEditGenre('')
        setEditRating(0);
        setEditPosterId(0);
    }
    const handleClick = (value) => {
        setRating(value);
    };
    return (
        <div>
            <ToastContainer />
            {/*Input form for Create function*/}
            <Row>
                <Col>
                    <input type="text" className="form-control" placeholder="Enter Movie Title" value={title} onChange={(e) => setTitle(e.target.value)}></input>
                </Col>
                <Col>
                    <input type="text" className="form-control" placeholder="Enter Genre" value={genre} onChange={(e) => setGenre(e.target.value)}></input>
                </Col>
                <Col>
                    <label>Poster Id</label>
                    <input type="number" className="form-control" placeholder="Enter Poster ID" value={posterId} onChange={(e) => setPosterId(e.target.value)}></input>
                </Col>
            </Row>

            <br></br>
            <Row>
                <Col>
                    <input type="text" className="form-control" placeholder="Enter Description" value={description} onChange={(e) => setDescription(e.target.value)}></input>
                </Col>
                <br></br>
                <button className="btn btn-primary" onClick={() => handleSave()}>Submit</button>
            </Row>
            <br></br>
            <table className='table table-striped' aria-labelledby="tabelLabel">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Description</th>
                        <th>Poster ID</th>
                        <th>Rating</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        //Iterate over data array to display all movies
                        data && data.length > 0 ?
                            data.map((item, index) => {
                                return (
                                    <tr key={index}>
                                        <td>{index + 1}</td>
                                        <td>{item.movieId}</td>
                                        <td>{item.title}</td>
                                        <td>{item.genre}</td>
                                        <td>{item.description}</td>
                                        <td>{item.posterId}</td>
                                        <td>{item.rating}</td>
                                        <td colSpan={2}>
                                            <button className="btn btn-primary" onClick={() => handleEdit(item.movieId)}>Edit</button>
                                            <button className="btn btn-danger" onClick={() => handleDelete(item.movieId)}>Delete</button>
                                        </td>
                                    </tr>
                                )
                            })
                            :
                            'Loading...'
                    }

                </tbody>
            </table>
            <Modal show={show} onHide={handleClose}>
                <Modal.Header closeButton>
                    <Modal.Title>Update Employee</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Row>
                        <Col>
                            <input type="text" className="form-control" placeholder="Enter Movie Title" value={editTitle} onChange={(e) => setEditTitle(e.target.value)}></input>
                        </Col>
                        <Col>
                            <input type="text" className="form-control" placeholder="Enter Genre" value={editGenre} onChange={(e) => setEditGenre(e.target.value)}></input>
                        </Col>
                        <Col>
                            <label>Poster Id</label>
                            <input type="number" className="form-control" placeholder="Enter Poster ID" value={editPosterId} onChange={(e) => setEditPosterId(e.target.value)}></input>
                        </Col>
                    </Row>
                    <br></br>
                    <Row>
                        <Col>
                            <input type="text" className="form-control" placeholder="Enter Description" value={editDescription} onChange={(e) => setEditDescription(e.target.value)}></input>
                        </Col>
                        <br></br>
                    </Row>
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={() => handleClose()}>
                        Close
                    </Button>
                    <Button variant="primary" onClick={() => handleUpdate()}>
                        Save Changes
                    </Button>
                </Modal.Footer>
            </Modal>
        </div>
    )
}
export default AdminMovies;