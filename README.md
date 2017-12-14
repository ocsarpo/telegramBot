### How to get a Telegram Token

- **Step 1.** Join the Telegram on Mobile
- **Step 2.** Setup the Telegram on PC
- **Step 3.** Log on PC Telegram with your Mobile number
- **Step 4.** Search "BotFather" on SearchBox

![1](.\images\1.PNG)

- **Step 5.** Click Start Button. 

![2](.\images\2.png)

- **Step 6.** Type /newbot. 

- **Step 7.** You can see the message that "please choose a name for your bot."  Type your bot's name. (I wrote MyFirstTelegramBot)

- **Step 8.** Set a username for your bot. It must end in 'bot'. Like this, for example: My_bot or MyBot. If the username you type exist, you have to type another username. (I wrote ocsarpo1stBot)

- **Step 9.** If you pass **Step 8.**, you can see the messageBox. Like this.![3](.\images\3.PNG)

  To make Telegram bot, you have to remember your Telegram token.

- **Step 10.** Click the link at line 2. (t.me/username). And then Click Start

- **Step 11.** Write any message to your bot. But now, Your bot doesn't work. Let's make your bot can talk to you.

- **Step 12.** Prior to make your bot can talk to you, You have to check Telegram bot api. 
  Browse http://core.telegram.org/bots/api

- **Step 13.** FInd Making requests section. To use Telegram API, You have to follow this Usage.
  https://api.telegram.org/botYourToken/Method

- **Step 14.** Test at https://api.telegram.org/botYourToken/getMe
  You can get a json-type result. Like this.
  ![4](.\images\4.png)

- **Step 14.** Find getUpdates section. It receive incoming updates.
  Usage : https://api.telegram.org/botYourToken/getUpdates
  **(It is better to send any MSG to your bot, before the test.)**

  ![5](.\images\5.PNG)

  To make your bot can talk to you, Remember id (Blue boxes on top photo)

- **Step 16.** In order to your bot can talk to, Use sendMessage Method.
  Parameters : chat_id(your bot id) , text(What you want to send)
  Usage :
  https://api.telegram.org/botTOKEN/sendMessage?chat_id=ID&text=HI
  TOKEN : your bot's Token, ID:your bot's ID 
  Result on browser : a series of json code
  Result on Telegram : photo on below
  ![5](.\images\6.PNG)

- **Step 15.** Let's do this on Program. I'll use Ruby.

  ![5](.\images\7.PNG)

  If you want to use a language other than English, You must Encode msg.

- **Step 16.** Your Telegram
  ![5](.\images\8.PNG)

# END!



