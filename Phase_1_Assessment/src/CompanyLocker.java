import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Scanner;
import java.util.function.Predicate;

public class CompanyLocker {
    
    static class DeveloperDetails {
        private final String name = "Naveen H N";
        private final String email = "naveenhn21@gmail.com";
        private final String education = "Bachelor's degree in Computer Science\n";

        public void getDeveloperDetails() {
            System.out.println("\nDeveloper Information ");
            System.out.println("Name             : " + name);
            System.out.println("Email ID         : " + email);
            System.out.println("Education        : " + education);
        }
    }

    public static void main(String[] args) {
        boolean flag = true;
        boolean flag2 = false;
        Scanner scanner = new Scanner(System.in);
        System.out.println("-------------  WELCOME TO VIRTUAL KEY APPLICATION  -----------");

        // Display developer details
        DeveloperDetails dd = new DeveloperDetails();
        dd.getDeveloperDetails();

        
        while (!flag2) {
            try {
                while (true) {
                    System.out.println("------------------------  MAIN MENU -------------------------- ");
                    System.out.println(" 1.Files Available                       ");
                    System.out.println(" 2.File Operations (Add, Remove, Search) ");
                    System.out.println(" 3.Exit Application                      ");
                    System.out.println("*********************");
                    System.out.println("Enter Your Choice: ");
                    int count = scanner.nextInt();

                    
                    switch (count) {
                        case 1:
                            displayfilelist();
                            break;
                        case 2:
                            while (flag) {
                                System.out.println("*********************");
                                System.out.println("---------------------  FILE OPERATIONS ----------------------- ");
                                System.out.println("\n1.Add file\n2.Delete file\n3.Search file\n4.Back to main\n");
                                System.out.println("Enter your choice : ");
                                int opcount = scanner.nextInt();
                                switch (opcount) {
                                    case 1:
                                        addfiles();
                                        break;
                                    case 2:
                                        deletefiles();
                                        break;
                                    case 3:
                                        searchfiles();
                                        break;
                                    case 4:
                                        flag = false;
                                        break;
                                    default:
                                        System.out.println("Please Enter Valid Choice.");
                                        break;
                                }
                            }
                            flag = true;
                            break;
                        case 3:
                            System.out.println("Application closed.");
                            System.exit(0);
                        default:
                            System.out.println("Please enter valid choice");
                            break;
                    }
                }
            } catch (Exception e) {
                System.out.println("Please Enter Valid Choice.");
                scanner.nextLine();
            }
        }
    }
    
    // method displays the list of files present in the directory
    public static void displayfilelist() {
        File f = new File("C:\\Java FSD\\Assessment\\Phase_1_Assessment\\src\\Filedirectory");
        File[] filename = f.listFiles();
        boolean found = false; 
    	System.out.println("The files in the directory are:");
        for (File filenames : filename) {
            found = true;
            System.out.println(filenames.getName());
        }
        if (!found) {
            System.out.println("\nDirectory is empty.\n");
        }
    }
    
    // method allows user to add a file to the directory
	public static void addfiles() {
		String filename;
		File file=new File("C:\\Java FSD\\Assessment\\Phase_1_Assessment\\src\\Filedirectory");
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the file name you want to add: ");
		filename=scanner.nextLine();
		for(File files:file.listFiles()) {
			if(files.getName().equals(filename)) {			
				System.out.println("File Already Exits! Try with different name: ");
				return;
		    }
		}
		File newfile=new File(file,filename);
		try(FileOutputStream fstream=new FileOutputStream(newfile);
				DataOutputStream data=new DataOutputStream(fstream)) {
					System.out.println("File is Added");
				}catch(FileNotFoundException e) {
					e.printStackTrace();
				}catch(IOException e) {
					e.printStackTrace();
				}
	}
	
	// This method allows user to delete a file from the directory
	public static void deletefiles() {
		String filename;
		File file=new File("C:\\Java FSD\\Assessment\\Phase_1_Assessment\\src\\Filedirectory");
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the file name you wish to Delete: ");		
		filename=scanner.nextLine();
		boolean found=false;
		for(File files:file.listFiles()) {
		if(files.getName().equals(filename)) {
			files.delete();
			found=true;
			System.out.println("Deletion successful.");	
			break;
			}
		}
		if(!found) {
		System.out.println("File Not Found.");
		}
	}
    
	// method to search for a file in the directory
    public static void searchfiles() {
		String filename;
		Scanner scanner=new Scanner(System.in);
		System.out.println("Enter the file name you want to search: ");		
		filename=scanner.nextLine();
		File file=new File("C:\\Java FSD\\Assessment\\Phase_1_Assessment\\src\\Filedirectory");
		File[] files=file.listFiles();
		boolean found=false;
		
		// Perform Linear search
		for(int i=0;i<files.length;i++) {		
			if(files[i].getName().equals(filename)) {
				found=true;
				System.out.println("File "+files[i].getName()+" found at index "+i);
				break;
			}
		}
		if(!found) {
			System.out.println("File doesn't Exist.");

		}
							
	}	
}
