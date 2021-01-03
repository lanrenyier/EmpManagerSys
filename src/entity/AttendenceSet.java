package entity;

//设定出勤扣款金额
public class AttendenceSet {
	private String id;
	private double lateCome; // 迟到罚款
	private double earlyLeave; // 早退罚款
	private double leave; // 请假罚款
	private double overtime;
	private double negletwork;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getLateCome() {
		return lateCome;
	}

	public void setLateCome(double lateCome) {
		this.lateCome = lateCome;
	}

	public double getEarlyLeave() {
		return earlyLeave;
	}

	public void setEarlyLeave(double earlyLeave) {
		this.earlyLeave = earlyLeave;
	}

	public double getLeave() {
		return leave;
	}

	public void setLeave(double leave) {
		this.leave = leave;
	}

	public double getOvertime() {
		return overtime;
	}

	public void setOvertime(double overtime) {
		this.overtime = overtime;
	}

	public double getNegletwork() {
		return negletwork;
	}

	public void setNegletwork(double negletwork) {
		this.negletwork = negletwork;
	}

}
