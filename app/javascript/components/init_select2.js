import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();
  $('.select2-filter').select2({
    placeholder: "catégorie"
  });
};

export { initSelect2 };
