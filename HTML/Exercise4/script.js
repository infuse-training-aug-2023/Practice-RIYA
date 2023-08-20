const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

const printUserProfile = () => {
    const { name, designation, company, hobbies } = user;
    const hobbiesList = hobbies.join(', ');

    console.log(`${name} is a ${designation} at ${company}. He likes ${hobbiesList}`);
}

printUserProfile();

