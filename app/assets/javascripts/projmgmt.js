$(function(){

  $('#new_user').on('click', '#cancel_new_user', hide_user_form);
  $('#new_client').on('click', '#cancel_new_client', hide_client_form);
  $('#new_project').on('click', '#cancel_new_project', hide_project_form);

});

function hide_user_form()
{
  $('#new_btn').show();
  $('#new_user').empty();
}

function hide_client_form()
{
  $('#new_btn').show();
  $('#new_client').empty();
}

function hide_project_form()
{
  $('#new_btn').show();
  $('#new_project').empty();
}
