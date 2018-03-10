<script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script type="text/javascript">
    //  ������ �����
    var myMap;

    // ������� �������� API � ���������� DOM.
    ymaps.ready(init);

    function init () {
        myMap = new ymaps.Map('map', {
            center: [55.99803,92.898377],
            zoom: 17,
            controls: ['zoomControl', 'typeSelector',  'fullscreenControl']
        });
        var myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
            balloonContentBody: [
                '<address>',
                '<strong>��� "�������� ����� �����"</strong>',
                '<br/>',
                '�����: 660093 �. ����������, ��. �����������, ��� 12, ���� 43',
                '</address>'
            ].join('')
        }, {
            preset: 'islands#darkBlueDotIcon'
        });
        myMap.geoObjects.add(myPlacemark);
        myMap.behaviors.disable('scrollZoom');
    } 
</script>
<div class="map_resp">
    <div id="map"></div>
</div>