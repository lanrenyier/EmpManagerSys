package action.dept;

import dao.DeptDao;
import util.Factory;

import entity.Dept;

//部门action类
public class DeptAction {
	private Dept dept;

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	// 增加部门
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

	// 获取部门
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

	// 删除部门
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

	// 更新部门列表
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
