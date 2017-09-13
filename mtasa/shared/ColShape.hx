package mtasa.shared;

/**
The collision shape class represents invisible collision detection shapes that can be created in the GTA world. Collision shapes are typically used to detect physical entities moving through them and perform actions when they do.

@see https://wiki.multitheftauto.com/wiki/Element/Collision_shape
**/
@:native("ColShape")
extern class ColShape{
    /**
    This function creates a collision circle. This is a shape that has a position and a radius and infinite height that you can use to detect a player's presence. Events will be triggered when a player enters or leaves it.
    **/
    public static function Circle(fX:Float, fY:Float, radius:Float):ColShape;

    /**
    This function creates a collision cuboid. This is a shape that has a position, width, depth and height. See Wikipedia for a definition of a cuboid. The XYZ of the col starts at the southwest bottom corner of the shape.
    **/
    public static function Cuboid(fX:Float, fY:Float, fZ:Float, fWidth:Float, fDepth:Float, fHeight:Float):ColShape;
    
    /**
    This function creates a collision rectangle. This is a shape that has a position and a width and a depth. See Rectangle for a definition of a rectangle. XY marks on the south west corner of the colshape.
    **/
    public static function Rectangle(fX:Float, fY:Float, fWidth:Float, fHeight:Float):ColShape;
    
    /**
    This function creates a collision sphere. This is a shape that has a position and a radius. See Wikipedia for a definition of a sphere.
    **/
    public static function Sphere(fX:Float, fY:Float, fZ:Float, fRadius:Float):ColShape;
    
    /**
    This function creates a collision tube. This is a shape that has a position and a 2D (X/Y) radius and a height. See Cylinder for a definition of a tube. A tube is similar to a colcircle, except that it has a limited height, this means you can limit the distance above the position defined by (fX, fY, fZ) that the collision is detected.
    **/
    public static function Tube(fX:Float, fY:Float, fZ:Float, fRadius:Float, fHeight:Float):ColShape;
    
    /**
    This function creates a collision polygon. See Wikipedia for a definition of a polygon. The first set of X Y of this shape is not part of the colshape bounds, so can set anywhere in the game world, however for performance, place it as close to the centre of the polygon as you can. It should be noted this shape is 2D. There should be at least 3 bound points set.
    **/
    public static function Polygon(fX:Float, fY:Float, fX1:Float, fY1:Float, fX2:Float, fY2:Float, fX3:Float, fY3:Float, rest:haxe.extern.Rest<Float>):ColShape;
}
