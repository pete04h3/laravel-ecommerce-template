<div>
    <style>
        nav svg {
            height: 20px;
        }

        nav .hidden {
            display: block !important;
        }

        .wrap-pagination-info {
            margin-top: 46px;
            border-top: 1px solid #e6e6e6;
        }

        .wrap-pagination-info button {
            border: none;
            font-weight: 800;
            color: dimgray;
        }

        .wrap-pagination-info span {
            border: none !important;
            color: black;
            font-weight: 800;

        }



        .wrap-pagination-info .page-numbers {
            padding: 0;
            margin: 0;
            margin-top: 17px;
        }

        .wrap-pagination-info .page-numbers li {
            display: block;
            list-style: none;
            float: left;
        }

        .wrap-pagination-info .page-numbers li:not(:last-child) {
            margin-right: 10px;
        }

        .wrap-pagination-info .page-numbers li .page-number-item.current {
            display: inline-block;
            color: #ffffff;
            font-size: 14px;
            line-height: 35px;
            font-weight: 700;
            text-align: center;
            min-width: 35px;
            padding: 0 5px;
            height: 35px;
        }

        .wrap-pagination-info .page-numbers li .page-number-item.next-link {
            min-width: 77px !important;
        }

        .wrap-pagination-info .page-numbers li .page-number-item:not(.current) {
            display: inline-block;
            color: #333333;
            font-size: 22px;
            line-height: 34px;
            text-align: center;
            min-width: 35px;
            padding: 0 5px;
            height: 35px;

        }

        .wrap-pagination-info .page-numbers li .page-number-item {
            border: 1px solid;
        }

        .wrap-pagination-info .page-numbers li .page-number-item:hover {
            color: #ffffff;
            font-weight: 700;
        }

        .wrap-pagination-info .result-count {
            display: inline-block;
            font-size: 13px;
            line-height: 35px;
            color: #333333;
            float: right;
            margin: 0;
            margin-top: -2px;
        }

    </style>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong>All Orders</strong>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('order_message'))
                            <div class="alert alert-success" role="alert">
                                {{ Session::get('order_message') }}
                            </div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>
                                        Order ID
                                    </th>
                                    <th>Subtotal</th>
                                    {{-- <th>Discount</th> --}}
                                    <th>Tax</th>
                                    <th>Total</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Mobile</th>
                                    <th>Email</th>
                                    <th>zipcode</th>
                                    <th>Status</th>
                                    <th>Order Date</th>
                                    <th colspan="2" class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orders as $order)
                                    <tr>
                                        <td>{{ $order->id }}</td>
                                        <td>${{ $order->subtotal }}</td>
                                        {{-- <td>{{ $order->discount }}</td> --}}
                                        <td>${{ $order->tax }}</td>
                                        <td>${{ $order->total }}</td>
                                        <td>{{ $order->firstname }}</td>
                                        <td>{{ $order->lastname }}</td>
                                        <td>{{ $order->mobile }}</td>
                                        <td>{{ $order->email }}</td>
                                        <td>{{ $order->zipcode }}</td>
                                        <td>{{ $order->status }}</td>
                                        <td>{{ $order->created_at }}</td>
                                        <td><a href="{{ route('admin.orderdetails', ['order_id' => $order->id]) }}"
                                                class="btn btn-info btn-sm">Details</a>
                                        </td>
                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-success btn-sm dropdown-toggle" type="button"
                                                    data-toggle="dropdown">Status <span
                                                        class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#"
                                                            wire:click.prevent="updateOrderStatus({{ $order->id }},'delivered')">Delivered</a>
                                                    </li>
                                                    <li><a href="#"
                                                            wire:click.prevent="updateOrderStatus({{ $order->id }},'canceled')">Canceled</a>
                                                    </li>
                                                </ul>

                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="wrap-pagination-info">
                            {{ $orders->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
