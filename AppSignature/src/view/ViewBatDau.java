package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;


public class ViewBatDau extends JFrame implements ActionListener {
	 private javax.swing.JButton jButton1;
	    private javax.swing.JButton jButton2;
	    private javax.swing.JButton jButton3;
	    private javax.swing.JButton jButton4;
	    private javax.swing.JButton jButton5;
	    private javax.swing.JLabel jLabel1;
	    private javax.swing.JLabel jLabel2;
	    private javax.swing.JLabel jLabel3;
	    private javax.swing.JLabel jLabel4;
	    private javax.swing.JPanel jPanel1;
	    private javax.swing.JPanel jPanel2;
	    private javax.swing.JPanel jPanel3;
	    private javax.swing.JPanel jPanel4;
	    private javax.swing.JPanel jPanel5;
	    private javax.swing.JPanel jPanel6;
	    private keeptoo.KGradientPanel kGradientPanel1;
	public ViewBatDau() {
		super();
		 jLabel2 = new javax.swing.JLabel();
	        kGradientPanel1 = new keeptoo.KGradientPanel();
	        jLabel1 = new javax.swing.JLabel();
	        jPanel1 = new javax.swing.JPanel();
	        jLabel3 = new javax.swing.JLabel();
	        jPanel2 = new javax.swing.JPanel();
	        jButton2 = new javax.swing.JButton();
	        jPanel3 = new javax.swing.JPanel();
	        jButton1 = new javax.swing.JButton();
	        jPanel6 = new javax.swing.JPanel();
	        jButton5 = new javax.swing.JButton();
	        jLabel4 = new javax.swing.JLabel();

	        jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\LAPTOP USA PRO\\Desktop\\Q29021_PV_TN_IM_1.jpg")); // NOI18N

	        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

	        kGradientPanel1.setkEndColor(new java.awt.Color(0, 0, 51));
	        kGradientPanel1.setkStartColor(new java.awt.Color(0, 51, 51));

	        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("Q29021_PV_TN_IM_1.jpg"))); // NOI18N
	        jLabel1.setText("jLabel1");

	        jPanel1.setBackground(new java.awt.Color(0, 0, 51));

	        jLabel3.setBackground(new java.awt.Color(204, 204, 204));
	        jLabel3.setFont(new java.awt.Font("Segoe UI", 3, 24)); // NOI18N
	        jLabel3.setForeground(new java.awt.Color(204, 204, 204));
	        jLabel3.setText("Tool Support Encrypt & Decrypt");

	        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
	        jPanel1.setLayout(jPanel1Layout);
	        jPanel1Layout.setHorizontalGroup(
	            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );
	        jPanel1Layout.setVerticalGroup(
	            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel1Layout.createSequentialGroup()
	                .addContainerGap()
	                .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                .addContainerGap())
	        );

	        jPanel2.setBackground(new java.awt.Color(0, 0, 51));
	        jPanel2.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(102, 102, 0)));

	        jButton2.setBackground(new java.awt.Color(0, 0, 51));
	        jButton2.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
	        jButton2.setForeground(new java.awt.Color(204, 204, 204));
	        jButton2.setText("Start");
	        jButton2.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(102, 102, 0)));

	        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
	        jPanel2.setLayout(jPanel2Layout);
	        jPanel2Layout.setHorizontalGroup(
	            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );
	        jPanel2Layout.setVerticalGroup(
	            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel2Layout.createSequentialGroup()
	                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(0, 0, Short.MAX_VALUE))
	        );

	        jPanel3.setBackground(new java.awt.Color(0, 0, 51));
	        jPanel3.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(102, 102, 0)));

	        jButton1.setBackground(new java.awt.Color(0, 0, 51));
	        jButton1.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
	        jButton1.setForeground(new java.awt.Color(204, 204, 204));
	        jButton1.setText("About");
	        jButton1.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(102, 102, 0)));
	        

	        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
	        jPanel3.setLayout(jPanel3Layout);
	        jPanel3Layout.setHorizontalGroup(
	            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, 155, Short.MAX_VALUE)
	        );
	        jPanel3Layout.setVerticalGroup(
	            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(jPanel3Layout.createSequentialGroup()
	                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(0, 0, Short.MAX_VALUE))
	        );

	        jPanel6.setBackground(new java.awt.Color(0, 0, 51));
	        jPanel6.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(102, 102, 0)));

	        jButton5.setBackground(new java.awt.Color(0, 0, 51));
	        jButton5.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
	        jButton5.setForeground(new java.awt.Color(204, 204, 204));
	        jButton5.setText("Quit");
	        jButton5.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(102, 102, 0)));

	        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
	        jPanel6.setLayout(jPanel6Layout);
	        jPanel6Layout.setHorizontalGroup(
	            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(jButton5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );
	        jPanel6Layout.setVerticalGroup(
	            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(jButton5, javax.swing.GroupLayout.DEFAULT_SIZE, 31, Short.MAX_VALUE)
	        );

	        jLabel4.setFont(new java.awt.Font("Segoe UI", 3, 12)); // NOI18N
	        jLabel4.setForeground(new java.awt.Color(204, 204, 204));
	        jLabel4.setText("     Author : Nguyen Van Tuong Duy");

	        javax.swing.GroupLayout kGradientPanel1Layout = new javax.swing.GroupLayout(kGradientPanel1);
	        kGradientPanel1.setLayout(kGradientPanel1Layout);
	        kGradientPanel1Layout.setHorizontalGroup(
	            kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addGap(17, 17, 17)
	                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 408, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                    .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 31, Short.MAX_VALUE)
	                        .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	                            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, kGradientPanel1Layout.createSequentialGroup()
	                                .addGroup(kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
	                                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                                    .addComponent(jPanel6, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
	                                .addGap(103, 103, 103)))
	                        .addGap(25, 25, 25))
	                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, kGradientPanel1Layout.createSequentialGroup()
	                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 204, javax.swing.GroupLayout.PREFERRED_SIZE)
	                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
	        );
	        kGradientPanel1Layout.setVerticalGroup(
	            kGradientPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addContainerGap()
	                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 395, Short.MAX_VALUE)
	                .addGap(14, 14, 14))
	            .addGroup(kGradientPanel1Layout.createSequentialGroup()
	                .addGap(46, 46, 46)
	                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(30, 30, 30)
	                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(29, 29, 29)
	                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addGap(30, 30, 30)
	                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	                .addComponent(jLabel4)
	                .addGap(25, 25, 25))
	        );

	        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
	        getContentPane().setLayout(layout);
	        layout.setHorizontalGroup(
	            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(kGradientPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
	        );
	        layout.setVerticalGroup(
	            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
	            .addComponent(kGradientPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
	        );

	      
	       
        pack();
        setSize(850, 500);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setLocationRelativeTo(null);
		setVisible(true);
		addAction();
    }// </editor-fold>    
		

	public static void main(String[] args) {
		 
		
		new ViewBatDau();
	}
	private void addAction() {
		jButton2.addActionListener(this);
	}



	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == jButton2) {
			DangNhap view  = new DangNhap();
			view.setVisible(true);
			view.setLocationRelativeTo(null);
//			this.setVisible(false);
			
		
		}
		
	}
}
