package bean;

public class Event2 {
	private String bfqyid;//本方企业id
	private String dfqyid;//对方企业id
	private String relationType;//关系类型
	private String bfposition;//本方在关系中所处的位置
	private String dfbh;//分配给对方的内部编号
	public Event2(){
		
	}
	public Event2(String bfqyid,String dfqyid,String relationType,String bfposition,String dfbh){
		this.bfqyid=bfqyid;
		this.dfqyid=dfqyid;
		this.relationType=relationType;
		this.bfposition=bfposition;
		this.dfbh=dfbh;
	}
	
	public String getBfqyid() {
		return bfqyid;
	}
	public void setBfqyid(String bfqyid) {
		this.bfqyid = bfqyid;
	}
	public String getDfqyid() {
		return dfqyid;
	}
	public void setDfqyid(String dfqyid) {
		this.dfqyid = dfqyid;
	}
	public String getRelationType() {
		return relationType;
	}
	public void setRelationType(String relationType) {
		this.relationType = relationType;
	}
	public String getBfposition() {
		return bfposition;
	}
	public void setBfposition(String bfposition) {
		this.bfposition = bfposition;
	}
	public String getDfbh() {
		return dfbh;
	}
	public void setDfbh(String dfbh) {
		this.dfbh = dfbh;
	}
}
