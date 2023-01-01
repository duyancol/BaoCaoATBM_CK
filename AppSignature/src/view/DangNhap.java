package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
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

public class DangNhap extends JFrame implements ActionListener{
	   public DangNhap() {
	        initComponents();
	    }
	    @SuppressWarnings("unchecked")
	    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
	    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
	    private void initComponents() {

	        kGradientPanel1 = new keeptoo.KGradientPanel();
	        jLabel1 = new javax.swing.JLabel();
	        jTextField2 = new javax.swing.JTextField();
	        jButton1 = new javax.swing.JButton();
	        jLabel2 = new javax.swing.JLabel();
	        jLabel3 = new javax.swing.JLabel();
	        jLabel4 = new javax.swing.JLabel();
	        jPasswordField1 = new javax.swing.JPasswordField();
	        jButton2 = new javax.swing.JButton();
	        jLabel5 = new javax.swing.JLabel();

	        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

	        kGradientPanel1.setkEndColor(new java.awt.Color(153, 153, 153));
	        kGradientPanel1.setkStartColor(new java.awt.Color(0, 102, 102));

	        jLabel1.setBackground(new java.awt.Color(0, 0, 255));
	        jLabel1.setFont(new java.awt.Font("Segoe UI", 3, 24)); // NOI18N
	        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
	        jLabel1.setText("Login");

	        jTextField2.addActionListener(new java.awt.event.ActionListener() {
	            public void actionPerformed(java.awt.event.ActionEvent evt) {
	                jTextField2ActionPerformed(evt);
	            }
	        });

	        jButton1.setText("Key path");
	        jButton1.addActionListener(new java.awt.event.ActionListener() {
	            public void actionPerformed(java.awt.event.ActionEvent evt) {
	                jButton1ActionPerformed(evt);
	            }
	        });

	        jLabel3.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
	        jLabel3.setText("Bi danh :");

	        jLabel4.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
	        jLabel4.setText("Mật khẩu :");

	        jPasswordField1.setText("jPasswordField1");

	        jButton2.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
	        jButton2.setForeground(new java.awt.Color(51, 51, 51));
	        jButton2.setText("Đăng nhập");
	        jButton2.addActionListener(new java.awt.event.ActionListener() {
	            public void actionPerformed(java.awt.event.ActionEvent evt) {
	                jButton2ActionPerformed(evt);
	            }
	        });

	        jLabel5.setText("path");

	        javax.swing.GroupLayout kGradientPanel1Layout = new javax.swing.GroupLayout(kGradientPanel1);
	        kGradientPanel1.setLayout(kGradientPanel1Layout);
	        kGradientPanel1Layout.setHorizontalGroup(
	            kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addContainerGap(316, Short.MAX_VALUE)
	                .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, kGradientPanel1Layout.createSequentialGroup()
	                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
	                        .addGap(120, 120, 120))
	                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, kGradientPanel1Layout.createSequentialGroup()
	                        .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
	                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 58, javax.swing.GroupLayout.PREFERRED_SIZE)
	                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
	                            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                                .addComponent(jButton1)
	                                .addGap(12, 12, 12)
	                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
	                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
	                            .addComponent(jTextField2, javax.swing.GroupLayout.DEFAULT_SIZE, 283, Short.MAX_VALUE)
	                            .addComponent(jPasswordField1))
	                        .addGap(22, 22, 22))
	                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, kGradientPanel1Layout.createSequentialGroup()
	                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE)
	                        .addGap(65, 65, 65))))
	        );
	        kGradientPanel1Layout.setVerticalGroup(
	            kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addGap(22, 22, 22)
	                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
	                .addComponent(jLabel3)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
	                .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 9, Short.MAX_VALUE)
	                .addComponent(jLabel4)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 13, Short.MAX_VALUE)
	                .addComponent(jPasswordField1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(8, 8, 8)
	                .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, kGradientPanel1Layout.createSequentialGroup()
	                        .addGap(18, 18, 18)
	                        .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
	                            .addComponent(jButton1)
	                            .addComponent(jLabel5)))
	                    .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                        .addGap(25, 25, 25)
	                        .addComponent(jLabel2)))
	                .addGap(18, 18, 18)
	                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(53, 53, 53))
	        );

	        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
	        getContentPane().setLayout(layout);
	        layout.setHorizontalGroup(
	            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(kGradientPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );
	        layout.setVerticalGroup(
	            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(kGradientPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );

	        pack();
	        addAction();
	    }// </editor-fold>                             

	    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
	        // TODO add your handling code here:
	    }                                        

	    private void jTextField2ActionPerformed(java.awt.event.ActionEvent evt) {                                            
	        // TODO add your handling code here:
	    }                                           

	    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
	        // TODO add your handling code here:
	    }                                        

	    /**
	     * @param args the command line arguments
	     */
	    public static void main(String args[]) {
	        /* Set the Nimbus look and feel */
	        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
	        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
	         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
	         */
	        try {
	            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
	                if ("Nimbus".equals(info.getName())) {
	                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
	                    break;
	                }
	            }
	        } catch (ClassNotFoundException ex) {
	            java.util.logging.Logger.getLogger(DangNhap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
	        } catch (InstantiationException ex) {
	            java.util.logging.Logger.getLogger(DangNhap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
	        } catch (IllegalAccessException ex) {
	            java.util.logging.Logger.getLogger(DangNhap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
	        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
	            java.util.logging.Logger.getLogger(DangNhap.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
	        }
	        //</editor-fold>

	        /* Create and display the form */
	        java.awt.EventQueue.invokeLater(new Runnable() {
	            public void run() {
	                new DangNhap().setVisible(true);
	            }
	        });
	    }

	    // Variables declaration - do not modify                     
	    private javax.swing.JButton jButton1;
	    private javax.swing.JButton jButton2;
	    private javax.swing.JLabel jLabel1;
	    private javax.swing.JLabel jLabel2;
	    private javax.swing.JLabel jLabel3;
	    private javax.swing.JLabel jLabel4;
	    private javax.swing.JLabel jLabel5;
	    private javax.swing.JPasswordField jPasswordField1;
	    private javax.swing.JTextField jTextField2;
	    private keeptoo.KGradientPanel kGradientPanel1;
	    
	    private void addAction() {
			jButton2.addActionListener(this);
			jButton1.addActionListener(this);
		}



		@Override
		public void actionPerformed(ActionEvent e) {
			JFileChooser chooser;
			FileNameExtensionFilter filenameFilter;
			if (e.getSource() == jButton1) {
				chooser = new JFileChooser();
				filenameFilter = new FileNameExtensionFilter("file p12", "p12");
				chooser.setFileFilter(filenameFilter);
				chooser.setMultiSelectionEnabled(false);
				int x = chooser.showDialog(this, "chon file");
				if (x == JFileChooser.APPROVE_OPTION) {
					File file = chooser.getSelectedFile();
					
					try {
						jLabel2.setText(file.getAbsolutePath());
						
						
					} catch (Exception e2) {
						JOptionPane.showMessageDialog(this, "Chỉ hỗ trợ file .p12 !");
					}

				}
			}
			if (e.getSource() == jButton2) {
				controller.KeyStoreJKS stk = new KeyStoreJKS();
				controller.f kyfile= new f();
				kyfile.signDocument1("tp3.pdf",jPasswordField1.getText(),jTextField2.getText(),jLabel2.getText());
				controller.test_pdf pdf= new test_pdf();
			
				try {
					
		
					
					String thongtin =pdf.name();
					System.out.println(thongtin);
					String al =pdf.getAL();
					String validay =kyfile.getValidate(jPasswordField1.getText(),jLabel2.getText());
					PublicKey key =	stk.getPublickeyFromKeyStore(jLabel2.getText(),jTextField2.getText(),jPasswordField1.getText());
					String key1=	Base64.getEncoder().encodeToString(key.getEncoded());
						System.out.println(key1);
					Menu view  = new Menu(jLabel2.getText(),jTextField2.getText(),jPasswordField1.getText(),key1,thongtin,al,validay);
					view.setVisible(true);
					view.setLocationRelativeTo(null);
					this.setVisible(false);
					
				} catch (UnrecoverableKeyException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (KeyStoreException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (NoSuchAlgorithmException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (CertificateException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (FileNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				

			
			}
			
		}
	    // End of variables declaration
}
