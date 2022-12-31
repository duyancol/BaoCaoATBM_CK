package view;

import java.awt.HeadlessException;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Base64;

import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;


import controller.KeyStoreJKS;
import controller.f;
import controller.test_pdf;

public class Menu extends JFrame implements ActionListener{
	private String path;
	private String bidanh;
	private String pass;
	private String publickey;
	private String thongtin;
	private String thuattoan;
	private String validay;
	
	 public Menu(String path, String bidanh, String pass,String publickey,String thongtin,String thuattoan,String validay) throws HeadlessException {
		super();
		 initComponents();
		this.path = path;
		this.bidanh = bidanh;
		this.pass = pass;
		this.publickey = publickey;
		this.thongtin = thongtin;
		this.thuattoan =thuattoan;
		this.validay=validay;
		String text =thongtin.replaceAll("OU=", "");
		String text1 =text.replaceAll("C=", "");
		String text2 =text1.replaceAll("CN=", "");
		String text3 =text2.replaceAll("O=", "");
		//String text1 =text.replaceAll("}", "");

		String Txt4=text3.substring(1,text3.length()-1);
		String[] txt = Txt4.split(",");
		String a = txt[2];
		String b = txt[3];
		this.jLabel11.setText(a);
		this.jLabel12.setText(b);
		this.jLabel5.setText(thuattoan);
		
		String[] txt1 = validay.split("----");
		String a1 = txt1[0];
		String b1 = txt1[1];
		this.jLabel9.setText(a1);
		this.jLabel19.setText(b1);
		this.jLabel10.setText(publickey);
		this.jLabel14.setText(bidanh);
		this.jLabel16.setText(pass);
		this.jLabel15.setText(path);
		
	}

	   // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
	   // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
	  // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
	 private void initComponents() {

	        jPanel4 = new javax.swing.JPanel();
	        kGradientPanel1 = new keeptoo.KGradientPanel();
	        jTabbedPane1 = new javax.swing.JTabbedPane();
	        jPanel2 = new javax.swing.JPanel();
	        jLabel1 = new javax.swing.JLabel();
	        jLabel2 = new javax.swing.JLabel();
	        jLabel3 = new javax.swing.JLabel();
	        jLabel6 = new javax.swing.JLabel();
	        jLabel7 = new javax.swing.JLabel();
	        jLabel8 = new javax.swing.JLabel();
	        jLabel5 = new javax.swing.JLabel();
	        jLabel9 = new javax.swing.JLabel();
	        jLabel10 = new javax.swing.JLabel();
	        jLabel11 = new javax.swing.JLabel();
	        jLabel12 = new javax.swing.JLabel();
	        jLabel19 = new javax.swing.JLabel();
	        jPanel3 = new javax.swing.JPanel();
	        jPanel1 = new javax.swing.JPanel();
	        jLabel4 = new javax.swing.JLabel();
	        jButton1 = new javax.swing.JButton();
	        jButton3 = new javax.swing.JButton();
	        jButton4 = new javax.swing.JButton();
	        jLabel20 = new javax.swing.JLabel();
	        jLabel21 = new javax.swing.JLabel();
	        jPanel5 = new javax.swing.JPanel();
	        jLabel13 = new javax.swing.JLabel();
	        jLabel14 = new javax.swing.JLabel();
	        jLabel16 = new javax.swing.JLabel();
	        jLabel15 = new javax.swing.JLabel();
	        jLabel17 = new javax.swing.JLabel();
	        jLabel18 = new javax.swing.JLabel();

	        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
	        jPanel4.setLayout(jPanel4Layout);
	        jPanel4Layout.setHorizontalGroup(
	            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGap(0, 100, Short.MAX_VALUE)
	        );
	        jPanel4Layout.setVerticalGroup(
	            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGap(0, 100, Short.MAX_VALUE)
	        );

	        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

	        kGradientPanel1.setkEndColor(new java.awt.Color(51, 0, 153));
	        kGradientPanel1.setkStartColor(new java.awt.Color(0, 0, 51));

	        jLabel1.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel1.setText("Tên :");

	        jLabel2.setFont(new java.awt.Font("Segoe UI", 3, 18)); // NOI18N
	        jLabel2.setText("Thông tin");

	        jLabel3.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel3.setText("Địa chỉ :");

	        jLabel6.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel6.setText("Public key :");

	        jLabel7.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel7.setText("Thuật toán :");

	        jLabel8.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel8.setText("Thời hạn :");

	        jLabel5.setText("jLabel5");

	        jLabel9.setText("jLabel9");

	        jLabel10.setText("jLabel10");

	        jLabel11.setText("jLabel11");

	        jLabel12.setText("jLabel12");

	        jLabel19.setText("jLabel19");

	        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
	        jPanel2.setLayout(jPanel2Layout);
	        jPanel2Layout.setHorizontalGroup(
	            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel2Layout.createSequentialGroup()
	                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addGroup(jPanel2Layout.createSequentialGroup()
	                        .addGap(43, 43, 43)
	                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                            .addGroup(jPanel2Layout.createSequentialGroup()
	                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                                    .addComponent(jLabel6)
	                                    .addComponent(jLabel7)
	                                    .addComponent(jLabel8))
	                                .addGap(26, 26, 26)
	                                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 349, javax.swing.GroupLayout.PREFERRED_SIZE)
	                                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)))
	                            .addGroup(jPanel2Layout.createSequentialGroup()
	                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
	                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                                .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE))
	                            .addGroup(jPanel2Layout.createSequentialGroup()
	                                .addComponent(jLabel3)
	                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
	                                .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 152, javax.swing.GroupLayout.PREFERRED_SIZE))))
	                    .addGroup(jPanel2Layout.createSequentialGroup()
	                        .addGap(100, 100, 100)
	                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                            .addComponent(jLabel19, javax.swing.GroupLayout.PREFERRED_SIZE, 256, javax.swing.GroupLayout.PREFERRED_SIZE)
	                            .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 243, javax.swing.GroupLayout.PREFERRED_SIZE)))
	                    .addGroup(jPanel2Layout.createSequentialGroup()
	                        .addGap(25, 25, 25)
	                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)))
	                .addContainerGap(31, Short.MAX_VALUE))
	        );
	        jPanel2Layout.setVerticalGroup(
	            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel2Layout.createSequentialGroup()
	                .addGap(18, 18, 18)
	                .addComponent(jLabel2)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
	                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                    .addComponent(jLabel1)
	                    .addComponent(jLabel11))
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                    .addComponent(jLabel3)
	                    .addComponent(jLabel12))
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                    .addComponent(jLabel6)
	                    .addComponent(jLabel10))
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                    .addComponent(jLabel7)
	                    .addComponent(jLabel5))
	                .addGap(3, 3, 3)
	                .addComponent(jLabel8)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                .addComponent(jLabel9)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                .addComponent(jLabel19)
	                .addContainerGap(61, Short.MAX_VALUE))
	        );

	        jTabbedPane1.addTab("Thông tin", jPanel2);

	        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
	        jPanel3.setLayout(jPanel3Layout);
	        jPanel3Layout.setHorizontalGroup(
	            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGap(0, 519, Short.MAX_VALUE)
	        );
	        jPanel3Layout.setVerticalGroup(
	            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGap(0, 261, Short.MAX_VALUE)
	        );

	        jTabbedPane1.addTab("...", jPanel3);

	        jLabel4.setFont(new java.awt.Font("Segoe UI", 3, 18)); // NOI18N
	        jLabel4.setText("Ký File PDF");

	        jButton1.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
	        jButton1.setText("Save");
	        

	        jButton3.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
	        jButton3.setText("Thực hiện");

	        jButton4.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
	        jButton4.setText("File");
	        
	        jLabel20.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel20.setText("path");

	        jLabel21.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel21.setText("path");

	        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
	        jPanel1.setLayout(jPanel1Layout);
	        jPanel1Layout.setHorizontalGroup(
	            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel1Layout.createSequentialGroup()
	                .addGap(46, 46, 46)
	                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addGroup(jPanel1Layout.createSequentialGroup()
	                        .addComponent(jButton4)
	                        .addGap(18, 18, 18)
	                        .addComponent(jLabel20, javax.swing.GroupLayout.PREFERRED_SIZE, 349, javax.swing.GroupLayout.PREFERRED_SIZE))
	                    .addComponent(jButton3)
	                    .addGroup(jPanel1Layout.createSequentialGroup()
	                        .addComponent(jButton1)
	                        .addGap(18, 18, 18)
	                        .addComponent(jLabel21, javax.swing.GroupLayout.PREFERRED_SIZE, 334, javax.swing.GroupLayout.PREFERRED_SIZE))
	                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE))
	                .addContainerGap(34, Short.MAX_VALUE))
	        );
	        jPanel1Layout.setVerticalGroup(
	            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel1Layout.createSequentialGroup()
	                .addGap(36, 36, 36)
	                .addComponent(jLabel4)
	                .addGap(26, 26, 26)
	                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                    .addComponent(jButton4)
	                    .addComponent(jLabel20))
	                .addGap(18, 18, 18)
	                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                    .addComponent(jButton1)
	                    .addComponent(jLabel21))
	                .addGap(18, 18, 18)
	                .addComponent(jButton3)
	                .addContainerGap(69, Short.MAX_VALUE))
	        );

	        jTabbedPane1.addTab("Ký file", jPanel1);

	        jPanel5.setBackground(new java.awt.Color(255, 255, 255));

	        jLabel13.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel13.setText("Xin chào : ");

	        jLabel14.setBackground(new java.awt.Color(255, 255, 255));
	        jLabel14.setText("bidanh");

	        jLabel16.setText("pass");

	        jLabel15.setText("key");

	        jLabel17.setFont(new java.awt.Font("Segoe UI", 2, 12)); // NOI18N
	        jLabel17.setText("Van Duy");

	        jLabel18.setIcon(new javax.swing.ImageIcon("F:\\person-icon.png")); // NOI18N
	        jLabel18.setText("jLabel18");

	        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
	        jPanel5.setLayout(jPanel5Layout);
	        jPanel5Layout.setHorizontalGroup(
	            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel5Layout.createSequentialGroup()
	                .addGap(2, 2, 2)
	                .addComponent(jLabel18, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
	                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 171, javax.swing.GroupLayout.PREFERRED_SIZE)
	                    .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
	                        .addComponent(jLabel17, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                        .addGroup(jPanel5Layout.createSequentialGroup()
	                            .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
	                            .addGap(18, 18, 18)
	                            .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
	                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
	                            .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))))
	                .addContainerGap(19, Short.MAX_VALUE))
	        );
	        jPanel5Layout.setVerticalGroup(
	            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel5Layout.createSequentialGroup()
	                .addContainerGap()
	                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addGroup(jPanel5Layout.createSequentialGroup()
	                        .addComponent(jLabel13)
	                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                            .addComponent(jLabel14)
	                            .addComponent(jLabel16)
	                            .addComponent(jLabel15)))
	                    .addGroup(jPanel5Layout.createSequentialGroup()
	                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                            .addComponent(jLabel18, javax.swing.GroupLayout.DEFAULT_SIZE, 54, Short.MAX_VALUE)
	                            .addComponent(jLabel17))
	                        .addContainerGap())))
	        );

	        javax.swing.GroupLayout kGradientPanel1Layout = new javax.swing.GroupLayout(kGradientPanel1);
	        kGradientPanel1.setLayout(kGradientPanel1Layout);
	        kGradientPanel1Layout.setHorizontalGroup(
	            kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addGap(46, 46, 46)
	                .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
	                    .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                    .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 519, javax.swing.GroupLayout.PREFERRED_SIZE))
	                .addContainerGap(53, Short.MAX_VALUE))
	        );
	        kGradientPanel1Layout.setVerticalGroup(
	            kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addGap(23, 23, 23)
	                .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 49, Short.MAX_VALUE)
	                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(25, 25, 25))
	        );

	        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
	        getContentPane().setLayout(layout);
	        layout.setHorizontalGroup(
	            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(kGradientPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );
	        layout.setVerticalGroup(
	            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
	                .addComponent(kGradientPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(0, 0, Short.MAX_VALUE))
	        );

	        pack();
	        addAction();
	    }// </editor-fold>      
	  private javax.swing.JButton jButton1;
	    private javax.swing.JButton jButton3;
	    private javax.swing.JButton jButton4;
	    private javax.swing.JLabel jLabel1;
	    private javax.swing.JLabel jLabel10;
	    private javax.swing.JLabel jLabel11;
	    private javax.swing.JLabel jLabel12;
	    private javax.swing.JLabel jLabel13;
	    private javax.swing.JLabel jLabel14;
	    private javax.swing.JLabel jLabel15;
	    private javax.swing.JLabel jLabel16;
	    private javax.swing.JLabel jLabel17;
	    private javax.swing.JLabel jLabel18;
	    private javax.swing.JLabel jLabel19;
	    private javax.swing.JLabel jLabel2;
	    private javax.swing.JLabel jLabel20;
	    private javax.swing.JLabel jLabel21;
	    private javax.swing.JLabel jLabel3;
	    private javax.swing.JLabel jLabel4;
	    private javax.swing.JLabel jLabel5;
	    private javax.swing.JLabel jLabel6;
	    private javax.swing.JLabel jLabel7;
	    private javax.swing.JLabel jLabel8;
	    private javax.swing.JLabel jLabel9;
	    private javax.swing.JPanel jPanel1;
	    private javax.swing.JPanel jPanel2;
	    private javax.swing.JPanel jPanel3;
	    private javax.swing.JPanel jPanel4;
	    private javax.swing.JPanel jPanel5;
	    private javax.swing.JTabbedPane jTabbedPane1;
	    private keeptoo.KGradientPanel kGradientPanel1;
	    private void addAction() {
			
			jButton4.addActionListener(this);
			jButton1.addActionListener(this);
			jButton3.addActionListener(this);
		}



		@Override
		public void actionPerformed(ActionEvent e) {
			JFileChooser chooser;
			FileNameExtensionFilter filenameFilter;
			if (e.getSource() == jButton4) {
				chooser = new JFileChooser();
				filenameFilter = new FileNameExtensionFilter("file pdf", "pdf" );
				chooser.setFileFilter(filenameFilter);
				chooser.setMultiSelectionEnabled(false);
				int x = chooser.showDialog(this, "chon file");
				if (x == JFileChooser.APPROVE_OPTION) {
					File file = chooser.getSelectedFile();
					
					try {
						jLabel20.setText(file.getAbsolutePath());
						
						
					} catch (Exception e2) {
						JOptionPane.showMessageDialog(this, "Chỉ hỗ trợ file pdf !");
					}

				}
			}
			if (e.getSource() == jButton1) {
				chooser = new JFileChooser();

				if (jLabel21.getText().equals("")) {
					JOptionPane.showMessageDialog(this, "Cần có đường dẫn để save !");
				} else {
					int re = chooser.showSaveDialog(this);
					if (re == JFileChooser.APPROVE_OPTION) {
						File file = chooser.getSelectedFile();
						jLabel21.setText(file.getAbsolutePath());
						
					}
				}

			}
			if (e.getSource() == jButton3) {
				String partFilecopy = jLabel20.getText();
				String partFilenewcopy=jLabel21.getText();
				
				controller.f kyfile = new f();
				try {
					kyfile.signDocument(partFilecopy, jLabel16.getText(), jLabel14.getText(), jLabel15.getText(),partFilenewcopy);
					JOptionPane.showMessageDialog(this, "Thanh cong !");
					jLabel20.setText("path");
					jLabel21.setText("path");
				} catch (Exception e2) {
					JOptionPane.showMessageDialog(this, "loi !");
				}


			}
//			if (e.getSource() == jButton2) {
//				controller.KeyStoreJKS stk = new KeyStoreJKS();
//				controller.f kyfile= new f();
//				kyfile.signDocument("tp3.pdf",jPasswordField1.getText(),jTextField2.getText(),jLabel2.getText());
//				controller.test_pdf pdf= new test_pdf();
//			
//				try {
//					
//		
//					
//					String thongtin =pdf.name();
//					System.out.println(thongtin);
//					String al =pdf.getAL();
//					String validay =kyfile.getValidate(jPasswordField1.getText(),jLabel2.getText());
//					PublicKey key =	stk.getPublickeyFromKeyStore(jLabel2.getText(),jTextField2.getText(),jPasswordField1.getText());
//					String key1=	Base64.getEncoder().encodeToString(key.getEncoded());
//						System.out.println(key1);
//					Menu view  = new Menu(jLabel2.getText(),jTextField2.getText(),jPasswordField1.getText(),key1,thongtin,al,validay);
//					view.setVisible(true);
//					view.setLocationRelativeTo(null);
//					this.setVisible(false);
//					
//				} catch (UnrecoverableKeyException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				} catch (KeyStoreException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				} catch (NoSuchAlgorithmException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				} catch (CertificateException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				} catch (FileNotFoundException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				} catch (IOException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				}
				

			
//			}
			
		}
}
