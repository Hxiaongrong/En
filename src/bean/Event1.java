package bean;

public class Event1 {
	private int gxid;//��ϵid
	private String gxmc;//��ϵ����
	private int id;//����id
	private String mc;//��������
	private String fromInTo;//���ҷ����from�����ڵ��ڲ����
	private int toInFrom;//from���ҷ����to�����ڵ��ڲ����
	
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
