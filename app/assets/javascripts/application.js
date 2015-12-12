//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui/effect-highlight
//= require jquery.minicolors
//= require jquery.minicolors.simple_form
//= require materialize-sprockets
//= require turbolinks
//= require lazybox
//= require_tree .

var ready;
ready = function() {
  $('select').material_select();
  $('.tooltipped').tooltip({delay: 50});
  $('.datepicker').pickadate({
    labelMonthNext: 'Наступний місяць',
    labelMonthPrev: 'Попередній місяць',
    labelMonthSelect: 'Оберіть місяць',
    labelYearSelect: 'Оберіть рік',
    // monthsFull: [ 'Січень', 'Лютий', 'Березень', 'Квітень', 'Травень', 'Червень', 'Липень', 'Серпень', 'Вересен', 'Жовтень', 'Листопад', 'Грудень' ],
    // monthsShort: [ 'Січ', 'Лют', 'Бер', 'Кві', 'Тра', 'Чер', 'Лип', 'Сер', 'Вер', 'Жов', 'Лис', 'Гру' ],
    // weekdaysFull: [ 'Неділя', 'Понеділок', 'Вівторок', 'Середа', 'Червер', "П'ятниця", 'Субота' ],
    // weekdaysShort: [ 'Нд', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб' ],
    // weekdaysLetter: [ 'Нд', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб' ],
    today: false,
    clear: 'Очистити',
    close: 'Закрити',
    firstDay: 1,
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
