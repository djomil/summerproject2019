//let map = require('../../app/views/contacts/index.html.erb');
//console.log("....................................kkkkkkkkk..");
//describe("Map leaflet", function() {
  //  var a;
//      beforeEach(function() {
//     maptest = new Maptest ();
//   });
  
// it("should show the flags concerning the position of the center",function()){
     //console.log("......................................");
     //console.log(map.L);
//      map.marker([57.1865, -2.2124]).addTo(map);
//     expect( maptest.marker([]).addTo(map)).toEqual(([57.1865, -2.2124]));
 //    a = true;
  //  expect(a).toEqual(true);
     
 // };
      //   });
      //   
// var map =('../app/views/contacts/index.html.erb.');
//var map;
//    
//describe("Map flags", function() {
//        var map;
//    it("and so is a spec", function() {
//        
//        map = true;
//         expect(map).toBe(true);
//  });
//}); 

//var map =('../app/views/contacts/index.html.erb.');



	   



    
describe("Map flags- position", function() {
        //var map = L.map('mapid').setView([57.1865, -2.2124]);
       var map;
    it("should show the flags concerning the position of the center",function() {
          assert.equal(myMap.getCenter().toString(),
            "LatLng(0, 8.846)",
            "The map is centered at the ZMT's longitude, and the equator"
    );

  });
});

        //example test
        
// describe("A suite is just a function", function() {
 // var a;
 // it("and so is a spec", function() {
    //a = true;
   // expect(a).toBe(true);
    
  


 
