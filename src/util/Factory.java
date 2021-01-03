package util;

//工厂类，用来返回接口的实例
public class Factory {
	public static Object getInstance(String type) {
		Object obj = null;
		String className = ConfigUtil.getValue(type);
		try {
			obj = Class.forName(className).newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return obj;
	}
}
