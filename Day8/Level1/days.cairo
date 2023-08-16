
// Create an enum called DaysOfWeek with variants representing the days of the week (Monday, 
// Tuesday, etc.). Implement a function that takes a DaysOfWeek variant and returns a string indicating 
// the day's name. Use pattern matching to achieve this
use debug::PrintTrait;
#[derive(Drop)]
enum DaysOfWeek{
    Monday:(),
    Tuesday:(),
    Wednesday:(),
    Thursday:(),
    Friday:(),
    
    
}

fn return_day(day:DaysOfWeek){
    match day{
        DaysOfWeek::Monday(())=>'its monday'.print(),
        DaysOfWeek::Tuesday(())=>'its Tuesday'.print(),
        DaysOfWeek::Wednesday(())=>'its Wednesday'.print(),
        DaysOfWeek::Thursday(())=>'its Thursday'.print(),
        DaysOfWeek::Friday(())=>'its Friday'.print(),
    }
}


fn main(){
    let today = return_day(DaysOfWeek::Friday(()));
    today
}
