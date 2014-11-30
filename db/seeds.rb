# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



user_arr = ["adam", "john", "joe", "margy", "rose", "robb", "eva", "ned"]

user_arr.each do |ind_user|
  ind_user = User.create(:username => ind_user, :password => "apassword")
end


user_arr.each do |ques_user|
  theuser = User.find_by(username: ques_user)
  Question.create({
    user_id: theuser.id,
    question: "Hi, I am #{ques_user} and this is my first question on this site.!!",
  })
end



blob = "What are the different roles that you can do in Recruitment?
Why did you choose recruiter as a career?
How do you rate yourself in a scale of 1 to 10 10 being the highest as a recruiter?
What are your responsibilities with your current employer?
What is the turnover of your present employer?
With your current employer, how many consultants are working in USA in your payroll (w2) and on corp to corp?
What other activities you have done apart from recruiter role?
What is the difference between proactive and reactive hiring?
What are the Talent Management Tools that you have worked with?
Have you ever submitted a resume to a client portal (example: Wipro portal, Deloitte portal)?
Do you have a separate candidate database for each skill set? With how many vendors you have strong relationship?
Have you worked as a single point of contact for your client or tier1 client to get requirements?
Have you worked on NON-IT requirements?
What do blind people see in their dreams?
Whats Faster, Light or Dark?
Can you get cornered in a round room?
How come popcorn isn't a vegetable?
Do stuttering people stutter when they're thinking to themselves?
Why are you IN a movie, but your ON TV?
Do stairs go up or down?
Why does the label on children Tylenol tell you not to operate heavy machinery or vehicles?
If anything's possible, then is it possible that nothing's possible?
Why do people wash their bath towels when you're clean when you use them
If the police arrest a mime, do they tell him he has the right to remain silent?
Why do they put Braille on the drivethrough bank machines?
If man evolved from monkeys and apes, why do we still have monkeys and apes?
If one synchronized swimmer drowns, do the rest drown too?
If you try to fail, and succeed, which have you done? 
What if you stood on the very center of the north pole and dropped a lightsaber or something that would just drop right through cutting through everything. Would it come out of the ground on the other side of the world? Just poping up from the ground?
How does a Real Estate company sell its office without causing confusion? 
Are eyebrows considered facial hair?
If a baby's leg pops out at 11:59 PM but his head doesn't come out until 12:01, which day was he born on?
In the song Yankee Doodle, is he calling the horse or the feather macaroni?
Is there a time limit on fortune cookie predictions?
Since bread is square, then why is sandwich meat round?
Do they have the word dictionary in the dictionary?
Can you daydream at night?
Why is it that on a phone or calculator the number five has a little dot on it?
Can crop circles be square?
If ghosts can walk through walls and glide down stairs, why don't they fall through the floor?
What do you do when you see an endangered animal that is eating an endangered plant?
If a doctor suddenly had a heart attack while doing surgery, would the other doctors work on the doctor or the patient?
How can something be new and improved? If it's new, what was it improving on?
When there's two men who get married, do they both go to the same bachelor party?
If a guy that was about to die in the electric chair had a heart attack should they save him? 
If London Bridge is standing why is there a song about it falling down?
Why is it that before / they always showed the emergency broadcast system test, and on / they never used it?
If a nursing mother had her nipples pierced would the milk come out of all three holes?
How old would you be if you didn’t know how old you are?
Which is worse, failing or never trying?
If life is so short, why do we do so many things we don’t like and like so many things we don’t do?
When it’s all said and done, will you have said more than you’ve done?
What is the one thing you’d most like to change about the world?
Are you doing what you believe in, or are you settling for what you are doing?
If the average human life span was 40 years, how would you live your life differently?
To what degree have you actually controlled the course your life has taken?
Are you more worried about doing things right, or doing the right things?
You're having lunch with three people you respect and admire.  They all start criticizing a close friend of yours, not knowing she is your friend.  The criticism is distasteful and unjustified.  What do you do?
If you could offer a newborn child only one piece of advice, what would it be?
Would you break the law to save a loved one?
Have you ever seen insanity where you later saw creativity?
What’s something you know you do differently than most people?
How come the things that make you happy don’t make everyone happy?
Are you holding onto something you need to let go of?
If you had to move to a state or country besides the one you currently live in, where would you move and why?
Do you push the elevator button more than once?  Do you really believe it makes the elevator faster?
Would you rather be a worried genius or a joyful simpleton?
Why are you, you?
Have you been the kind of friend you want as a friend?
Which is worse, when a good friend moves away, or losing touch with a good friend who lives right near you?
What are you most grateful for?
Would you rather lose all of your old memories, or never be able to make new ones?
Is is possible to know the truth without challenging it first?
Has your greatest fear ever come true?
Do you remember that time 5 years ago when you were extremely upset?  Does it really matter now?
What is your happiest childhood memory?  What makes it so special?
At what time in your recent past have you felt most passionate and alive?
If not now, then when?
If you haven’t achieved it yet, what do you have to lose?
Why do religions that support love cause so many wars?
Is it possible to know, without a doubt, what is good and what is evil?
If you just won a million dollars, would you quit your job?
Would you rather have less work to do, or more work you actually enjoy doing?
Do you feel like you’ve lived this day a hundred times before?
When was the last time you marched into the dark with only the soft glow of an idea you strongly believed in?
If you knew that everyone you know was going to die tomorrow, who would you visit today?
Would you be willing to reduce your life expectancy by 10 years to become extremely attractive or famous?
When is it time to stop calculating risk and rewards, and just go ahead and do what you know is right?
If we learn from our mistakes, why are we always so afraid to make a mistake?
What would you do differently if you knew nobody would judge you?
When was the last time you noticed the sound of your own breathing?
What do you love?  Have any of your recent actions openly expressed this love?
Why does milk go bad when it is not refrigerated but stays fresh in a cow that is not refrigerated?
Why don't woodpeckers get headaches from slamming their faces on trees all day?
What are you supposed to do when you see an endangered animal eating an endangered plant?
What color would a chameleon in a room full of mirrors be?
Do sheep get static cling when they rub against one another?
Why do they call it 'getting your dog fixed' if it no longer works afterwards?
Do one legged ducks swim in circles?
If a Bullterrier is a cross between a Bull dog and a Terrier what would you call a cross between a Bull dog and a Shitsu?
Why do we call dogs bitches when cats fit the description better?
How can something be 'new' and 'improved'? What was it improving on if it is new?
Do dentists go to other dentists or do they do it themselves?
Why do they call steam rollers, steam rollers when there are no steam involved whatsoever?
Do Atheists get insurance for acts of God?
How does a shelf salesman keep his store from looking empty?
If FEDEX an UPS were to merge, would they call it FED UP?
If psychic were really psychic, wouldn't they call you first?
Do crematoriums give discounts for burn victims?
If you instruct a cab driver to reverse, would he end up paying you?
Why is it called a TOOTHbrush when you brush all of your teeth at the same time?
If Pluto had earthquakes what would they be called?
If it is true that the world is coming to an end in 2012 according to the Mayan Calender on which planet will the 2020 Olympics be held?
How much deeper would the sea be if sponges didn't grow there?
What would happen to the sea level if all the boats in the world were taken out at once?
If you own a piece of land, do you own it all the way to the centre of the earth?
If all the world is a stage, where is the audience sitting?
If you yell at plants instead of talking to them, would they still grow, only to be troubled and insecure?
When you see a heat wave, should you wave back?
Is the word 'dictionary' in the dictionary?
Why is it that we 'get into hot water' when we 'skate on thin ice'?
If there is an exception to every rule, is there an exception to that rule?
If pro is the opposite of con, is progress the opposite of congress?
If you try to fail, and succeed, which have you done?
If a book about failure doesn't sell, is it a success?
Is 12-15 years in school really worth it if you can only remember how to read, write, use a calculator and a map?
When schools say they are preparing children for the future and highly educated people are of the opinion that the future is looking bleak, what exactly do they prepare for?
If you live in a three storey house and you were on the second level, were you upstairs or downstairs?
Why is vanilla ice cream white if vanilla extract is brown?
Why can't you buy a Hotdog at McDonalds?
Why is 'never take candy from strangers' not applicable when we celebrate Halloween?
Why do they put holes in crackers?
If prunes are dehydrated plums, where does prune juice come from?
Do cannibals get drunk when they eat drunk people?
If a doctor has a heart attack while doing surgery, do the other doctors work on the doctor or the patient?
If an ambulance run someone over while on their way to help someone else, do they stop or go?
Is it legal to travel in reverse as long as you follow the direction of the traffic?
If the only witness says 'no' when asked to tell the truth, the whole truth and nothing but the truth, what does the court do?
How do you handcuff a one-armed man?
Who said: 'Quit while you are ahead' if quitters never win and winners never quit?
If a compulsive liar tells you he is a compulsive liar do you believe him?
Can a short person 'talk down' to a taller person?
When two men 'marry' do they go to the same bachelor party?
Why do superheroes wear their underwear on the outside of their clothes?
What did the first woman ever to shave her legs use?
Does anybody ever vanish with a trace?
If people from Poland are called Poles, why don't they call people from Holland Holes?
Can't the postman give it to the garbage man and save us the hassle?
Why don't black guys get white tattoos?
Why do they call it Alcoholics Anonymous meetings when the first thing they do is stand up and say their names.
Why don't they make curtains double sided so it looks nice on both sides of your home?
Is there ever a week that mattresses are not on sale?
If an escalator breaks down, does its name change to stairs?
How is the handicapped parking situation handled at the Special Olympics?
What would you say to a golfer if you were a golf ball and you could speak?
If sports commentators always know better why aren't they on the field?
If you look at packed sports stadiums are spectators all the people who wished they could play?
Why are all of the most popular sports played with a ball, can't they find/invent something new?
Is there a time limit on fortune cookie predictions?
Can you daydream at night time?
What if you don't have time for a time management course?"
 

ques_arr =  blob.split(/\n/)

ques_arr.each do |ind_ques|
  random_user = rand(9-1) + 1
  theuser = User.find(random_user)
  Question.create({
    user_id: theuser.id,
    question: ind_ques,
  })
end