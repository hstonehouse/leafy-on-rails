const base_url = "http://localhost:3000/api";

class api {
  async getAllPlants() {
    try {
      const response = await fetch(`${base_url}/plantdirectory`);
      return response.json();
    } catch (error) {
      console.log("error", error)
    }
  }

  async getOnePlant(id) {
    try {
      const response = await fetch(`${base_url}/plant/${id}`);
      return response.json();
    } catch (error) {
      console.log("error", error)
    }
  }

  async searchPlant(query) {
    try {
      const response = await fetch(`${base_url}/plantsearch/${query}`);
      const plant = await response.json();
      return plant;
    } catch (error) {
      console.log("error", error)
    }
  }

  async getMyPlants(id) {
    try {
      const response = await fetch(`${base_url}/${id}/myplants`);
      const myPlants = await response.json();
      return myPlants;
    } catch (error) {
      console.log("error", error)
    }
  }
}

export default new api();