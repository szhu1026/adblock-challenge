// object-subrequest.as
// Source for generating test SWF object for the object-subrequest testcase page.

// Compile with SWFTools as3compile:
// as3compile -X 250 -Y 250 object-subrequest.as

package
{
  import flash.display.MovieClip
  import flash.net.URLRequest
  import flash.net.URLLoader
  import flash.events.*
  import flash.text.TextField

  public class Main extends MovieClip
  {
    private var textoutput:TextField = new TextField();
    private var textoutput2:TextField = new TextField();


    function Main() {
      this.graphics.beginFill(0xcc0000)
      this.graphics.drawRect(0,0, 250,250);
      this.graphics.endFill()

      textoutput.x = 10;
      textoutput.y = 10;
      textoutput.width = 200;
      textoutput.textColor = 0xFFFFFF;
      textoutput.text = "Attempting to load file...";
      this.addChild(textoutput);

      var url:String = this.root.loaderInfo.parameters['targeturl'];

      // Do network request.
      var request:URLRequest = new URLRequest(url);
      var loader:URLLoader = new URLLoader();

      loader.addEventListener("complete", completeHandler);
      loader.addEventListener("ioError", errorHandler);
      loader.addEventListener("securityError", errorHandler);

      loader.load(request);
    }

    private function completeHandler(event:Event):void {
      var loader:URLLoader = URLLoader(event.target);
      textoutput.text = loader.data;
      this.graphics.beginFill(0x00CC00)
      this.graphics.drawRect(0,0, 250,250);
      this.graphics.endFill()
    }

    private function errorHandler(event:Event):void {
      textoutput.text = "Could not load data.";
      this.graphics.beginFill(0x0000CC)
      this.graphics.drawRect(0,0, 250,250);
      this.graphics.endFill()
    }
  }
}
