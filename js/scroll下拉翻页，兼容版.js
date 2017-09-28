
<script type="text/javascript">

        var stop = true //防止重复拉取
        $(window).scroll(function(){ 
            totalheight = parseFloat($(window).height()) + parseFloat($(window).scrollTop());
            //$(document).scrollTop() 获取垂直滚动的距离
            //$(document).scrollLeft() 这是获取水平滚动条的距离

                if ($(document).height() <= totalheight) {
                    if(stop==true){ 
                        stop=false; 
                        var page = $('#page').val(); // 获取翻页值
                        var url = "<?php echo $url ?>&page="+page
                        console.log(page)
                        $.get(url,function(res){
                            //console.log(res)
                            if( res == 0 ){
                                $('#more').text('已经到底了')
                            }else{
                                $("#container").append(res) //添加html内容
                                
                                stop=true; 
                            }
                        })
                        var pages = parseInt(page)+1
                        $("#page").val(pages) //设置翻页值
                        
                    }
                }
            
        });


</script>