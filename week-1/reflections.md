#1.1 Think About Time Reflection

I learned about a bunch of the time management techniques listed on the exercise, including time boxing, the pomodoro technique, and mindfulness/meditation. One of the techniques, time boxing, is a technique where a set period of time is agreed upon to work on a goal. After the time is up, you stop working and analyze what you’ve done versus what you still have to do.  The one I was most interested in was the pomodoro technique. Currently I use this technique to manage my time, but I don’t have as much formal structure around it. I think it’ll be much more useful to structure the on/off times and reflect on what I’ve done during the active times. It generally works for me, but reflecting and figuring out the right size of my time blocks will make it much more productive. I’ll plan on using this technique as I work through the Dev Bootcamp program, and pull in aspects of other techniques as needed. 

#1.2 The Command Line Reflection

A shell is the non-graphical way to access your computer, where you can directly access commands and directories within your machine. Using the shell you can more efficient ways to solve problems that using the GUI. Bash is the type of unix shell and language that the shell uses to accept and complete commands. 

As I was going through these exercises, the most challenging thing for me was recalling where I actually was in the directories. Generally, when I was in my temp directory I was alright, but I did have to do a little retracing of steps in the graphical interface several times when I was moving around more. I think this will get easier with time and as I start to become more comfortable with the directories in my machine. 

I was able to use all the commands successfully, but I don’t know that I’ll be able to use apropos in a practical way. The output was a little too difficult for me to read, and I think I’ll use help more often. The most important commands towards the beginning will probably be cd,ls, and pwd just to make sure I’m navigating effectively and efficiently. As I continue, some others may start to lead the list. 

One topic that I don’t yet have a full grasp on is piping and redirecting. I’ll need to practice those more in actual scenarios before I realize how to use them. 

The arguments listed below are as follows:

* pwd - print working directory. This will show you where you are in the command line. 
* ls - this lists the contents of a selected directory, or the current directory by default
* mv - moves a file or directory to another specified location
* cd - copies a file or directory to another specified location
* ../ - refers to the parent directory of the current directory. This is especially useful when using cd, since it will just jump you up one directory. It can also be chained to go back multiple directories.
* touch - creates a new file
* mkdir - creates a new directory
* less - displays the contents of a file one page at a time, so you can look at the contents in a more readable way.
* rmdir - removes a directory, as long as it is empty
* rm - removes a file. Using this with -rf can recursively remove a directory that isn’t empty along with its contents.
* help - brings up a help menu with several popular arguments as reminders

#1.4 Forking and Cloning Reflection

To create a new repo, the first thing to do is log onto your github profile. On the top right of the screen, there will be a + button with a drop down, where you should select the new repository option. On the next screen, you need to give your repository a name and an optional description. You can also determine whether you want the repository to be public or private. Finally, determine if it needs a specific license and then click “Create Repository”. 

To fork a repo, you just need to go to the existing repository on github and click the “fork” button in the upper right. This will create a copy of the directory in your account. 

To clone a repo, copy the clone url from the repo page on github and open your terminal. Navigate to the folder where you’d like to put the local version of the repo. Once there, type “git clone <insert clone url here>”. The system will make the copy. At this point, you should change directories into the local copy of the repo and check that all the correct files are there. 

I’d generally fork a repo rather than creating a new one to avoid recreating the wheel. By forking, I’m creating my own version of the repository that I can edit or add to. I could also help contribute to that original project from the repo that I forked from. 

When setting up git and Github I didn’t have any real problems other than a few typos. Doing the initial terminal/git setup with the instructions in the week 0 material was pretty straightforward, but I don’t fully understand what each step did. I’ll probably try to walk through those steps again in my head in the next few weeks to see if it makes more sense with context.  