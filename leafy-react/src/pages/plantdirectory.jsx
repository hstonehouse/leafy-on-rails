import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { Link, useNavigate } from "react-router-dom";
import { useEffect, useState } from "react";
import { GridImage } from "./components/grid-image";
import api from "../api";

export function PlantDirectory() {
	const [sidebar, setSidebar] = useState(false);
	const [plantArray, setPlantArray] = useState([]);
	const [searchQuery, setSearchQuery] = useState("");
	const [searchNotFound, setSearchNotFoundBoolean] = useState(false);
  const navigate = useNavigate();

	useEffect(() => {
		async function fetchData() {
			try {
				const response = await api.getAllPlants();
				setPlantArray(response);
			} catch (error) {
				console.log("error", error);
			}
		}
		fetchData();
	}, []);

	const showSideBar = () => {
		const sidebarDiv = document.querySelector(".sidebar");
		sidebarDiv.style.display = "none";
		if (sidebar) {
			sidebarDiv.style.display = " ";
			sidebarDiv.style.display = "none";
			setSidebar(false);
		} else {
			sidebarDiv.style.display = " ";
			sidebarDiv.style.display = "block";
			setSidebar(true);
		}
	};

	const saveSearchQuery = (event) => {
		setSearchQuery(event.target.value.toLowerCase());
	};

	const searchForPlant = async (event) => {
		event.preventDefault();
		try {
			const res = await api.searchPlant(searchQuery)
		} catch (error) {
			if (error.response.status === 401) {
				navigate("/");
			} else {
				setSearchNotFoundBoolean(true);
			}
		}
	};

	return (
		<section id="plant-directory">
			<div className="sidebar">
				<ul>
					<FontAwesomeIcon
						icon="arrow-left"
						id="small-arrow"
						onClick={showSideBar}
					/>
					<li>
						<Link to={"/myplants"}>My Plants</Link>
					</li>
				</ul>
			</div>

			<nav className="is-flex is-justify-content-space-evenly" id="navbar">
				<FontAwesomeIcon
					icon="bars"
					size="2x"
					id="burger"
					onClick={showSideBar}
				/>
				<p>Plant Directory</p>
			</nav>

			<div className="level-item" id="searchbar">
				{searchNotFound ? (
					<p className="has-text-danger">Plant not found. Please try again</p>
				) : (
					<br />
				)}
				<form>
					<div className="field has-addons">
						<p className="control">
							<input
								className="input"
								type="text"
								placeholder="Search for Plant"
								onChange={saveSearchQuery}
							></input>
						</p>
						<p className="control">
							<input
								className="button"
								type="submit"
								value="Search"
								onClick={searchForPlant}
							></input>
						</p>
					</div>
				</form>
			</div>

			<div className="all-plants">
				{plantArray.map((plant) => (
					<Link to={`/plant/${plant.id}`} key={plant.id}>
						<GridImage
							key={plant.plant_id}
							image={`/images/${plant.image}`}
							name={plant.title}
						/>
					</Link>
				))}
			</div>
		</section>
	);
}
