function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';
      console.log(x);
    }
    console.log(x);  // x is permanently redefined after line 4
  }

  function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';
      console.log(x);
    }
    console.log(x);  // works fine, prints in block, out of block
  }

  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      //var x = 'in block'; // cannot redeclare const x
      console.log(x);
    }
    console.log(x);
  }

  function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';
      console.log(x);
    }
    console.log(x); // works correctly, prints in block, out of block
  }

  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';
      console.log(x);
    }
    //let x = 'out of block again';  // cannot redeclare x in the same scope
    console.log(x);
  }