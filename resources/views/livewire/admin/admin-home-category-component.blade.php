<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Manage Home Categories
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">
                                {{ Session::get('message') }}
                            </div>
                        @endif
                        <form action="" method="POST" class="form-horizontal" wire:submit.prevent="updateHomeCategory">
                            <div class="form-group"><label for="" class="col-md-4 control-label">Choose
                                    Categories</label>
                                <div class="col-md-4" wire:ignore>
                                    <select class="sel_categories select2-multiple form-control" name="categories[]"
                                        multiple="multiple" id="select2Multiple" wire:model="selected_categories">
                                        {{-- @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach --}}
                                        @foreach ($categories as $category)
                                            <option
                                                @if ($selected_categories != null) @if (in_array($category->id, $selected_categories))
                                                selected @endif
                                                @endif
                                                value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>


                                </div>
                            </div>

                            <div class="form-group"><label for="" class="col-md-4 control-label">No of
                                    Products</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control input-md" wire:model="numberofproducts">
                                </div>
                            </div>

                            <div class="form-group"><label for="" class="col-md-4 control-label">
                                </label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
