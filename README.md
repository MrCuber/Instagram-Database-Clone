# Instagram-Database-Clone
A repository containing a clone of the Instagram database schema, along with tasks and solutions based on the provided data. This project aims to provide a practical understanding of database design, queries, and operations through a simplified Instagram-like database structure.

## Database Schema
The database schema closely resembles the structure of an actual Instagram database. It consists of the following main tables:
<ul>
    <li>Users: </li>
    <p>Information about registered users.</p>
    <li>Photos: </li>
    <p>Details of the photos posted by users.</p>
    <li>Comments: </li>
    <p>Comments made by users on photos.</p>
    <li>Likes: </li>
    <p>Records of likes given to photos by users.</p>
    <li>Follows: </li>
    <p>Information about Users following another user(Consists of user_id).</p>
    <li>Tags: </li>
    <p>Various tags used to categorize photos.</p>
    <li>Photo Tags: </li>
    <p>A junction table to associate photos with tags.</p>
</ul>

## Work Function Of Triggers
### Preventing Self Follow Trigger
<p>When User tried to Follow his account It throws the Warning "Cannot follow Yourself".</p>
![image](https://github.com/MrCuber/Instagram-Database-Clone/assets/91596032/79dea454-39bc-4e91-b89a-1cb6c758e605)

### UnFollow Trigger
<p>When an user unfollow the other user, The unfollowed data will be automatically added into the unfollows table.</p>
![image](https://github.com/MrCuber/Instagram-Database-Clone/assets/91596032/9485ff34-1d0d-4857-bf8a-2e52945a0031)
