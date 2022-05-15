<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order Confirmation</title>
</head>

<body>
    <p>Hi {{ $order->firstname }} {{ $order->lastname }}</p>
    <p>Your order has been placed successfully.</p>
    <br>
    <table style="width: 600px; text-align: right">

        <thead>
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>

            </tr>
        </thead>
        <tbody>
            @foreach ($order->orderItems as $item)
                <tr>
                    <td><img src="{{ asset('assets/images/products') }}/{{ $item->product->image }}" alt=""
                            width="100px"></td>
                    <td>{{ $item->product->name }}</td>
                    <td>{{ $item->quantity }}</td>
                    <td>${{ $item->price * $item->quantity }}</td>

                </tr>
            @endforeach
            <tr>
                <td colspan="3" style="border-top: 1px solid #ccc;"></td>
                <td style="border-top: 1px solid #ccc;"><strong>Subtotal : ${{ $order->subtotal }}</strong></td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td><strong>Tax : ${{ $order->tax }}</strong></td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td><strong>Shipping : Free shipping</strong></td>
            </tr>
            <tr>
                <td colspan="3"></td>
                <td style="font-size:22px;"><strong>Total : ${{ $order->total }}</strong></td>
            </tr>
        </tbody>

    </table>
</body>

</html>
