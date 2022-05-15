<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Change password
                    </div>
                    <div class="panel-body">
                        @if (Session::has('password_success'))
                            <div class="alert alert-success" role="alert">
                                {{ Session::get('password_success') }}
                            </div>
                        @endif
                        @if (Session::has('password_error'))
                            <div class="alert alert-danger" role="alert">
                                {{ Session::get('password_error') }}
                            </div>
                        @endif
                        <form class="form-horizontal" wire:submit.prevent="changePassword">
                            @csrf
                            <div class="form-group">
                                <lable class="col-md-4 control-label">Current Password</lable>
                                <div class="col-md-4">
                                    <input type="password" placeholder="Current Password" name="current_password"
                                        class="form-control input-md" wire:model="current_password">
                                    @error('current_password')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <lable class="col-md-4 control-label">New Password</lable>
                                <div class="col-md-4">
                                    <input type="password" placeholder="New Password" name="new_password"
                                        class="form-control input-md" wire:model="password">
                                    @error('password')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <lable class="col-md-4 control-label">Confirm Password</lable>
                                <div class="col-md-4">
                                    <input type="password" placeholder="Confirm Password" name="password_confirmation"
                                        class="form-control input-md" wire:model="password_confirmation">
                                    @error('password_confirmation')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <lable class="col-md-4 control-label"></lable>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
