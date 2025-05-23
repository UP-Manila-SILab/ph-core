# SMART on FHIR Example Setup

This document outlines the steps to set up and run a sample SMART on FHIR application using Docker, a HAPI FHIR server, a SMART Proxy, and example front-end applications.

Also, see [here](https://teams.microsoft.com/l/message/19:7fd72bab-09f4-49b2-8a63-f09ae44aaa72_8f4c25c5-1a46-4b59-8dd4-c7e9aca854ac@unq.gbl.spaces/1722830831148?context=%7B%22contextType%22%3A%22chat%22%7D)

## Prerequisites

* Docker and Docker Compose
* Node.js and npm
* curl

## Installation and Setup

1.  **Start Docker Compose:**
    * Ensure Docker is running.
    * Place your `docker-compose.yml` file (containing definitions for HAPI and SMART Proxy) in a directory.
    * Open a terminal in that directory and run:
        ```bash
        docker-compose up -d
        ```

2.  **Install Sample FHIR Data:**
    * Place your `bak-10-03-2025.json` file in the same directory.
    * Run the following command to load the data into the HAPI FHIR server:
        ```bash
        curl -X POST -H "Content-Type: application/fhir+json" -d @bak-10-03-2025.json "http://localhost:8080/fhir"
        ```

3.  **Clone and Configure the SMART EHR Launcher Web GUI:**
    * Clone the repository:
        ```bash
        git clone git@github.com:aehrc/SMART-EHR-Launcher.git
        cd SMART-EHR-Launcher
        ```
    * Create or modify the `.env` file and set the FHIR server URL:
        ```
        VITE_FHIR_SERVER_URL=http://localhost:8081/v/r4/fhir
        ```
    * Install dependencies and start the application:
        ```bash
        npm install
        npm start
        ```

4.  **Clone and Configure the SMART Forms App:**
    * Clone the repository:
        ```bash
        git clone git@github.com:aehrc/smart-forms.git
        cd smart-forms/apps/smart-forms-app
        ```
    * Install dependencies and start the application:
        ```bash
        npm install
        npm start
        ```

5.  **Configure App Launch in SMART Forms App:**
    * Open the SMART Forms App in your browser: `http://localhost:5173/`
    * Navigate to **Settings/App Launch**. (This is the third entry in the right-hand sidebar, indicated by a cog symbol.)
    * Set the launch URL to `http://localhost:5174/launch`.

6.  **Launch the SMART Forms App:**
    * In the SMART Forms App, select the following:
        * Patient: "Ms. Emma SMITH"
        * User: "Mr. Representative Pharmacist"
        * Encounter: "annualvisit-1"
    * Navigate to the **Home section**. (This is at the top of the left-hand sidebar, indicated by a green cross icon.)
    * Trigger the launch link.
    * The SMART Forms Renderer should launch: `http://localhost:5174/renderer` and display the questionnaire data.

7. **Verify smart-forms-app is running**
    * if for some reason the smart-forms-app is not running, change into the smart-forms-app directory and run npm install, and npm start.
        ```bash
        cd smart-forms/apps/smart-forms-app
        npm install
        npm start
        ```

## Notes

* Ensure that the Docker Compose file and JSON data file are correctly configured.
* Verify that the ports used by the docker containers do not conflict with other applications.
* The SMART proxy at 8081 is the point that the EHR launcher uses to connect to the HAPI server.
