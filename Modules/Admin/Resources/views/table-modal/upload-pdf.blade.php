<div class="modal fade" id="modal-upload-pdf" data-url="{{url('files')}}" style="z-index: 199999999">
    <div class="modal-dialog" style="min-width: 75%">
        <div class="modal-content">
            {!!Form::open(['class'=>'ajax-form','method'=>'put']) !!}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                            class="sr-only">@lang('app.close')</span></button>
                <h4 class="modal-title">@lang('admin::menu.upload_doc')</h4>
            </div>
            <div class=" modal-body clearfix ">
                <div class="form-group">
                    <input class="doc-upload" name="doc" type="file" data-type="input" data-url="{{url('files')}}" multiple>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="button button-3d button-white color button-reveal  " data-dismiss="modal">
                    <i class="icon-close"></i><span> @lang('app.close')</span></button>
            </div>
            {!!Form::close() !!}
        </div>
    </div>
</div>

<script>
    function _open_bill_pdf() {
        var $modal = $("#modal-upload-pdf");
        $modal.modal('show');
        var file=$modal.find('.doc-upload').data('param');
        var type=$modal.find('.doc-upload').data('type');
        var url=$modal.data('url');
        $.get({
            url: url,
            data: {file: file},
            success: function (files) {
                _docUpload($modal, file, files.files, files.config,type);
            }
        })
    }
</script>
@section('styles')
    {!! $CSS['datatable'] !!}
    {!! $CSS['bs-filestyle'] !!}
@endsection
@section('scripts')
    {!! $JS['ckeditor'] !!}
    {!! $JS['datatable'] !!}
    {!! $JS['bs-filestyle'] !!}
@endsection