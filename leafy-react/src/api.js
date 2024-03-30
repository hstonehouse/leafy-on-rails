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
      const aliasesReq = await fetch(`${base_url}/plantaliases/${id}`);
      const plantReq = await fetch(`${base_url}/plant/${id}`);
      const aliasesRes = await aliasesReq.json();
      const plantRes = await plantReq.json();
      return {...plantRes, aliases: aliasesRes.map(res => res.name)};
    } catch (error) {
      console.log("error", error)
    }
  }

  async searchPlant(query) {
    try {
      const response = await fetch(`${base_url}/plantsearch/${query}`);
      const plant = await response.json();
      console.log(plant)
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