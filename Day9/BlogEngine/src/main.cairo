use BlogEngine::db::create_user;
use BlogEngine::db::create_post;
use BlogEngine::utils::display_post;


fn main(){
    let create_new=create_user('cecilia kanini','mulandi@gmail.com');
    let create_new_post=create_post('new beginnings','xyz',create_new);
    let result=display_post(create_new_post);
    result
}
