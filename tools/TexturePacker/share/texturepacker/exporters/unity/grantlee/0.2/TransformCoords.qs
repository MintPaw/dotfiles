textureHeight=1;

var SetTextureHeight = function(input)
{
    textureHeight = input;
    return "";
};
SetTextureHeight.filterName = "setTextureHeight";
Library.addFilter("SetTextureHeight");


var EscapeSpecialChars = function(name)
{
    name = name.rawString();
    return name.replace(/%/g, "%25")
               .replace(/#/g, "%23")
               .replace(/:/g, "%3A")
               .replace(/;/g, "%3B")
};
EscapeSpecialChars.filterName = "EscapeSpecialChars";
Library.addFilter("EscapeSpecialChars");


var MirroredFrameRectY = function(sprite)
{
    return "" + (textureHeight - sprite.frameRect.y - sprite.frameRect.height);
};
MirroredFrameRectY.filterName = "MirroredFrameRectY";
Library.addFilter("MirroredFrameRectY");


var TrimmedPivotX = function(sprite)
{
    var ppX;
    if(sprite.untrimmedSize.width === 0)
    {
        ppX = 0;
    }
    else if (sprite.trimmed)
    {
        ppX = (sprite.pivotPoint.x - sprite.sourceRect.x) / sprite.frameRectWithoutRotation.width;
    }
    else // crop, none
    {
        ppX = (sprite.pivotPoint.x - sprite.sourceRect.x) / sprite.untrimmedSize.width;
    }
    return "" + ppX;
};
TrimmedPivotX.filterName = "TrimmedPivotX";
Library.addFilter("TrimmedPivotX");

var TrimmedMirroredPivotY = function(sprite)
{
    var ppY;
    if(sprite.untrimmedSize.height === 0)
    {
        ppY = 0;
    }
    else if (sprite.trimmed)
    {
        ppY = (sprite.pivotPoint.y  - sprite.sourceRect.y) / sprite.frameRectWithoutRotation.height;
    }
    else // crop, none
    {
        ppY = (sprite.pivotPoint.y  - sprite.sourceRect.y) / sprite.untrimmedSize.height;
    }
    return "" + (1 - ppY);
};
TrimmedMirroredPivotY.filterName = "TrimmedMirroredPivotY";
Library.addFilter("TrimmedMirroredPivotY");


var PrintVertices = function(sprite)
{
    if (sprite.vertices.length == 0)
    {
        return "";
    }
    var height = sprite.frameRect.height
    var str = ''
    var vertices = sprite.vertices
    var sourceRect = sprite.sourceRect
    str += "; " + vertices.length
    for (var i = 0; i < vertices.length; i++)
    {
        str += ";" + (vertices[i].x - sourceRect.x) +
               ";" + (height - vertices[i].y + sourceRect.y)
    }
    var triangleIndices = sprite.triangleIndices
    str += "; " + triangleIndices.length / 3;
    for (i = 0; i < triangleIndices.length; i++)
    {
        str += ";" + triangleIndices[i]
    }
    return str
};
PrintVertices.filterName = "PrintVertices";
Library.addFilter("PrintVertices");

