package bean;

public class Event4 {
	private String relationApplyId;
	private String checkAdvice;
	private String bfposition;
	private String status;
	private String dfbh;
	
	public Event4(){
		
	}
	public Event4(String relationApplyId,String checkAdvice,String bfposition,String status,String dfbh){
		this.relationApplyId=relationApplyId;
		this.checkAdvice=checkAdvice;
		this.bfposition=bfposition;
		this.status=status;
		this.dfbh=dfbh;
	}
	public String getRelationApplyId() {
		return relationApplyId;
	}
	public void setRelationApplyId(String relationApplyId) {
		this.relationApplyId = relationApplyId;
	}
	public String getCheckAdvice() {
		return checkAdvice;
	}
	public void setCheckAdvice(String checkAdvice) {
		this.checkAdvice = checkAdvice;
	}
	public String getBfposition() {
		return bfposition;
	}
	public void setBfposition(String bfposition) {
		this.bfposition = bfposition;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDfbh() {
		return dfbh;
	}
	public void setDfbh(String dfbh) {
		this.dfbh = dfbh;
	}
}

