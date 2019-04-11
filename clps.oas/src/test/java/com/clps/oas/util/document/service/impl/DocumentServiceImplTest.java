/**    
 * @Title: DocumentServiceImplTest.java  
 * @Package com.clps.oas.util.document.service.impl  
 * @Description: test
 * @author weigion.wu(吴跟强)    
 * @date  2018-05-28 16:41:31
 * @version V1.0    
 */
package com.clps.oas.util.document.service.impl;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.clps.oas.util.document.dao.DocumentMapper;
import com.clps.oas.util.document.pojo.Document;
import com.clps.oas.util.spring.SpringTestBase;

/**  
 * @ClassName: DocumentServiceImplTest  
 * @Description: test
 * @author weigion.wu
 * @date  2018-05-28 16:41:31  
 */
public class DocumentServiceImplTest extends SpringTestBase{
	
	@Autowired
	private DocumentMapper documentMapper;
	private Logger logger = Logger.getLogger(DocumentServiceImplTest.class);

	/**  
	 * @Title: setUp  
	 * @param @throws java.lang.Exception 
	 * @return void 
	 * @throws  
	 */
	@Before
	public void setUp() throws Exception {
	}

	/**  
	 * @Title: tearDown  
	 * @param @throws java.lang.Exception  
	 * @return void  
	 * @throws  
	 */
	@After
	public void tearDown() throws Exception {
	}

	/**
	 * Test method for 新增文件信息
	 */
	@Test
	public void testAddDocument() {
		/*Document document = new Document("weigion2","1.jpg","ww",new Timestamp(new Date().getTime()),1,new Timestamp(new Date().getTime()),2,true);*/
		/*logger.info(documentMapper.addDocument(document));*/
	}

	/**
	 * Test method for 通过标题模糊查询
	 */
	@Test
	public void testQueryDocumentLikeTitle() {
		List<Document> documents = null;
		Document document = new Document();
		//设置模糊查询参数
		String patternTitle = "23";
		document.setDocumentTitle(patternTitle);
		documents = documentMapper.queryDocumentLikeTitle(document);
		
		Iterator<Document> its = documents.iterator();
		while(its.hasNext()){
			logger.info(its.next());
		}
	
	}
	
	/**
	 * Test method for 查询所有
	 */
	@Test
	public void testQueryAllDocuments() {
		logger.info(documentMapper.queryAllDocuments());
	}
	
	/**
	 * Test method for 通过id查询文件
	 */
	@Test
	public void testQueryDocumentById() {
		logger.info(documentMapper.queryDocumentById(1));
	}
	
	/**
	 * Test method for 更新文件
	 */
	@Test
	public void testUpdateDocument() {
		/*Document document = new Document(1,"weigion","1.jpg","ww",new Timestamp(new Date().getTime()),1,new Timestamp(new Date().getTime()),2,true);
		logger.info(documentMapper.updateDocument(document));*/
	}
	/**
	 * Test method for 逻辑删除
	 */
	@Test
	public void testDeleteDocumentById() {
		logger.info(documentMapper.deleteDocumentById(2));
	}

}
