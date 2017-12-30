@php
    $id='client_id';
    $imageWidth=276;
    $imageHeight=207;

@endphp
<div class="modal fade" id="modal-image">
    <div class="modal-dialog" style="min-width: 75%">
        <div class="modal-content">
            {!!Form::open(['class'=>'ajax-form','method'=>'put']) !!}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                            class="sr-only">@lang('app.close')</span></button>
                <h4 class="modal-title">@lang('app.update_image')</h4>
            </div>
            <div class=" modal-body clearfix margin-sm">
                {!! Form::thImageUpload('col_full','logo',false,'',true,null,null,'','','','image',$imageWidth!==null?'data-width='.$imageWidth.' data-height='.$imageHeight:'') !!}
            </div>
            <div class="modal-footer">
                <button type="submit" class="button button-3d button-reveal button-reveal "><i
                            class="icon-plus"></i><span>@lang('app.save')</span></button>
                <button type="button" class="button button-3d button-white color button-reveal  " data-dismiss="modal">
                    <i class="icon-close"></i><span> @lang('app.close')</span></button>
            </div>
            {!!Form::close() !!}
        </div>
    </div>
</div>

    <script>
        @if($imageWidth!==null)
        $(function () {
            $('#modal-image').on('shown.bs.modal', function () {
                var name=$(this).data('name');
                _imageCropUpload($(this),name);
            });
        });

        @endif
        function admin_update_image($this) {
            var obj = _aut_datatable_getSelectedRow(_aut_datatable_getTableObjectApi('#{{$table}}'), $($($this).closest('tr')));
            var $imageUrl = $(obj.image).attr('src');
            if (typeof ($imageUrl) == typeof (undefined))
                $imageUrl = $(obj.image).find('img').attr('src');
            var $modal = $('#modal-image');
            $modal.attr('data-name',obj['name_en'].toLowerCase());
            $modal.find('form').attr('action', '{{localizeURL('admin/'.$table)}}/' + obj['{{$id}}']);
            @if($imageWidth===null)
                $modal.find('#image').attr('data-url', $imageUrl)/*.attr('data-title',obj.template_en)*/;
                _imageUpload($modal);
            @else
                $modal.find('.image-crop-upload').attr('src', $imageUrl)/*.attr('data-title',obj.template_en)*/;
            @endif
            $modal.find('#image-name').val($imageUrl.split('/').pop());

            $modal.modal({backdrop: 'static', keyboard: false}).modal('show');
            _validate($modal, 'admin_reloadGrid');
            admin_reloadGrid();
            $('form').on('submit',function () {
                aut_datatable_refresh('.panel-default',true);
            $modal.modal('hide');
            })

        }

        function admin_reloadGrid() {
            aut_datatable_reloadTable(_aut_datatable_getTableObjectApi('#{{$table}}'), null, false, false)
        }

    </script>
    @if($imageWidth!==null)
        {!! $CSS['cropper'] !!}
        {!! $JS['cropper'] !!}
    @endif