"use strict";

var paths = [];

function move ( x, y, path, xMax, yMax ) {

    if ( x < xMax ) {

        move( x + 1, y, path.concat( {
            x, y
        } ), xMax, yMax );

    }

    if ( y < yMax ) {

        move( x, y + 1, path.concat( { x, y } ), xMax, yMax );

    }

    if ( x === xMax && y === yMax ) {

        paths.push( path );

    }

}

move( 0, 0, [], 2, 2 );

console.log( paths );
console.log( paths.length );