<script >

//API_URL = ""

    export default {
    data() {
        
        return {
            weather: []
        }
    },
    
    created() {
        //fetch on init
        this.fetchData()
    },

   /* watch: {
        //fetche whenever weather changes
        weather :'fetchData'
    },*/

    methods: {
        async fetchData() {
            var url = 'https://api.openweathermap.org/data/2.5/weather?lat=43.1940&lon=-80.3845&appid=caaa6cdd64e57e4417ffee9aebadfd6f'
            this.commits = await (await fetch(url)).json()
            this.weather = this.commits

            console.log(this.commits)
        },
    }
}


//<div v-if="displayWeather" class="container display-weather-section"><h1>{{weather.name}}</h1></div>

</script>

<template>
  
    <div id = 'app'>
        <div class = 'location'>
            <div class = "weatherinfo">
                <div class="city"><h1>{{weather.name}}</h1></div>
                <h3>{{(weather.main?.temp-273).toFixed()}}&deg; Celius</h3>
                <h3>{{weather.weather ? weather?.weather[0].description : ''}}</h3> 
            </div>
        </div>
    </div>


</template>


<style>
.weatherinfo {
  border: 3px solid black;
  padding: 10px;
}
.city{
  font-family: Avenie, Helvetica, Arial, sans-serif;
  font-size: 18px;
  
}
</style>