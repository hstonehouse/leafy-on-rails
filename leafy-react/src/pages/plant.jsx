import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import api from "../api";

export function PlantPage() {
	let { id } = useParams();

	const [title, setTitle] = useState(""); // the common name of the plant
	const [name, setName] = useState(""); // the scientific name of the plant
	const [light, setLight] = useState(""); // info on how much light the plant needs
	const [water, setWater] = useState(""); // info on how much water the plant needs
	const [petSafe, setPetSafe] = useState(""); // info on whether or not the plant is pet-safe
	const [plantImage, setPlantImage] = useState(""); // the plant image URL
  const [aliasesArray, setAliasesArray] = useState([]); // other names the plant is known by

	useEffect(() => {
		async function fetchPlantData() {
			try {
				const response = await api.getOnePlant(id);
				setTitle(response.title);
				setName(response.name);
				setLight(response.light);
				setWater(response.water);
				setPetSafe(response.pet_safe);
				setPlantImage(response.image);
        setAliasesArray(response.alias_names);
			} catch (error) {
				console.log("error", error);
			}
		}
		fetchPlantData();
	}, [id]);

	return (
		<section>
			<div className="plant-container">
				<div className="plantsquare">
					<img src={`/images/${plantImage}`} alt={name} id="single-plant" />
					<p className="bottom-left">{title}</p>
				</div>
			</div>

			<div className="is-flex-direction-column name-container">
				<p className="plant-name">{name}</p>
				<p className="plant-title">{title}</p>
			</div>

			<div className="plant-info">
				<p className="subheading">Light</p>
				<p className="description">{light}</p>
				<p className="subheading">Water</p>
				<p className="description">{water}</p>
				<p className="subheading">Pet safe?</p>
				<p className="description">{petSafe}</p>
        <p className="subheading">Other names</p>
        {aliasesArray.map((alias) => {
          return <p className="description">{alias}</p>
        })}
			</div>
		</section>
	);
}
