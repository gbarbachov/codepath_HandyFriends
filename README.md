
# HandyFriends

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An iOS app designed to make life easier for both customers and independent contractors. Customers can receive help real time from any independent contractor nearby by paying for the rates they charge. Receive service anywhere, at anytime.

### App Evaluation
- **Category:**
Contactless and Same Day Help
- **Mobile:**
iOS only
- **Story:**
An app for independent contractors to attract customers; Normal people can place an "order" for immediate help from anyone with the skills nearby. Contractors are able to charge their own rates and pick up jobs nearby real time.
- **Market:**
Contractors looking for more income. Contractors can be plumbers, electricians, mechanics and etc.
Customers are everyday citizens with maintenece issues at home. 
- **Habit:**

- **Scope:**


## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in (or signs up) to access menu of various services they can get
* App remembers the user for certain period of time (automatic logout only after certain period of time)
* User creates a task: picks the service they need & give the required information (type of service, pictures, dates, max budget)
* User sees which contractors are available to help them & can choose one
* Once a task is created, user can cancel and edit the task  
* Log of current and past tasks (split bar on top or a chronological list)
* Settings (Accessibility, Payment Info, Notification, General, etc.)


**Optional Nice-to-have Stories**

* Messenger: User can text a contractor.
* Login: verify email or phone number 
* User can see when the contractor was online and whether they saw the message
* Settings: user can press the button to become a contractor
* Settings: referral code is generated (user can copy it or send it directly to someone)
* Settings: user can change password
*User can give a review & rate the contractor


### 2. Screen Archetypes

* [Initial screen]
   * When app is loading, user sees a static image with app logo

* [Login screen]
   * If user does not have an account, press sign up to create one
   * Support 3rd party authentication - etc ‘login with google’
   * Supports “remember me” feature; i.e. if user re-logins after certain period of time, he/she does not need to re-login
   
* [Register screen]
   * Upon Download/Reopening of the application, user is prompted to log in to gain access to their profile information to be properly matched with another     person.
   * User has an option to register with Google, etc.
   
* [Onboarding screen- Optional]
   * First-time user visual tutorial for how the app works
   
* [Task selection screen]
   * User can see a several scrollable icons representing various categories of tasks 
   * Upon selecting one icon, user sees a list of more specific tasks (drop-down) and can choose one. Upon choosing, the user is “moved” to ‘Task Creation Screen’

* [Task creation screen]
   * User mush add task description (text)
   * User must upload relevant pictures (or take)
   * User must specify dates / times when the task can be completed
   * User must specify max budget (optional)
   * User must add location of the task (address)
   * User should estimate time the it will take one to finish the task (including start time if possible)
   * When all the necessary details are inputted, the User is directed to the ‘Choosing Contractor Screen’

* [Choosing Contractor Screen]
   * User is able to select contractor (from a list that can be updated by scrolling and potentially filtered) to complete the task
   * User can commit to using a specific contractor
   * (optional) User is able to chat with the contactor to ask clarifying questions using a button that direct user to “Messaging Screen”
   * (optional) fee is reserved (charged to CC at time of commitment)
   

* [Contractor rating screen - Optional]
   * can be accessed through ‘Current and Previous Tasks Screen’
   * User can leave review and assign rating to any contractor

* [Current and Previous Tasks Screen ]
   * User can see list of tasks in reverse chronological order 
      *(Optional) User can filter tasks by certain features

   * User can click on any task; this action takes user to ‘View Task Details’ screen

   
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [Home]
Discover all the tasks and services available on the platform
* [Tasks]
View details of scheduled tasks and past tasks.
* [Taskers]
View past contractors you have worked with. Review which ones are your favorite
* [Profile]
Private information such as credit card, email and passwords can be found here

**Flow Navigation** (Screen to Screen)

* [list first screen here]
   * [list screen navigation here]
   * ...
* [list second screen here]
   * [list screen navigation here]
   * ...

## Wireframes
![Image from iOS](https://user-images.githubusercontent.com/61493372/99138178-a7ec0980-25e3-11eb-9991-256ccc0cd370.jpg)


### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/Jw9pYU0PHm.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

<img src='http://g.recordit.co/Q3ybv67abH.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

