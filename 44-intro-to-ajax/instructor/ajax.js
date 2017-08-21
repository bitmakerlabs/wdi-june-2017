document.addEventListener('DOMContentLoaded', function() {
    // DECLARE VARIABLES
    // 'Get Monsters' button
    var button = document.getElementById( 'get_monsters' );

    // 'Post Monster' button
    var postMonsterButton = document.getElementById( 'post_monster' );

    // EVENT HANDLER FOR 'GET' REQUEST
    button.addEventListener( 'click', function() {
        console.log( 'CLICKED BUTTON' );

        console.log( 'BEFORE AJAX REQUEST' );

        // MAKE AJAX REQUEST
        // CAPTURE RETURN VALUE (`jqXHR` OBJECT) IN `request` VARIABLE.
        var request = $.ajax( {
            url: 'https://monsters-api.herokuapp.com/monsters',
            method: 'GET',
            dataType: 'html',
        } );

        // CALL METHODS ON `request`
        // `.done()` CALLBACK IS INVOKED WHEN THE REQUEST SUCCEEDS.
        request.done( function( data ) {
            console.log( 'REQUEST SUCCEEDED' );

            var myElement = document.createElement( 'div' );
            myElement.innerHTML = data;
            document.body.append( myElement );
        } );

        // `.fail()` CALLBACK IS INVOKED WHEN THE REQUEST FAILS.
        request.fail( function( jqXHR, textStatus, errorThrown ) {
            console.log( 'REQUEST FAILED' );
            // console.log( textStatus, errorThrown );

            var msg = document.createElement( 'p' );
            msg.innerText = 'Whoops, something went wrong!';
            document.body.append( msg );
        } );

        // `.always()` CALLBACK IS INVOKED IF THE REQUEST SUCCEEDS *OR* FAILS.
        request.always( function() {
            console.log( 'REQUEST COMPLETE' );
        } );

        console.log( 'AFTER AJAX REQUEST' );
    } );


    // EVENT HANDLER FOR 'POST' REQUEST
    postMonsterButton.addEventListener( 'click', function() {
        console.log( 'CLICKED POST MONSTER' );

        // SENT MONSTER DATA TO API.
        // NOTE:
        // - `.done()` and `.fail()` ARE CHAINED *DIRECTLY* TO `.ajax()`.
        $.ajax( {
            url: 'https://monsters-api.herokuapp.com/monsters',
            method: 'POST',
            data: {
                monster: {
                    name: 'Metal Lord',
                    home: 'City-A',
                    creepiness: 999
                }
            }
        } ).done( function( data ) {
            console.log( 'POST SUCCEEDED' );
        } ).fail( function() {
            console.log( 'POST FAILED' );
        } );

    } );

});
