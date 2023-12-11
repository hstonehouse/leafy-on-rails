import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { Link } from "react-router-dom";
import '../assets/css/home.css';

export function Home() {
  return (
    <main>
      <div className="homepage-container">
        <p id="heading">Leafy</p>
        <div id="logo-div">
          <FontAwesomeIcon icon="seedling" size="3x" color="rgb(17,136,60)" id="logo-image"/>
        </div>
        <Link to="/plantdirectory" className="button is-rounded" id="enter-button">Enter</Link>
      </div>
    </main>
  );
}