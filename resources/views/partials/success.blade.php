@if(session()->has('success'))
    <div class="alertg alert-dismissable alert-success">
        <button type="button" class="close" data-dismiss="alert" aerial-label="Close">
        <span aria-hidden="true">$times;</span>
        </button>
        <strong>
            {!! session()->get('success') !!}
        </strong>
    </div>
@endif