<?php
include_once("./www/wp-config.php");

backup_tables(DB_HOST,DB_USER,DB_PASSWORD, DB_NAME);


/* backup the db OR just a table */
function backup_tables($host,$user,$pass,$name,$tables = '*')
{
	$siteurl 	= "http://localhost/cobianzo2/www";
	
	
	$link = mysql_connect($host,$user,$pass);
	mysql_select_db($name,$link);
	
	//get all of the tables
	if($tables == '*')
	{
		$tables = array();
		$result = mysql_query('SHOW TABLES');
		while($row = mysql_fetch_row($result))
		{
			$tables[] = $row[0];
		}
	}
	else
	{
		$tables = is_array($tables) ? $tables : explode(',',$tables);
	}
	
	//cycle through
	foreach($tables as $table)
	{
		$result = mysql_query('SELECT * FROM '.$table);
		$num_fields = mysql_num_fields($result);
		
		$return.= 'DROP TABLE '.$table.';';
		$row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
		$return.= "\n\n".$row2[1].";\n\n";
		
		for ($i = 0; $i < $num_fields; $i++) 
		{
			while($row = mysql_fetch_row($result))
			{
				$return.= 'INSERT INTO '.$table.' VALUES(';
				for($j=0; $j<$num_fields; $j++) 
				{
					$row[$j] = addslashes($row[$j]);
					$row[$j] = ereg_replace("\n","\\n",$row[$j]);
					
					
					
					
					if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
					if ($j<($num_fields-1)) { $return.= ','; }
				}
				$return.= ");\n";
			}
		}
		$return.="\n\n\n";
		
		/* REPACEMENTS ::: */
		//if (strpos($row[$j], $siteurl))
		$return = str_replace($siteurl, "SITEURL", $return);
			
		
		
		
		
	}
	
	//save file
	$file_name	= date("Y-m-d--H-i_")."db-backup.sql";
	echo "Saving $file_name <br>";
	$handle = fopen('db-dumps/'.$file_name,'w+');
	fwrite($handle,$return);
	fclose($handle);
}