package com.ukefu.webim.service.es;

import java.util.List;

import org.elasticsearch.index.query.BoolQueryBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ukefu.webim.web.model.WorkOrders;

public interface WorkOrdersEsCommonRepository {
	
	public Page<WorkOrders> findByCreater(BoolQueryBuilder boolQueryBuilder , boolean haschild , boolean includeDeleteData  ,String q , String creater , Pageable page) ;
	
	public List<WorkOrders> findByContactsAndOrgi(String contactsid , String creater , String orgi) ;
	
	public Page<WorkOrders> countById(BoolQueryBuilder boolQueryBuilder , String field,boolean includeDeleteData , String q, int p,int ps, Pageable page);
	
	public Page<WorkOrders> findById(BoolQueryBuilder boolQueryBuilder , boolean datastatus , String orgi, Pageable page);
	
	public WorkOrders findByIdAndOrgi(String id , String orgi) ;
	
	public List<WorkOrders> findByTemplateidAndQualitystatus(String templateid,String qualitystatus) ;
	
	public List<WorkOrders> findByOrgiAndQualitydistypeAndQualitydisuser(String orgi,String qualitydistype, String qualitydisuser) ;
	
	public List<WorkOrders> findByOrgiAndQualitydisorgan(BoolQueryBuilder boolQueryBuilder) ;
	
	public List<WorkOrders> findByOrgiAndQualitydisuser(String orgi , String qualitydisuser) ;
	
	public List<WorkOrders> findByOrgiAndQualitystatusAndQualitydisuser(String orgi ,String qualitystatus, String qualitydisuser) ;
	
	public List<WorkOrders> findByOrgiAndQualityuserAndQualitypass(String orgi ,String qualityuser, boolean qualitypass) ;
}
