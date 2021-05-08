package dataaccess;

import java.sql.*;
import java.util.ArrayList;
import models.Images;

/**
 *
 * @author Chels
 */
public class ImageService {
      private DatabaseDriver driver;
    
    public ImageService() {
        this.driver = new DatabaseDriver();
    }
    
    public ArrayList<Images> find(String query) throws SQLException {
        String sql = "SELECT * FROM images WHERE title LIKE ?";
        PreparedStatement stmt = this.driver.getConnection().prepareStatement(sql);
        
        String queryFormatted = String.format("%%%s%%", query);
        stmt.setString(1, queryFormatted);
        
        ResultSet rs = stmt.executeQuery();
        
        ArrayList<Images> found = new ArrayList<>();
        
        while (rs.next()) {
            int id = rs.getInt("id");
            String title = rs.getString("title");
            String url = rs.getString("url");
            Date createdAt = rs.getDate("created_at");
            
            Images gif = new Images(id, title, url, createdAt);
            found.add(gif);

        }
        
        return found;
    }
    
    public Images get(int id) throws SQLException {
        String sql = "SELECT * FROM Images WHERE id = ? GROUP BY id";
        PreparedStatement stmt = this.driver.getConnection().prepareStatement(sql);
        
        stmt.setInt(1, id);
        
        ResultSet rs = stmt.executeQuery();
        
        if (!rs.next())
            return null;
        
        String title = rs.getString("title");
        String url = rs.getString("url");
        double averageRating = rs.getDouble("average");
        Date createdAt = rs.getDate("created_at");

        Images gif = new Images(id, title, url, createdAt);
        
        return gif;
    }
    
    public boolean add(String title, String url) throws SQLException {
        String sql = "INSERT INTO images (title, url) VALUES(?, ?)";
        PreparedStatement stmt = this.driver.getConnection().prepareStatement(sql);
        
        stmt.setString(1, title);
        stmt.setString(2, url);
        
        int added = stmt.executeUpdate();
        
        if (added > 0)
            return true;
        else
            return false;
    }
}
