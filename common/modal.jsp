
  <!-- Modal -->
  <style>
    .btn-primary{
        background-color: #0e1c36f6 !important;
        border-color: #0e1c36 !important;
    }
    </style>
  </style>
  <div class="modal fade" id="Cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">My Cart</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="./validation_pages/place_order.jsp" method="post">
          <div class="modal-body">
              <div id="cart_body">

              </div>

              <input type="hidden" name="total_amount" id="total_amount" value=0/>
              <input type="hidden" name="total_quantity" id="total_quantity" value=0/>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" id="order_place_btn">Place Order</button>
          </div>
        </form>
      </div>
    </div>
  </div>