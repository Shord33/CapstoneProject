import React, { useEffect, useState } from "react";
import 'react-toastify/dist/ReactToastify.css';
import MovieImageArr from "./MovieImages.js";
import './MovieCard.css';
import MovieImages from "./MovieImages.js";

export default function UserMovies() {
    const [data, setData] = useState([]);
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

    //Displaying the movies in the database in the form of cards

    return (
        <>
      <div className="card-container">
            {data && data.length > 0 ?
                data.map((item, index) => {
                    return (
                        <div className="card" key={index}>
                            <img id={item.movieId} src={MovieImageArr.find(o => o.id === item.posterId)?.image} alt={item.title} className="card-img-top" />
                            <div className="card-body">
                                <h5 className="card-title">{item.title}</h5>
                                <p className="card-text" style={{ display: 'none' }}>{item.description}</p>
                            </div>
                        </div>
                    )
                })
                :
                'Loading...'
            }
        </div>
            </>

    );
};
