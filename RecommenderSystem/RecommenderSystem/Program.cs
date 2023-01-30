using System;
using System.Linq;

namespace CosineSimilarity
{
    class Program
    {
        static void Main(string[] args)
        {
            //Arrays to represent the rating given by 3 different users to the 10 movies, values match with values in database
            int[] movie1 = new int[] { 0, 5, 5 };
            int[] movie2 = new int[] { 3, 3, 4 };
            int[] movie3 = new int[] { 3, 5, 5 };
            int[] movie4 = new int[] { 1, 1, 1 };
            int[] movie5 = new int[] { 5, 3, 2 };
            int[] movie6 = new int[] { 3, 4, 4 };
            int[] movie7 = new int[] { 3, 5, 5 };
            int[] movie8 = new int[] { 4, 4, 2 };
            int[] movie9 = new int[] { 3, 2, 4 };
            int[] movie10 = new int[] { 5, 4, 5 };

            int[][] movies = new int[][] { movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10 };
            int n = movies.Length;
            double[] similarity = new double[n];

            for (int i = 1; i < n; i++)
            {
                similarity[i] = CosineSimilarity(movie1, movies[i]);
            }

            var sortedSimilarity = similarity
                .Select((value, index) => new { Value = value, Index = index + 1 })
                .OrderByDescending(pair => pair.Value)
                .Take(3)
                .ToArray();

            Console.WriteLine("The 3 movies with highest cosine similarity with movie 1 are:");
            foreach (var pair in sortedSimilarity)
            {
                Console.WriteLine("Movie " + pair.Index + " with cosine similarity of " + pair.Value);
            }
        }

        //Function to calculate the similarity matrix between movie 1 with another movie
        static double CosineSimilarity(int[] movie1, int[] movie2)
        {
            double dotProduct = 0.0, magnitude1 = 0.0, magnitude2 = 0.0;
            int n = movie1.Length;

            for (int i = 0; i < n; i++)
            {
                dotProduct += movie1[i] * movie2[i];
                magnitude1 += Math.Pow(movie1[i], 2);
                magnitude2 += Math.Pow(movie2[i], 2);
            }

            magnitude1 = Math.Sqrt(magnitude1);
            magnitude2 = Math.Sqrt(magnitude2);

            if (magnitude1 != 0.0 || magnitude2 != 0.0)
            {
                return dotProduct / (magnitude1 * magnitude2);
            }
            else
            {
                return 0.0;
            }
        }
    }

}
