@if ($paginator->hasPages())
    <div class="row">
        <div class="col-lg-6">
        <ul class="pagination  page">
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())

                <li>
                    <button type="button" class="btn m-btn--pill m-btn--air         btn-secondary m-btn m-btn--custom" disabled="disabled"><font id="WOW_TRANSLATE_561" class="WOW_TRANSLATE_STYLE" >&laquo;</font></button>
                </li>
            @else
                <li>
                    <a  class ="m-datatable__pager-link m-datatable__pager-link--prev m-datatable__pager-link--disabled" href="{{ $paginator->previousPageUrl() }}" rel="prev">
                            <button type="button" class="btn m-btn--pill m-btn--air         btn-secondary"><font id="WOW_TRANSLATE_365" class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="365">&laquo;</font></button>
                    </a>
                </li>
            @endif

            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <li class="disabled"><span>{{ $element }}</span></li>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li>
                                <button type="button" class="btn m-btn--pill m-btn--air         btn-outline-primary"><font id="WOW_TRANSLATE_405" class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="405">{{ $page }}</font></button>
                            </li>
                        @else

                            <li><a href="{{ $url }}">
                                    <button type="button" class="btn m-btn--pill m-btn--air         btn-secondary"><font id="WOW_TRANSLATE_365" class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="365">{{ $page }}</font></button>
                                </a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())

                <li><a href="{{ $paginator->nextPageUrl() }}" rel="next">
                        <button type="button" class="btn m-btn--pill m-btn--air         btn-secondary"><font id="WOW_TRANSLATE_365" class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="365">&raquo;</font></button>
                    </a></li>
            @else
                <li class="disabled">
                    <button type="button" class="btn m-btn--pill m-btn--air         btn-secondary" disabled="disabled"><font id="WOW_TRANSLATE_561" class="WOW_TRANSLATE_STYLE" >&raquo;</font></button>
                </li>
            @endif
        </ul>
        </div>
    </div>

    <style>
        .page li {margin-left: 5px; }
    </style>
@endif






