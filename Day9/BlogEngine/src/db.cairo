
use BlogEngine::models::User;
use BlogEngine::models::Post;
fn create_user(username:felt252,email:felt252)->User{
    User{
        username:username,
        email:email
    }
}


fn create_post(title:felt252,content:felt252,author:User)->Post{
    Post{
        title:title,
        content:content,
        author:author
    }
}