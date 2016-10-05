using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp2084_Assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Global variables
            int win = 0;
            int loss = 0;
            double winningPer = 0d;
            int pointsScored = 0;
            int pointsAllowed = 0;
            int pointsDiff = 0;
            int totalAttandance = 0;
            int averageAttandance = 0;

            // Createing Arraylist to hold the form fields
            ArrayList radioButtons = new ArrayList();
            ArrayList txtScored = new ArrayList();
            ArrayList txtAllowed = new ArrayList();
            ArrayList txtSpectators = new ArrayList();

            // Game 1 controls 
            //RadioButtonList game1RadioButtonList = (RadioButtonList) game1.FindControl("rblGameResult");
            //TextBox game1TxtScored = (TextBox)game1.FindControl("txtGameScored");
            //TextBox game1TxtAllowed = (TextBox)game1.FindControl("txtGameAllowed");
            //TextBox game1TxtSpectators = (TextBox)game1.FindControl("txtGameSpectators");

            radioButtons.Add((RadioButtonList)game1.FindControl("rblGameResult"));
            txtScored.Add((TextBox)game1.FindControl("txtGameScored"));
            txtAllowed.Add((TextBox)game1.FindControl("txtGameAllowed"));
            txtSpectators.Add((TextBox)game1.FindControl("txtGameSpectators"));

            // Game 2 controls
            //RadioButtonList game2RadioButtonList = (RadioButtonList)game2.FindControl("rblGameResult");
            //TextBox game2TxtScored = (TextBox)game2.FindControl("txtGameScored");
            //TextBox game2TxtAllowed = (TextBox)game2.FindControl("txtGameAllowed");
            //TextBox game2TxtSpectators = (TextBox)game2.FindControl("txtGameSpectators");

            radioButtons.Add((RadioButtonList)game2.FindControl("rblGameResult"));
            txtScored.Add((TextBox)game2.FindControl("txtGameScored"));
            txtAllowed.Add((TextBox)game2.FindControl("txtGameAllowed"));
            txtSpectators.Add((TextBox)game2.FindControl("txtGameSpectators"));

            // Game 3 controls
            //RadioButtonList game3RadioButtonList = (RadioButtonList)game3.FindControl("rblGameResult");
            //TextBox game3TxtScored = (TextBox)game3.FindControl("txtGameScored");
            //TextBox game3TxtAllowed = (TextBox)game3.FindControl("txtGameAllowed");
            //TextBox game3TxtSpectators = (TextBox)game3.FindControl("txtGameSpectators");

            radioButtons.Add((RadioButtonList)game3.FindControl("rblGameResult"));
            txtScored.Add((TextBox)game3.FindControl("txtGameScored"));
            txtAllowed.Add((TextBox)game3.FindControl("txtGameAllowed"));
            txtSpectators.Add((TextBox)game3.FindControl("txtGameSpectators"));

            // Game 4 controls
            //RadioButtonList game4RadioButtonList = (RadioButtonList)game4.FindControl("rblGameResult");
            //TextBox game4TxtScored = (TextBox)game4.FindControl("txtGameScored");
            //TextBox game4TxtAllowed = (TextBox)game4.FindControl("txtGameAllowed");
            //TextBox game4TxtSpectators = (TextBox)game4.FindControl("txtGameSpectators");

            radioButtons.Add((RadioButtonList)game4.FindControl("rblGameResult"));
            txtScored.Add((TextBox)game4.FindControl("txtGameScored"));
            txtAllowed.Add((TextBox)game4.FindControl("txtGameAllowed"));
            txtSpectators.Add((TextBox)game4.FindControl("txtGameSpectators"));

            // Loop through all the form fields in all of the forms to calculate the necessery data
            for(int i = 0; i < radioButtons.Count; i++)
            {
                // Get all the values from ArrayLists and put them in to the temp variables
                int tempScore = Convert.ToInt32(((TextBox)txtScored[i]).Text);
                int tempAllowed = Convert.ToInt32(((TextBox)txtAllowed[i]).Text);
                int tempSpectator = Convert.ToInt32(((TextBox)txtSpectators[i]).Text);
                RadioButtonList tempRadio = (RadioButtonList)radioButtons[i];

                // Check the tempScore and tempAllowed to determine who win the game and update the radio button based on the result
                if (tempScore > tempAllowed)
                    tempRadio.SelectedIndex = 0;
                else
                    tempRadio.SelectedIndex = 1;

                // Increase win or loss based on the selected radio button
                if (tempRadio.SelectedValue == "1")
                    win++;
                else
                    loss++;

                // increase the number of score, allowed and spectators
                pointsScored += tempScore;
                pointsAllowed += tempAllowed;
                totalAttandance += tempSpectator;

            }

            // Calculate the average attandance and points diffrence
            averageAttandance = totalAttandance / 4;
            pointsDiff = pointsScored - pointsAllowed;
            winningPer = win * .25;

            // Set every value to the labels
            finalWin.Text = $"<strong>Wins:</strong> {win}";
            finalLoss.Text = $"<strong>Losses:</strong> {loss}";
            finalWinningPerc.Text = $"<strong>Winning %:</strong> {winningPer*100}";
            finalScored.Text = $"<strong>Points Scored:</strong> {pointsScored}";
            finalAllowed.Text = $"<strong>Points Allowed:</strong> {pointsAllowed}";
            finalDiff.Text = $"<strong>Point Differential:</strong> {pointsDiff}";
            finalAttandance.Text = $"<strong>Total Attendance:</strong> {totalAttandance}";
            finalAverageAttandance.Text = $"<strong>Average Attendance:</strong> {averageAttandance}";

            summary.CssClass = "";
        }
    }
}