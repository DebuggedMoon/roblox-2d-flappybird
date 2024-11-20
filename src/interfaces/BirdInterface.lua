
export type Bird = {

	new: () -> BirdInstance;

}

export type BirdInstance = {

	position: Vector2;
	velocity: number;
	element: GuiObject;

	flap: (self: BirdInstance) -> ();
	tick: (self: BirdInstance, delta: number, gravity: number) -> ();
	setPosition: (self: BirdInstance,newPosition: Vector2)  -> ();
	getPosition: (self: BirdInstance) -> Vector2;
	setElevation: (self: BirdInstance, elevation: number) -> ();
	getElevation: (self: BirdInstance) -> number;
	addElevation: (self: BirdInstance, elevation: number) -> ();

}

return {}