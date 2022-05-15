<div>
    <style>
        nav .hidden {
            display: block !important;
        }

        nav svg {
            height: 20px;
        }

        svg {
            overflow: hidden;
            vertical-align: middle;
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
                        <div class="row">
                            <div class="col-md-6">All Attributes</div>
                            <div class="col-md-6"><a href="{{ route('admin.add_attribute') }}"
                                    class="btn btn-success pull-right">Add New</a></div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">
                                {{ Session::get('message') }}
                            </div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Created At</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($pattributes as $pattribute)
                                    <tr>
                                        <td>
                                            {{ $pattribute->id }}
                                        </td>
                                        <td>
                                            {{ $pattribute->name }}
                                        </td>
                                        <td>
                                            {{ $pattribute->created_at }}
                                        </td>
                                        <td>
                                            <a
                                                href="{{ route('admin.edit_attribute', ['attribute_id' => $pattribute->id]) }}"><i
                                                    class="fa fa-edit fa-2x"></i>
                                            </a>
                                            <a style="margin-left: 10px;" href="#"
                                                onclick="confirm('Are you sure, you want to delete this attribute?') || event.stopImmediatePropagation()"
                                                wire:click.prevent="deleteAttribute({{ $pattribute->id }})"><i
                                                    class="fa fa-times fa-2x text-danger"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="wrap-pagination-info">
                            {{ $pattributes->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
