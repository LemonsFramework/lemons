package lemons.display;

import lemons.display.Object;
import lemons.display.IDrawable;

class Group<T> extends Object implements IDrawable {
	public final members:Array<T> = [];

	public function new() { 
		super(0, 0, 0, 0);
	}

	public function add(newMember:T):T {
		if (members.contains(newMember)) return newMember;

		members.push(newMember);
		return newMember;
	}

	public function insert(newMember:T, index:Int):T {
		if (members.contains(newMember)) return newMember;

		members.insert(index, newMember);
		return newMember;
	}

	public function remove(newMember:T):Bool
		return members.remove(newMember);

	public function draw()
		for (member in members) if (member is IDrawable) cast (member, IDrawable).draw();
}