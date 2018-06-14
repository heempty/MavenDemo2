package bean;

public class sequence {

	private String tableName;
	private Integer seq;
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	@Override
	public String toString() {
		return "sequence [tableName=" + tableName + ", seq=" + seq + "]";
	}
	
}
