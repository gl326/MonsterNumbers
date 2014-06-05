///draw_dotted_line(x1,y1,x2,y2,thick,dash length)
var x1=argument0,y1=argument1,x2=argument2,y2=argument3,thick=argument4,dash=argument5;
var dist = point_distance(x1,y1,x2,y2), dir = point_direction(x1,y1,x2,y2), dashes = ceil(dist/(dash*1.5));

for (var i=0;i<dashes;i+=1){
draw_line_width(x1+lengthdir_x(dist*i/dashes,dir),y1+lengthdir_y(dist*i/dashes,dir),
    x1+lengthdir_x(min(dist,(dist*i/dashes)+dash),dir),y1+lengthdir_y(min(dist,(dist*i/dashes)+dash),dir),thick);
}
