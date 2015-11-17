

import java.awt.Color;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.net.Socket;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class LoginWindow extends JFrame
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6213688850588427879L;
	JLabel usernameLabel;
	JLabel passwordLabel;
	JTextField usernameTextField;
	JTextField passwordTextField;
	JButton loginButton;
	JButton registerButton;
	
	JLabel errorMessageLabel;
	
	ClientListener cc;
	
	public LoginWindow()
	{
		initializeVariables();
		createGUI();
		addActionListeners();
		
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setSize(300,400);
		setVisible(true);
		
	}
	
	
	public void initializeVariables()
	{
		cc = new ClientListener(this);

		
		
		usernameLabel = new JLabel("Username");
		passwordLabel = new JLabel("Password");
		
		usernameTextField = new JTextField(20);
		passwordTextField = new JTextField(20);
		
		loginButton = new JButton("Log in");
		registerButton = new JButton("Register");
		
		errorMessageLabel = new JLabel();
		errorMessageLabel.setForeground(Color.RED);
		

	}
	
	public void createGUI()
	{
		
		setLayout(new GridBagLayout());
		GridBagConstraints gbc = new GridBagConstraints();
		
		gbc.gridwidth = 2;
		gbc.gridx = 0;
		gbc.gridy = 0;
		add(usernameLabel, gbc);
		gbc.gridy = 1;
		add(usernameTextField, gbc);
		gbc.gridy = 2;
		add(passwordLabel, gbc);
		
		gbc.gridy = 3;
		add(passwordTextField, gbc);
		

		
		gbc.gridwidth =1;
		gbc.gridx = 0;
		gbc.gridy = 4;
		add(loginButton, gbc);
		gbc.gridx = 1;
		add(registerButton, gbc);
		
		gbc.gridy = 5;
		gbc.gridx = 0;
		gbc.gridwidth = 2;
		gbc.anchor = GridBagConstraints.BASELINE;
		add(errorMessageLabel, gbc);
	}
	
	public void addActionListeners()
	{
		loginButton.addActionListener(new ActionListener()
		{
			@Override
			public void actionPerformed(ActionEvent e)
			{
				String username = usernameTextField.getText();
				String password = passwordTextField.getText();
								
				if(username.isEmpty() || password.isEmpty())
				{
					errorMessageLabel.setText("Empty Username or Password");
//					LoginWindow.this.pack();
					LoginWindow.this.revalidate();
					LoginWindow.this.repaint();
					
					System.out.println("Error");

					return;
				}
				
				LoginInfo login = new LoginInfo(username, password);
				cc.sendObject(Constants.LOGIN);
				cc.sendObject(login);
			}
		});
	}
	
	public void setErrorMessage(String errorMessage)
	{
		errorMessageLabel.setText(errorMessage);
		this.revalidate();
		this.repaint();
	}
	
	public static void main(String[] args)
	{
		new LoginWindow();
	}
	
}

class ClientListener extends Thread
{
	private BufferedReader br;
	private PrintWriter pw;
	private LoginServer ls;
	private Socket s;
	private ObjectOutputStream	oos;
	private ObjectInputStream	ois;
	
	private LoginWindow lw;
	
	
	public ClientListener(LoginWindow lw)
	{
		this.lw = lw;

		boolean socketReady = initializeVariables();
		
		if(socketReady)
			start();
	}
	
	public boolean initializeVariables()
	{
		try
		{
			this.s =  new Socket("localhost", 6789);
		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			this.oos = new ObjectOutputStream(s.getOutputStream());
			oos.flush();
			this.ois = new ObjectInputStream(s.getInputStream());
			br = new BufferedReader(new InputStreamReader(s.getInputStream()));
			pw = new PrintWriter(s.getOutputStream());
			
		} catch (IOException ioe) {
			System.out.println("IOE in ChatThread constructor: " + ioe.getMessage());
			return false;
		}
		
		return true;
	}
	
	public void sendObject(Object obj)
	{
		try
		{
			oos.writeObject(obj);
			oos.flush();
		}
		catch(IOException ioe)
		{
			ioe.printStackTrace();
		}
	}
	
	public void run()
	{
		Object obj = null;
		try
		{
			while(true)
			{
				obj = ois.readObject();
				if(obj instanceof Signal)
				{
					Signal signal = (Signal)obj;
					System.out.println(signal.getMessage());
					if(signal.equals(Constants.LOGINSUCCESS))
					{
						JOptionPane.showMessageDialog(null, "Login Successfully");
					}
					else if(signal.equals(Constants.AUTHENTICATEFAIL) || signal.equals(Constants.USERNOTFOUND))
					{
//						JOptionPane.showMessageDialog(null, );
						lw.setErrorMessage("Wrong Password or Invalid Username");
					}
				}
			}
		}
		catch (IOException ioe)
		{
			ioe.printStackTrace();
		}
		catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
}
