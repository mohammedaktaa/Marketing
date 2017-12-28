<div class="modal fade" id="modal-accept">
    <div class="modal-dialog" style="min-width: 40%">
        {!!Form::open(['class'=>'ajax-form','method'=>'post']) !!}
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                            class="sr-only">@lang('app.close')</span></button>
            </div>
            <div class=" modal-body clearfix margin-sm">
                {!! Form::label('price',trans('app.price')) !!}
                {!! Form::bsText('','price',false,'','','price','',trans('app.price')) !!}
            </div>
            <div class="modal-footer">
                <button type="submit" class="button button-3d button-reveal button-pink " ><i class="icon-plus"></i><span>@lang('app.save')</span></button>
                <button type="button" class="button button-3d button-white color button-reveal  " data-dismiss="modal">
                    <i class="icon-close"></i><span> @lang('app.close')</span></button>
            </div>
        </div>
        {!!Form::close() !!}
    </div>
</div>
<script>
    var modal = $("#modal-accept");
    function open_request_modal($this) {
        var obj = _aut_datatable_getSelectedRow(_aut_datatable_getTableObjectApi('#{{$table}}'), $(($this).closest('tr')));
        modal.attr('data-id', obj.request_id);
        if(obj.price){
            modal.find('#price').val(obj.price);
        }
        $('#modal-accept').modal('show');
    }

    $(function () {
        modal.find('form').attr('action', '{{localizeURL('request/send')}}');
        modal.find('form').on('submit', function (e) {
            e.preventDefault();
            var url = modal.find('form').attr('action');
            var data = modal.find('form').serialize();
            var id= modal.data('id');
            $.ajax({
                type: 'POST',
                url: url+'/'+id,
                data: data,
                success: function (data) {
                    swal({
                        title: accepted,
                        icon: "info",
                        buttons: [language.ok]
                    });
                    aut_datatable_refresh('#modal-accept', true);
                    $('#price').val('');
                }
            })
        })
    })
</script>