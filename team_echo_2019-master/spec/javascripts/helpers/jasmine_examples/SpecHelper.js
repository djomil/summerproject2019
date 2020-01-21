 
if (typeof define == 'function') {
    var assert = require('assert'),
    L = require('leaflet/src/Leaflet');
    L.teamecho = require('./../teamecho').teamecho;
}


beforeEach(function () {
  jasmine.addMatchers({
    toBePlaying: function () {
      return {
        compare: function (actual, expected) {
          var player = actual;

          return {
            pass: player.currentlyPlayingSong === expected && player.isPlaying
          };
        }
      };
    }
  });
});
