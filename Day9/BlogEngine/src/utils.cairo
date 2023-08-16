use BlogEngine::models::Post;
use debug::PrintTrait;
impl PostPrintImp of PrintTrait<Post>{
    fn print(self:Post){
    self.title.print();
    self.content.print();
    self.author.username.print();
    self.author.email.print();

    }
}
fn display_post(post: Post){
    post.print();
}