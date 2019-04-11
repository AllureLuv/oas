/**    
 * @Title: DocumentMapperTest.java  
 * @Package com.clps.oas.util.document.dao  
 * @Description:DocumentMapperTest
 * @author weigion.wu(吴跟强)    
 * @date  2018-05-30 10:36:55
 * @version V1.0    
 */
package com.clps.oas.util.document.dao;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.clps.oas.common.ParamCommon;
import com.clps.oas.util.mybatis.MyBatisUtil;

/**  
 * @ClassName: DocumentMapperTest  
 * @Description:DocumentMapperTest
 * @author weigion.wu
 * @date  2018-05-30 10:36:55  
 */
public class DocumentMapperTest {

	private SqlSessionFactory sf = null;
	private SqlSession session = null;
	private DocumentMapper documentMapper = null;
	private Logger logger = Logger.getLogger(DocumentMapperTest.class);
	/**  
	 * @Title: setUp  
	 * @Description:setUp 
	 * @param @throws java.lang.Exception    设定文件  
	 * @return void    返回类型  
	 * @throws  
	 */
	@Before
	public void setUp() throws Exception {
		
		this.sf = MyBatisUtil.getSqlSessionFactory();
		this.session = sf.openSession();
		this.documentMapper = session.getMapper(DocumentMapper.class);
		
	}

	/**  
	 * @Title: tearDown  
	 * @Description: 
	 * @param @throws java.lang.Exception    设定文件  
	 * @return void    返回类型  
	 * @throws  
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	 * Test method for 逻辑删除
	 */
	@Test
	public void testDeleteDocumentById() {
		try {
			int i = this.documentMapper.deleteDocumentById(2);
			if (i > 0) {
				logger.info(ParamCommon.DELETE_SUCCESS);
				session.commit();
			}
		} catch (Exception e) {
			logger.error(ParamCommon.DELETE_FAILURE);
			e.printStackTrace();
			session.rollback();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

}
