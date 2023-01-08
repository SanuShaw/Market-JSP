
const update_cart = ( id, name, price ) => {
    let cart = JSON.parse(localStorage.getItem('productArray')) || [];

    let item = cart.find( item => item.id === id )
    // Product is already in cart, need to increment
    if ( item ) { 
        item.quantity = item.quantity + 1
        cart.map(product=>product.id==item.id?product.quantity=item.quantity:product)
    }
    // Product is not in cart, need to add it
    else {
        cart.push({
            id,
            name,
            price,
            quantity:1
        })
    }
    localStorage.setItem('productArray', JSON.stringify(cart))
    update_elements();
    $("#success-alert").html("<strong>Success! </strong> Product have added to your Cart.");
    $("#success-alert").show();
    setTimeout(()=>{
        $("#success-alert").hide();
    },2000);
    console.log(cart);
}

const remove_item = (id) => {
    let cart = JSON.parse(localStorage.getItem('productArray')) || [];
    cart = cart.filter((item)=>item.id!=id);
    localStorage.setItem('productArray', JSON.stringify(cart))
    update_elements();
}


const update_elements=()=>{
    let cart = JSON.parse(localStorage.getItem('productArray')) || [];
    document.getElementById("cart_icon").dataset.count = cart.length;

    if(cart.length==0){
        console.log(cart.length)
        document.getElementById("cart_body").innerHTML="<h4>Cart is empty!!</h4>"
        document.getElementById("order_place_btn").disabled = true;
    }
    else{
        let total=0;
        let t_quantity=0;
        var formatter = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'INR',
          });
        document.getElementById("order_place_btn").disabled = false;
        let table=`<table class="table table-hover">
            <thead class="thead light">
            <tr>
                <th scope="col">Item Name</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
        `
        cart.map(item=>{
            table+=`
            <tr>
                <td>${item.name}</td>
                <td>${formatter.format(item.price)}</td>
                <td>${item.quantity}</td>
                <td>${formatter.format(item.price * item.quantity)}</td>
                <td><button type="button" class="btn btn-danger btn-sm" onclick="remove_item(${item.id})">Remove</button><td>
            </tr>
            `
            total+=item.price * item.quantity;
            t_quantity+=item.quantity;
        })
        document.getElementById("total_quantity").value=t_quantity;
        document.getElementById("total_amount").value=total;

        table+="<tr><th colspan=3 style='text-align:right'>Total Amount to Pay </th><th colspan=2>"+formatter.format(total)+"</th></tr>";
        table+="</tbody></table>";
        document.getElementById("cart_body").innerHTML=table;

    }
}

$(function() {
    console.log( "ready!" );
    update_elements();
    $("#success-alert").hide();
});