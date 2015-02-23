<script>
var audio, playbtn;
function initAudioPlayer(){
   

    audio = new Audio();

    <% @songs.each do |song| %>
    
    audio.src = '<%= song.audio.url %>';

    <% end %>

    audio.controls = true;
    

   
    audio.loop = true;
    audio.pause();


    // Set object references
    playbtn = document.getElementById("playpausebtn");
    
    // Add Event Handling
    playbtn.addEventListener("click",playPause);
   
    // Functions
    function playPause(){
        if(audio.paused){
            audio.play();
            playbtn.style.background = "url(images/player/pause.png) no-repeat";
        } else {
            audio.pause();
            playbtn.style.background = "url(images/player/play.png) no-repeat";
        }
    }
    
}
window.addEventListener("load", initAudioPlayer);
</script>

 <!--script for analyzer starts here-->

<script>
// Create a new instance of an audio object and adjust some of its properties
var audio = new Audio();
audio.src = '';

audio.loop = true;
audio.autoplay = false;

// Establish all variables that your Analyser will use
var canvas, solo, ctx, source, context, analyser, fbc_array, bars, bar_x, bar_width, bar_height;
// Initialize the MP3 player after the page loads all of its HTML into the window
window.addEventListener("load", initMp3Player, false);
function initMp3Player(){
    document.getElementById('audio_box').appendChild(audio);
    context = new webkitAudioContext(); // AudioContext object instance
    solo = document.getElementById('solo_render');
    analyser = context.createAnalyser(); // AnalyserNode method
    canvas = document.getElementById('analyser_render');
    ctx = canvas.getContext('2d');
    // Re-route audio playback into the processing graph of the AudioContext
    source = context.createMediaElementSource(audio); 
    source.connect(analyser);
    analyser.connect(context.destination);
    frameLooper();
}
// frameLooper() animates any style of graphics you wish to the audio frequency
// Looping at the default frame rate that the browser provides(approx. 60 FPS)
function frameLooper(){
    window.webkitRequestAnimationFrame(frameLooper);
    fbc_array = new Uint8Array(analyser.frequencyBinCount);
    analyser.getByteFrequencyData(fbc_array);
    ctx.clearRect(0, 0, canvas.width, canvas.height); // Clear the canvas
    ctx.fillStyle = '#00CCFF'; // Color of the bars
    bars = 100;
    for (var i = 0; i < bars; i++) {
        bar_x = i * 3;
        bar_width = 2;
        bar_height = -(fbc_array[i] / 2);
        //fillRect( x, y, width, height ) // Explanation of the parameters below
        ctx.fillRect(bar_x, canvas.height, bar_width, bar_height);
    }
}
</script>