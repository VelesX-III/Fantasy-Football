using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

            DataModel data = new DataModel();
            // Create the linear solver with the SCIP backend.
            Solver solver = Solver.CreateSolver("SCIP");

            Dictionary<Player, Variable> players = new Dictionary<Player, Variable>();
            foreach (Player player in playerList)
            {
                players[player] = solver.MakeIntVar(0, 1, player.Name + " of " + player.Team + " as " + player.Position);
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
            foreach (Player player in players.Keys)
            {
                salaryCap.SetCoefficient(players[player], player.Price);
            }

            //Number of players must be below 15.
            Constraint rosterCap = solver.MakeConstraint(0, 15, "Roster Size Limit");
            foreach (Player player in players.Keys)
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            //Sum of starting casts for each player must be equal to or less than 1.
            List<Constraint> castCaps = new List<Constraint>();
            foreach (var group in players.Keys.GroupBy(p => new { p.Name, p.Team })) //Get all the unique individuals. This is bijective with the primary key of the table.
            {
                Constraint castCap = solver.MakeConstraint(0, 1, group.Key.Name + " of " + group.Key.Team + " position restriction.");
                foreach (var player in group)
                {
                    castCap.SetCoefficient(players[player], 1);
                }
                castCaps.Add(castCap);
            }

            Console.WriteLine(castCaps.Count);

            //QB count must be between 1.
            Constraint QBCap = solver.MakeConstraint(1, 1, "QB Limit");
            foreach (Player player in players.Keys.Where(p => p.Position == "QB"))
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            //WR count must be between 3.
            Constraint WRCap = solver.MakeConstraint(3, 3, "WR Limit");
            foreach (Player player in players.Keys.Where(p => p.Position == "WR"))
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            //RB count must be between 3.
            Constraint RBCap = solver.MakeConstraint(2, 2, "RB Limit");
            foreach (Player player in players.Keys.Where(p => p.Position == "RB"))
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            //TE count must be between 3.
            Constraint TECap = solver.MakeConstraint(1, 1, "TE Limit");
            foreach (Player player in players.Keys.Where(p => p.Position == "TE"))
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            //K count must be between 3.
            Constraint KCap = solver.MakeConstraint(1, 1, "K Limit");
            foreach (Player player in players.Keys.Where(p => p.Position == "K"))
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            //DEF count must be between 3.
            Constraint DEFCap = solver.MakeConstraint(1, 1, "DEF Limit");
            foreach (Player player in players.Keys.Where(p => p.Position == "DEF"))
            {
                salaryCap.SetCoefficient(players[player], 1);
            }

            Console.WriteLine("Number of constraints = " + solver.NumConstraints()); //For the record, whoever wrote this library has no clue what accessors are in C#.

            Objective objective = solver.Objective();
            foreach (var player in players.Keys)
            {
                objective.SetCoefficient(players[player], player.ProjectedPoints);
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

            //for (int j = 0; j < data.NumVars; ++j)
            //{
            //    Console.WriteLine("players[" + j + "] = " + players[j].SolutionValue());
            //}

            Console.WriteLine("\nAdvanced usage:");
            Console.WriteLine("Problem solved in " + solver.WallTime() + " milliseconds");
            Console.WriteLine("Problem solved in " + solver.Iterations() + " iterations");
            Console.WriteLine("Problem solved in " + solver.Nodes() + " branch-and-bound nodes");
        }

    }
}
