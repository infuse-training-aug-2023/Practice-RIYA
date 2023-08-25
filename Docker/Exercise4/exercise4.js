const axios = require('axios');
    
async function getRandomUser(apiUrl) {
  try {
    const data = await axios.get(apiUrl);
    console.log(data)
  } catch(err) {
    console.log("error: Couldn't fetch data ", err);
  }

}

async function main(){
    const apiUrl = process.env.API_URL;
    console.log(apiUrl)
    if(apiUrl){
        await getRandomUser(apiUrl)
    }
    else{
        console.log("Please enter API in API_URL")
        process.exit(1)
    }
}

main()

