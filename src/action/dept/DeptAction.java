package action.dept;

import dao.DeptDao;
import util.Factory;

import entity.Dept;

//����action��
public class DeptAction {
	private Dept dept;

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	// ���Ӳ���
	public String add() {
		DeptDao deptDao = (DeptDao) Factory.getInstance("DeptDao");
		try {
			deptDao.save(dept);
			return "list";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	// ��ȡ����
	public String load() {
		DeptDao deptDao = (DeptDao) Factory.getInstance("DeptDao");
		try {
			dept = deptDao.findById(dept.getId());
			return "update";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}

	// ɾ������
	public String delete() {
		DeptDao deptDao = (DeptDao) Factory.getInstance("DeptDao");
		try {
			deptDao.deleteById(dept.getId());
			return "list";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}

	// ���²����б�
	public String update() {
		DeptDao deptDao = (DeptDao) Factory.getInstance("DeptDao");
		try {
			deptDao.update(dept);
			return "list";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "error";
		}
	}

}