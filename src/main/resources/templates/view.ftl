<#import "parts/common.ftl" as c>

<@c.page>

    <div id="wrapper">
    </div>
    <div class="container-fluid" style="min-height: 90vh;">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="text-center">Выбор отчета для просмотра</h1>
            </div>
        </div>
        <div class="row" style="margin-top: 40px;">
            <div class="col-lg-4">
                <div style="height: 200px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                    <p>Отчет по продажам</p>
                    <hr style="border-color: black;">
                    <img src="/static/images/histogram.png" width="70%" height="70%">
                </div>
            </div>
            <div class="col-lg-4">
                <div style="height: 200px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                    <p>Отчет 1</p>
                    <hr style="border-color: black;">
                    <img src="/static/images/histogram.png" width="70%" height="70%">
                </div>
            </div>
            <div class="col-lg-4">
                <div style="height: 200px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                    <p>Закупки по регионам</p>
                    <hr style="border-color: black;">
                    <img src="/static/images/histogram.png" width="70%" height="70%">
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 40px;">
            <div class="col-lg-4">
                <div style="height: 200px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                    <p>1</p>
                    <hr style="border-color: black;">
                    <img src="/static/images/histogram.png" width="70%" height="70%">
                </div>
            </div>
            <div class="col-lg-4">
                <div style="height: 200px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                    <p>О2</p>
                    <hr style="border-color: black;">
                    <img src="/static/images/histogram.png" width="70%" height="70%">
                </div>
            </div>
            <div class="col-lg-4">
                <div style="height: 200px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                    <p>3</p>
                    <hr style="border-color: black;">
                    <img src="/static/images/histogram.png" width="70%" height="70%">
                </div>
            </div>
        </div>
    </div>
    <script>
        $('#input-excel').change(function(e){
            var reader = new FileReader();
            reader.readAsArrayBuffer(e.target.files[0]);
            reader.onload = function(e) {
                var data = new Uint8Array(reader.result);
                var wb = XLSX.read(data,{type:'array'});
                var htmlstr = XLSX.write(wb,{sheet:"sheet1", type:'binary',bookType:'html'});
                $('#wrapper')[0].innerHTML += htmlstr;
            }
        });
    </script>


</@c.page>