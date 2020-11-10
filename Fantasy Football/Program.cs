using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Google.OrTools.LinearSolver;

namespace Fantasy_Football
{
    class Program
    {
        class DataModel
        {
            public double[,] ConstraintCoeffs = {
                { 5, 7, 9, 2, 1 },
                { 18, 4, -9, 10, 12 },
                { 4, 7, 3, 8, 5 },
                { 5, 13, 16, 3, -7 },
            };
            public double[] Bounds = { 250, 285, 211, 315 };
            public double[] ObjCoeffs = { 7, 8, 2, 9, 6 };
            public int NumVars = 5;
            public int NumConstraints = 4;
        }

        public static void Main()
        {
            Fantasy_FootballEntities entities = new Fantasy_FootballEntities();
            List<Player> playerList = new List<Player>();
            Dictionary<Player, List<Player>> playerDictionary = new Dictionary<Player, List<Player>>();
            foreach (Player player in entities.Players) //This could be done with SQL UNION operator, but this is faster.
            {
                playerList.Add(player);
                playerList.Add(new Player() { Name = player.Name, Position = "B1", Price = player.Price, ProjectedPoints = player.ProjectedPoints * ((double)1 / (double)2), Team = player.Team });
                playerList.Add(new Player() { Name = player.Name, Position = "B2", Price = player.Price, ProjectedPoints = player.ProjectedPoints * ((double)1 / (double)4), Team = player.Team });
                playerList.Add(new Player() { Name = player.Name, Position = "B3", Price = player.Price, ProjectedPoints = player.ProjectedPoints * ((double)1 / (double)8), Team = player.Team });
                playerList.Add(new Player() { Name = player.Name, Position = "B4", Price = player.Price, ProjectedPoints = player.ProjectedPoints * ((double)1 / (double)16), Team = player.Team });
                playerList.Add(new Player() { Name = player.Name, Position = "B5", Price = player.Price, ProjectedPoints = player.ProjectedPoints * ((double)1 / (double)32), Team = player.Team });
                playerList.Add(new Player() { Name = player.Name, Position = "B6", Price = player.Price, ProjectedPoints = player.ProjectedPoints * ((double)1 / (double)64), Team = player.Team });
            }
            Player[] playerArray = playerList.ToArray();
            DataModel data = new DataModel();
            // Create the linear solver with the SCIP backend.
            Solver solver = Solver.CreateSolver("SCIP");
            Variable[] players = new Variable[playerArray.Length]; //This will be arranged bijectively with playerArray[].
            for (int j = 0; j < playerArray.Length; j++)
            {
                players[j] = solver.MakeIntVar(0, 1, playerArray[j].Name + " as " + playerArray[j].Position);
            }
            Console.WriteLine("Number of variables = " + solver.NumVariables());

            //for (int i = 0; i < data.NumConstraints; ++i)
            //{
            //    Constraint constraint = solver.MakeConstraint(0, data.Bounds[i], "");
            //    for (int j = 0; j < data.NumVars; ++j)
            //    {
            //        constraint.SetCoefficient(players[j], data.ConstraintCoeffs[i, j]);
            //    }
            //}

            //Sum of salaries must be below 100.
            Constraint salaryCap = solver.MakeConstraint(0, 100, "Max Salary");
            for (int i = 0; i < players.Length; i++)
            {
                salaryCap.SetCoefficient(players[i], playerArray[i].Price);
            }

            //Sum of players must be below 15.
            Constraint rosterCap = solver.MakeConstraint(0, 15, "Roster Size Limit");
            for (int i = 0; i < players.Length; i++)
            {
                rosterCap.SetCoefficient(players[i], 1);
            }

            //Sum of starting casts for each player must be equal to or less than 1.
            Constraint castCap = solver.MakeConstraint(0,1,)

            Console.WriteLine("Number of constraints = " + solver.NumConstraints()); //For the record, whoever wrote this library has no clue what accessors are in C#.

            Objective objective = solver.Objective();
            for (int j = 0; j < players.Length; ++j)
            {
                objective.SetCoefficient(players[j], data.ObjCoeffs[j]);
            }
            objective.SetMaximization();

            Solver.ResultStatus resultStatus = solver.Solve();

            // Check that the problem has an optimal solution.
            if (resultStatus != Solver.ResultStatus.OPTIMAL)
            {
                Console.WriteLine("The problem does not have an optimal solution!");
                return;
            }

            Console.WriteLine("Solution:");
            Console.WriteLine("Optimal objective value = " + solver.Objective().Value());

            for (int j = 0; j < data.NumVars; ++j)
            {
                Console.WriteLine("players[" + j + "] = " + players[j].SolutionValue());
            }

            Console.WriteLine("\nAdvanced usage:");
            Console.WriteLine("Problem solved in " + solver.WallTime() + " milliseconds");
            Console.WriteLine("Problem solved in " + solver.Iterations() + " iterations");
            Console.WriteLine("Problem solved in " + solver.Nodes() + " branch-and-bound nodes");
        }

    }
}
