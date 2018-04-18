// object-subrequest.as
// Source for generating test SWF object for the object-subrequest testcase page.

// Compile with SWFTools as3compile:
// as3compile -X 250 -Y 250 object-subrequest.as

package
{
    import flash.display.MovieClip

    public class Main extends MovieClip
    {
        function Main()
        {
            this.graphics.beginFill(0xcc0000)
            this.graphics.drawRect(0,0, 250,250);
            this.graphics.endFill()
            
            // Do network request.
        }      
    }
}