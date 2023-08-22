const apiKey = 'ba13a4ad';
const apiUrl = `https://www.omdbapi.com/?apikey=${apiKey}`;

async function fetchMovies(searchQuery, page) {
    try {
        const response = await fetch(`${apiUrl}&s=${searchQuery}&page=${page}`);
        const data = await response.json();
        console.log('API Response:', data);
        return data.Search || [];
    } catch (error) {
        console.error('Error fetching movies:', error);
        return [];
    }
}


function displayMovies(movies) {
    const movieListElement = document.getElementById('movieGrid');
    movieListElement.innerHTML = "";

    movies.sort((e1, e2) => {
        return e1.Year - e2.Year
    } ).forEach(movie => {

        const movieCard = document.createElement('div');
        movieCard.classList.add('movie-card');

        const title = document.createElement('h2');
        title.textContent = movie.Title;

        const year = document.createElement('p');
        year.textContent = `Year: ${movie.Year}`;

        const poster = document.createElement('img');
        poster.src = movie.Poster;
        poster.alt = `${movie.Title} Poster`;

        const type = document.createElement('p');
        type.textContent = `Type: ${movie.Type}`;

        const viewMore = document.createElement('button');
        viewMore.classList.add('viewMore');
        viewMore.innerText = "View More";


     
        
        movieCard.appendChild(poster);
        movieCard.appendChild(title);
        movieCard.appendChild(year);
        movieCard.appendChild(type);
        movieCard.appendChild(viewMore);

        
        movieListElement.appendChild(movieCard);
    });
}

const searchButton = document.getElementById('searchButton');
searchButton.addEventListener('click', async () => {
    const searchInput = document.getElementById('searchInput');
    const searchTerm = searchInput.value.trim();

    if (searchTerm !== '') {
        const movies = await fetchMovies(searchTerm, 1);
        displayMovies(movies);
    }

});

async function getData(){ 
    const searchInput = document.getElementById('searchInput');
    const searchTerm = searchInput.value.trim();

    if (searchTerm !== '' && searchTerm.length >= 3) {
        const movies = await fetchMovies(searchTerm,3);
        displayMovies(movies);
    }
}
