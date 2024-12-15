import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/deleteMovie")
public class DeleteMovieServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the movie ID from the request
        String movieId = request.getParameter("movie_id");

        if (movieId != null && !movieId.isEmpty()) {
            try {
                // Connect to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");

                // Prepare SQL to delete the movie
                String sql = "DELETE FROM movies WHERE id = ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setInt(1, Integer.parseInt(movieId));

                // Execute the deletion
                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    response.sendRedirect("movie_list"); // Redirect back to the movie list page
                } else {
                    response.getWriter().write("Movie not found or could not be deleted.");
                }

                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("Error deleting movie: " + e.getMessage());
            }
        } else {
            response.getWriter().write("Invalid movie ID.");
        }
    }
}
