package bean;

public class Event3 {
	private String id;//关系id
	private String gxmc;//关系名称
	private String dfId;//对方企业id
	private String dfMc;//对方企业名称
	private String dfNbbh;//对方企业给本方企业分配的内部编号
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGxmc() {
		return gxmc;
	}
	public void setGxmc(String gxmc) {
		this.gxmc = gxmc;
	}
	public String getDfId() {
		return dfId;
	}
	public void setDfId(String dfId) {
		this.dfId = dfId;
	}
	public String getDfMc() {
		return dfMc;
	}
	public void setDfMc(String dfMc) {
		this.dfMc = dfMc;
	}
	public String getDfNbbh() {
		return dfNbbh;
	}
	public void setDfNbbh(String dfNbbh) {
		this.dfNbbh = dfNbbh;
	}
}
