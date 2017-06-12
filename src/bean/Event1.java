package bean;

public class Event1 {
	private int gxid;//关系id
	private String gxmc;//关系名称
	private int id;//厂家id
	private String mc;//厂家名称
	private String fromInTo;//厂家分配给from厂家在的内部编号
	private int toInFrom;//from厂家分配给to厂家在的内部编号
	
	//getter and setter
	public int getGxid() {
		return gxid;
	}
	public void setGxid(int gxid) {
		this.gxid = gxid;
	}
	public String getGxmc() {
		return gxmc;
	}
	public void setGxmc(String gxmc) {
		this.gxmc = gxmc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMc() {
		return mc;
	}
	public void setMc(String mc) {
		this.mc = mc;
	}
	public String getFromInTo() {
		return fromInTo;
	}
	public void setFromInTo(String fromInTo) {
		this.fromInTo = fromInTo;
	}
	public int getToInFrom() {
		return toInFrom;
	}
	public void setToInFrom(int toInFrom) {
		this.toInFrom = toInFrom;
	}
}
