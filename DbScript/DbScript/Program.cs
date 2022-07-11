using MySql.Data.MySqlClient;  //Its for MySQL

string MyConnection = "datasource=localhost;port=4406;username=root;password=111";

string Query = "Use mydb; INSERT INTO authors (id,name,email) VALUES(2,\"Priya\",\"p@gmail.com\");";


while (true)
{
    MySqlConnection MyConn = new MySqlConnection(MyConnection);


    MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn);
    MySqlDataReader MyReader2;
    MyConn.Open();
    MyReader2 = MyCommand2.ExecuteReader();     // Here our query will be executed and data saved into the database.

    while (MyReader2.Read())
    {
    }
    MyConn.Close();

    Console.WriteLine("Sent");

    Thread.Sleep(10000);
}


