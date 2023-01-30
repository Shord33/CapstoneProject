import React, { Component } from 'react';

export class Home extends Component {
  static displayName = Home.name;

  render() {
      return (
          <div style={{
              backgroundImage: "url('https://images.unsplash.com/photo-1513106580091-1d82408b8cd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80')",
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              backgroundPosition: "center",
              height: "100vh",
              textAlign: "center",
              padding: "2em"
          }}>
              <h1 style={{
                  fontFamily: "'Montserrat', sans-serif",
                  fontSize: "3em",
                  color: "white",
                  textShadow: "2px 2px #333"
              }}>Hello there!</h1>
              <p style={{
                  fontFamily: "'Open Sans', sans-serif",
                  fontSize: "1.5em",
                  color: "white",
                  textShadow: "1px 1px #333"
              }}>Welcome to the Movie Website!</p>
              <p style={{
                  fontFamily: "'Open Sans', sans-serif",
                  fontSize: "1.2em",
                  color: "white",
                  textShadow: "1px 1px #333"
              }}>This website is a simple showcase of what a user and admin experience might be like. As the role login was not successfully implemented, there are 2 sections which can be accessed to demo the functions instead. Login and regsiter users function are working correctly to add and authenticate the users</p>
              <p style={{
                  fontFamily: "'Open Sans', sans-serif",
                  fontSize: "1.2em",
                  color: "white",
                  textShadow: "1px 1px #333"
              }}>This web app uses React as the front end and ASP.Net API asa the back end for the server calls to the MSSQL Server database.</p>
              <p style={{
                  fontFamily: "'Open Sans', sans-serif",
                  fontSize: "1.2em",
                  color: "white",
                  textShadow: "1px 1px #333"
              }}>The "Admin Movies" section represents the expected view of an admin which involves the CRUD functions for movies. The "User Movies" section represents the expected view of a regular user which can view the list of available movies.</p>
          </div>
      );

  }
}
