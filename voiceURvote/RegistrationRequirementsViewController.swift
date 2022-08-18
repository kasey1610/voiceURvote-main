//
//  RegistrationRequirementsViewController.swift
//  voiceURvote
//
//  Created by Kasey Sexton on 8/17/22.
//

import UIKit

class RegistrationRequirementsViewController: UIViewController {

    @IBOutlet weak var yourStateLabel: UITextField!

    @IBOutlet weak var requirementsLabel: UILabel!
    
    let requirements = [
        "• Be a citizen of the United States; \n• Be a resident of Alabama and your county at the time of registration; \n• Be 18 years old on or before the date of the election; \n• Not have been barred from voting because of a disqualifying felony conviction; \n• Not currently be declared mentally incompetent through a competency hearing; \n• Swear or affirm to 'support and defend the Constitution of the US and the State of Alabama and further disavow any belief or affiliation with any group which advocates the overthrow of the governments of the US or the State of Alabama by unlawful means and that the information contained herein is true, so help me God.'",
        "• Be a citizen of the United States; \n• Be at least 18 years old within 90 days of completing your registration; \n• Be a resident of Alaska; \n• Not be a convicted of certain felonies (unless unconditionally discharged from incarceration, probation and/or parole); \n• Not be registered to vote in another state.",
        "• Be a citizen of the United States; \n• Be a resident of Arizona and your county at least 29 days preceding the next election; \n• Be 18 years old on or before the next general election; \n• Be able to write your name or mark, unless prevented from so doing by physical disability; \n• Not have been convicted of treason or a felony (or have had your civil rights restored); \n• Not currently be declared an incapacitated person by a court of law.",
        "• Be a citizen of the United States; \n• Be an Arkansas resident; \n• Be at least 18 years old before the next election; \n• Not be a convicted felon (or have completely discharged your sentence or been pardoned); \n• Not claim the right to vote in any other jurisdiction; \n• Not previously be adjudged mentally incompetent by a court of competent jurisdiction.",
        "• Be a citizen of the United States; \n• Be a resident of California; \n• Be at least 18 years of age at the time of the next election; \n• Not currently be serving a state or federal prison term for the conviction of a felony; \n• Not currently be judged mentally incompetent by a court of law.",
        "• Be a citizen of the United States; \n• Be a resident of Colorado 22 days prior to Election Day; \n• Be 18 years old on or before Election Day; \n• Not be serving a sentence of detention, confinement, or parole for a felony conviction.",
        "• You must be a citizen of the United States; \n• You must be a resident of Connecticut and of the town in which you wish to vote; \n• Be at least 17 years old and will be at least 18 years old on the next election; \n• You must have completed confinement and parole if previously convicted of a felony.",
        "• Be a citizen of the United States; \n• Be a permanent resident of Delaware; \n• Be at least 18 years old on the date of the next general election; \n• Not be mentally incompetent; \n• If you are a felon, you are eligible to vote as long as you have served your sentence (including parole) and your convictions were not for disqualifying felonies: murder and manslaughter (except vehicular homicide), sexual offenses, or crimes against public administration involving bribery or improper influence or abuse of office.",
        "• Be a citizen of the United States; \n• Be a District of Columbia resident at least 30 days preceding the next election; \n• Be at least 18 years old on or preceding the next general election; \n• Not be in prison for a felony conviction; \n• Not have been judged legally incompetent by a court of law; \n• Not claim the right to vote anywhere outside DC.",
        "• Be a citizen of the United States; \n• Be a legal resident of both the State of Florida and of the county in which you seek to be registered; \n• Be 18 years old (you may pre‑register if you are at least 16); \n• Not be adjudicated mentally incapacitated with respect to voting in Florida or any other State, or if you have, you must first have your voting rights restored; \n• Not be a convicted felon, or if you are, you must first have your civil rights restored if they were taken away; \n• Swear or affirm the following: 'I do solemnly swear (or affirm) that I will protect and defend the Constitution of the United States and the Constitution of the State of Florida, that I am qualified to register as an elector under the Constitution and laws of the State of Florida, and that all information provided in this application is true.'",
        "• Be a citizen of the United States; \n• Be a legal resident of Georgia and of the county in which you want to vote; \n• Be at least 18 years old within six months after the day of registration, and be 18 years old to vote; \n• Not be serving a sentence for having been convicted of a felony involving moral turpitude; \n• Not have been judicially determined to be mentally incompetent, unless the disability has been removed.",
        "• Be a citizen of the United States; \n• Be a resident of the State of Hawaii; \n• Be at least 16 years old (you must be 18 years old by Election Day in order to vote); \n• Not be incarcerated for a felony conviction; Not be adjudicated by a court as “non compos mentis” (not of sound mind).",
        "• Be at least 18 years old; \n• Be a citizen of the United States; \n• Have resided in Idaho and in the county for 30 days prior to the date of election; \n• Not be serving a sentence of imprisonment for a felony. Your voting rights are restored once you have completed your sentence, probation, and parole.",
        "• Be a citizen of the United States; \n• Be a resident of Illinois and of your election precinct at least 30 days before the next election; \n• Be at least 18 years old on or before the next election; \n• Not be serving a sentence of confinement for a criminal conviction (but you can vote if you have been charged but not convicted, have completed your sentence, or have been released on parole); \n• Not claim the right to vote anywhere else.",
        "• Be a citizen of the United States; \n• Have resided in the precinct at least 30 days before the next election; \n• Be at least 18 years of age on the day of the next general election; \n• Not currently be incarcerated for a criminal conviction.",
        "• Be a citizen of the United States; \n• Be a resident of Iowa; \n• Be at least 17 years old (you can vote in the primary election if you will be 18 by the general); \n• Not have been convicted of a felony (or have had your rights restored); \n• Not currently be judged by a court to be 'incompetent to vote;' \n• Not claim the right to vote in more than one place.",
        "• Be a citizen of the United States; \n• Be a resident of Kansas; \n• Be 18 by the next election; \n• Have completed the terms of your sentence if convicted of a felony and recieved a certificate of discharge; \n• a person serving a sentence for a felony conviction is ineligible to vote; \n• Not claim the right to vote in any other location or under any other name.",
        "• Be a citizen of the United States; \n• Be a resident of Kentucky for at least 28 days before to Election Day; \n• Be 18 years of age on or before the next general election; \n• Not be a convicted felon or if you have been convicted of a felony, your civil rights must have been restored by executive pardon; \n• Not have been judged 'mentally incompetent' in a court of law; \n• Not claim the right to vote anywhere outside Kentucky.",
        "• Be a citizen of the United States; \n• Be a resident of Louisiana (A college student may elect to use his home address or his address while away at school); \n• Be at least 17 years old (16 years old if registering in person at the Registrar of Voters Office or at the Louisiana Office of Motor Vehicles); \n• Not currently be under an order of imprisonment for conviction of a felony. (If you are under an order but have not been incarcerated within the last five years, you ARE eligible to vote unless your conviction was for election fraud); \n• Not currently be under a judgment of interdiction for mental incompetence.",
        "• Be a citizen of the United States; \n• Be a resident of Maine and the municipality in which you want to vote; \n• Be 17 years old (you must be at least 18 years of age to vote, except that in primary elections you may vote if you are 17 but will be 18 by the general election).",
        "• Be a U.S. citizen; \n• Be a Maryland resident; \n• Be at least 16 years old, and at least 18 years old by the next general election; \n• Not be under guardianship for mental disability; \n• Not have been convicted of buying or selling votes; \n• Not have been convicted of a felony, or if you have, have completed serving a court ordered sentence of imprisonment.",
        "• Be a citizen of the United States; \n• Be a resident of Massachusetts; \n• Be at least 16 years old (but will not be eligible to vote until you are 18 years old); \n• Not have been convicted of corrupt practices in respect to elections; \n• Not be under guardianship with respect to voting; \n• Not be currently incarcerated for a felony conviction.",
        "• Be a citizen of the United States; \n• Be 17.5 at the time of registration and 18 years old by the next election; \n• Be a resident of Michigan and at least a 30 day resident of your city or township by Election Day; \n• Not be confined in a jail after being convicted and sentenced. \n• Warning: Michigan law requires that the same address be used for voter registration and driver license purposes.",
        "• Be a citizen of the United States; \n• Be a resident of Minnesota for 20 days before the next election; \n• Maintain residence at the address given on the registration form; \n• Be at least 18 years old on Election Day; \n• If previously convicted of a felony, have completed or been discharged from your sentence; \n• Not be under a court‑ordered guardianship in which the right to vote has been revoked; \n• Not be found by a court to be legally incompetent to vote.",
        "• Be a citizen of the United States; \n• Have lived in Mississippi and in your county (and city, if applicable) 30 days before Election Day; \n• Be 18 years old by the time of the general election in which you want to vote; \n• Have not been convicted of voter fraud, murder, rape, bribery, theft, arson, obtaining money or goods under false pretense, perjury, forgery, embezzlement, bigamy, armed robbery, extortion, felony bad check, felony shoplifting, larceny, receiving stolen property, robbery, timber larceny, unlawful taking of a motor vehicle, statutory rape, carjacking, or larceny under lease or rental agreement (or, if you have been convicted, you must have had your rights restored); \n• Not have been declared mentally incompetent by a court.",
        "• Be a citizen of the United States; \n• Be a resident of Missouri; \n• Be at least 17‑1/2 years of age (you must be 18 to vote); \n• Not be on probation or parole after conviction of a felony, until finally discharged from such probation or parole; \n• Not be convicted of a felony or misdemeanor connected with a voting or election offense (unless fully pardoned); \n• Not be adjudged incapacitated by any court of law; \n• Not be confined under a sentence of imprisonment.",
        "• Be a citizen of the United States; \n• Be at least 18 years old on or before Election Day; \n• Be a resident of Montana and of the county in which you want to vote for at least 30 days before the next election; \n• Not be in a penal institution for a felony conviction; \n• Not currently be determined by a court to be of unsound mind; \n• Meet these qualifications by the next Election Day if you do not currently meet them.",
        "• Be a citizen of the United States; \n• Be a resident of Nebraska; \n• Be at least 18 years of age or will be 18 years of age on or before the first Tuesday after the first Monday of November; \n• Not have been convicted of a felony, or if convicted, two years have passed since the sentence was completed (including any probation or parole); \n• Not have been officially found to be mentally incompetent; \n• Not have been convicted of treason, unless you have had your civil rights stored.",
        "• Be a citizen of the United States; \n• Have attained the age of 18 years on the date of the next election; \n• Have continuously resided in the State of Nevada, in your county, at least 30 days and in your precinct at least 10 days before the next election; \n• Not currently be serving a term of imprisonment for a felony conviction; \n• Not be determined by a court of law to be mentally incompetent; \n• Claim no other place as your legal residence.",
        "• Be a citizen of the United States; \n• Be 18 years of age or older on Election Day; \n• Register to vote only in the town or ward in which you actually live; \n• Not have been convicted of a felony, unless you are past your final discharge; \n• Not have been ever convicted of bribery or intimidation relating to elections.",
        "• Be a citizen of the United States; \n• Be at least 17 years of age; \n• you may register to vote if you are at least 17 years old but cannot vote until reaching the age of 18; \n• Be a resident of New Jersey and your county and at your address at least 30 days before the next election; \n• Not be serving a sentence of incarceration as the result of a conviction of any indictable offense under the laws of New Jersey or another state or of the United States; \n• Not be declared mentally incompetent by a court.",
        "• Be a citizen of the United States; \n• Be a resident of the State of New Mexico; \n• Be 18 years of age at the time of the next election; \n• Not have been denied the right to vote by a court of law by reason of mental incapacity; \n• Not be currently incarcerated or serving parole or supervised probation for a felony conviction (or if you have been convicted of a felony, have completed all the terms and conditions of sentencing, have been granted a pardon by the Governor, or have had your conviction overturned on appeal).",
        "• Be a citizen of the United States; \n• Be a resident of New York and the county, city, or village where for at least 30 days before Election Day; \n• 16- and 17-year-olds may preregister to vote, but cannot vote until they are 18; \n• Not be incarcerated for a felony conviction; \n• Not currently be judged incompetent by a court; \n• Not claim the right to vote elsewhere.",
        "• Be a citizen of the United States; \n• Be a resident of North Carolina and the precinct in which you live for at least 30 days prior to Election Day; \n• 16- and 17-year-olds may preregister to vote, but cannot vote until they are 18 (17-year-olds may vote in a primary election if they will be 18 at the time of the general election); \n• Not be currently serving a felony sentence, including probation, parole, or post-release supervision.",
        "• Be a U.S. citizen; \n• Be at least 18 years old on the day of election; \n• Be a resident of North Dakota; \n• Reside in the precinct for 30 days preceding Election Day; \n• Be able to provide a drivers license, non-driver identification card or other approved form of identification.",
        "• Be a citizen of the United States; \n• Be at least 18 years old on or before the next general election; \n• Be a resident of Ohio for at least 30 days immediately before the election in which you want to vote; \n• Not be currently incarcerated (in jail or prison) for a felony conviction; \n• Not have been declared incompetent for voting purposes by a probate court; \n• Not have been permanently denied the right to vote for violations of election laws.",
        "• Be a citizen of the United States and a resident of the State of Oklahoma; \n• Be 18 years old on or before the date of the next election (you may pre-register to vote if you are at least 17 years and six months old, but you won’t be eligible to vote until your 18th birthday); \n• Be a 'bona fide' resident of the State of Oklahoma (A person is a 'bona fide' resident of the State of Oklahoma if he or she has an 'honest intent to make a place one’s residence or domicile, a conscious decision to make a location an individual’s home.'); \n• Have not been convicted of a felony and not completed the sentence including any term of incarceration, parole or supervision, or probation; \n• Not now be under judgment as an incapacitated person, or a partially incapacitated person prohibited from voting.",
        "• Be a citizen of the United States; \n• Be a resident of Oregon; \n• At least 16 years old (to vote, you must be 18 by Election Day).",
        "• Be a citizen of the United States at least one month before Election Day; \n• Be a resident of Pennsylvania and your election district at least 30 days before Election Day; \n• Be at least 18 years of age on the day of Election Day; \n• Not have been in prison within the last five years for a felony conviction.",
        "• Be a citizen of the United States; \n• Be a resident of Rhode Island for 30 days preceding the next election; \n• 16- and 17-year-olds may preregister to vote, but cannot vote until they are 18; \n• Not be currently incarcerated in a correctional facility due to a felony conviction; \n• Not have been lawfully judged to be mentally incompetent.",
        "• Be a citizen of the United States; \n• Be at least 18 years old on or before the next election; \n• Be a resident of South Carolina, and live in the county and precinct where you are registering; \n• Not be confined in any public prison resulting from a conviction of a crime; \n• Never have been convicted of a felony or offense against Election Day laws, or if previously convicted, have served your entire sentence, including probation or parole, or have received a pardon for the conviction; \n• Not be under a court order declaring you mentally incompetent.",
        "• Be a citizen of the United States; \n• Reside in South Dakota; \n• Be 18 years old by the next election; \n• Not be currently serving a sentence for a felony conviction which included imprisonment, served or suspended, in an adult penitentiary system; \n• Not have been judged mentally incompetent by a court.",
        "• Be a citizen of the United States; \n• Be a resident of Tennessee; \n• Be at least 18 years old on or before the next election; \n• Not have been convicted of a felony, or if convicted, have had your full rights of citizenship restored (or have received a pardon).",
        "• Be a citizen of the United States; \n• Be a resident of the county in which the application for registration is made; \n• Be at least 17 years and 10 months old (you must be 18 to vote); \n• Not previously convicted of a felony, or if convicted, you must be fully discharged from your punishment, including any incarceration, parole, supervision, period of probation, or be pardoned; \n• Have not been declared mentally incompetent by final judgment of a court of law.",
        "• Be a citizen of the United States; \n• Have resided in Utah for 30 days immediately before the next election, and currently reside in the precinct in which you are registering to vote; \n• Be at least 18 years old by the general election in which you vote. 16- and 17-year-olds may preregister to vote, but cannot vote until they are 18 (individuals may vote in a primary election if they are 17 years old on or before the date of the primary election and will be 18 years old on or before the date of the corresponding general election); \n• Not be a convicted felon currently incarcerated for commission of a felony until your right to vote is restored; \n• Not be convicted of treason or crime against the elective franchise, unless restored to civil rights; \n• Not be found to be mentally incompetent by a court of law.",
        "• Be a citizen of the United States; \n• Be a resident of Vermont; \n• Be 18 years of age on or before Election Day (17 year olds who will be 18 years of age on or before the date of a general election may register and vote in the primary election immediately preceding that general election); \n• Have taken the following Oath: You solemnly swear (or affirm) that whenever you give your vote or suffrage, touching any matter that concerns the state of Vermont, you will do it so as in your conscience you shall judge will most conduce to the best good of the same, as established by the Constitution, without fear or favor of any person [Voter’s Oath, Vermont Constitution, Chapter II, Section 42].",
        "• Be a citizen of the United States; \n• Be a resident of Virginia and of the precinct in which you want to vote; \n• Be 18 years old by the next general election (a person who is 17 years old may register to vote in advance of their 18th birthday and can vote in intervening primary or special elections if the person will turn 18 by the date of the next general election); \n• Not have a felony conviction, unless the person has had their civil rights restored; \n• Not currently be declared incapacitated by a court.",
        "• Be a citizen of the United States; \n• Be at least 18 years old by Election Day; \n• Be a legal resident of Washington State, your county, and precinct for 30 days immediately preceding Election Day; \n• Not be disqualified from voting due to a court order; \n• Not be under Department of Corrections supervision for a Washington felony conviction.",
        "• Be a citizen of the United States; \n• Live in West Virginia in the county in which you are registering; \n• Be at least 17 years old and turning 18 before the next general election; \n• Not currently be serving a sentence, probation, or parole following a conviction for a felony, treason, or election bribery; \n• Not have been judged “mentally incompetent” in a court of competent jurisdiction.",
        "• Be a citizen of the United States; \n• Be a resident of Wisconsin for at least 28 days before an election; \n• Be 18 years old; \n• Not have been convicted of treason, felony or bribery, or if you have, your civil rights have been restored; \n• Not be incapable of understanding the objective of the elective process or under guardianship.",
        "• Be a citizen of the United States; \n• Be 18 years old by General Election Day; \n• Be a resident of the State of Wyoming; \n• Not be currently adjudicated mentally incompetent; \n\n• Not have been convicted of a felony, or if convicted have had your voting rights restored."]
        
    
        
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showButtonTapped(_ sender: Any) {
            
        requirementsLabel.adjustsFontSizeToFitWidth = true
        requirementsLabel.minimumScaleFactor = 0.5

        
        if yourStateLabel.text == "Alabama" {

                requirementsLabel.text = requirements[0]

            } else if yourStateLabel.text == "Alaska" {

                requirementsLabel.text = requirements[1]

            } else if yourStateLabel.text == "Arizona" {

                requirementsLabel.text = requirements[2]

            } else if yourStateLabel.text == "Arkansas" {

                requirementsLabel.text = requirements[3]

            } else if yourStateLabel.text == "California" {

                requirementsLabel.text = requirements[4]

            } else if yourStateLabel.text == "Colorado" {

                requirementsLabel.text = requirements[5]

            } else if yourStateLabel.text == "Connecticut" {

                requirementsLabel.text = requirements[6]

            } else if yourStateLabel.text == "Delaware" {

                requirementsLabel.text = requirements[7]

            } else if yourStateLabel.text == "District of Columbia" {
                
                requirementsLabel.text = requirements[8]
                
            } else if yourStateLabel.text == "Florida" {

                requirementsLabel.text = requirements[9]

            } else if yourStateLabel.text == "Georgia" {

                requirementsLabel.text = requirements[10]

            } else if yourStateLabel.text == "Hawaii" {

                requirementsLabel.text = requirements[11]

            } else if yourStateLabel.text == "Idaho" {

                requirementsLabel.text = requirements[12]

            } else if yourStateLabel.text == "Illinois" {

                requirementsLabel.text = requirements[13]

            } else if yourStateLabel.text == "Indiana" {

                requirementsLabel.text = requirements[14]

            } else if yourStateLabel.text == "Iowa" {

                requirementsLabel.text = requirements[15]

            } else if yourStateLabel.text == "Kansas" {

                requirementsLabel.text = requirements[16]

            } else if yourStateLabel.text == "Kentucky" {

                requirementsLabel.text = requirements[17]

            } else if yourStateLabel.text == "Louisiana" {

                requirementsLabel.text = requirements[18]

            } else if yourStateLabel.text == "Maine" {

                requirementsLabel.text = requirements[19]

            } else if yourStateLabel.text == "Maryland" {

                requirementsLabel.text = requirements[20]

            } else if yourStateLabel.text == "Massachusetts" {

                requirementsLabel.text = requirements[21]

            } else if yourStateLabel.text == "Michigan" {

                requirementsLabel.text = requirements[22]

            } else if yourStateLabel.text == "Minnesota" {

                requirementsLabel.text = requirements[23]

            } else if yourStateLabel.text == "Mississippi" {

                requirementsLabel.text = requirements[24]

            } else if yourStateLabel.text == "Missouri" {

                requirementsLabel.text = requirements[25]

            } else if yourStateLabel.text == "Montana" {

                requirementsLabel.text = requirements[26]

            } else if yourStateLabel.text == "Nebraska" {
                
                requirementsLabel.text = requirements[27]

            } else if yourStateLabel.text == "Nevada" {
                
                requirementsLabel.text = requirements[28]

            } else if yourStateLabel.text == "New Hampshire" {
                
                requirementsLabel.text = requirements[29]

            } else if yourStateLabel.text == "New Jersey" {
                
                requirementsLabel.text = requirements[30]

            } else if yourStateLabel.text == "New Mexico" {
                
                requirementsLabel.text = requirements[31]

            } else if yourStateLabel.text == "New York" {
                
                requirementsLabel.text = requirements[32]

            } else if yourStateLabel.text == "North Carolina" {
                
                requirementsLabel.text = requirements[33]

            } else if yourStateLabel.text == "North Dakota" {
                
                requirementsLabel.text = requirements[34]

            } else if yourStateLabel.text == "Ohio" {
                
                requirementsLabel.text = requirements[35]

            } else if yourStateLabel.text == "Oklahoma" {
                
                requirementsLabel.text = requirements[36]

            } else if yourStateLabel.text == "Oregon" {
                
                requirementsLabel.text = requirements[37]

            } else if yourStateLabel.text == "Pennslyvania" {
                
                requirementsLabel.text = requirements[38]

            } else if yourStateLabel.text == "Rhode Island" {
                
                requirementsLabel.text = requirements[39]

            } else if yourStateLabel.text == "South Carolina" {
                
                requirementsLabel.text = requirements[40]

            } else if yourStateLabel.text == "South Dakota" {
                
                requirementsLabel.text = requirements[41]

            } else if yourStateLabel.text == "Tennessee" {
                
                requirementsLabel.text = requirements[42]

            } else if yourStateLabel.text == "Texas" {
                
                requirementsLabel.text = requirements[43]

            } else if yourStateLabel.text == "Utah" {
                
                requirementsLabel.text = requirements[44]

            } else if yourStateLabel.text == "Vermont" {
                
                requirementsLabel.text = requirements[45]

            } else if yourStateLabel.text == "Virginia" {
                
                requirementsLabel.text = requirements[46]

            } else if yourStateLabel.text == "Washington" {
                
                requirementsLabel.text = requirements[47]

            } else if yourStateLabel.text == "West Virginia" {
                
                requirementsLabel.text = requirements[48]

            } else if yourStateLabel.text == "Wisconsin" {
                
                requirementsLabel.text = requirements[49]

            } else if yourStateLabel.text == "Wyoming" {
                
                requirementsLabel.text = requirements[50]

            }

    }
    
    
    
    
}
