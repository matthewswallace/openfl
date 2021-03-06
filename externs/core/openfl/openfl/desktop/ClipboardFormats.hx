package openfl.desktop; #if (display || !flash)


@:enum abstract ClipboardFormats(Null<Int>) {
	
	public var HTML_FORMAT = 0;
	public var RICH_TEXT_FORMAT = 1;
	public var TEXT_FORMAT = 2;
	
	@:from private static function fromString (value:String):ClipboardFormats {
		
		return switch (value) {
			
			case "air:html": HTML_FORMAT;
			case "air:rtf": RICH_TEXT_FORMAT;
			case "air:text": TEXT_FORMAT;
			default: null;
			
		}
		
	}
	
	@:to private static function toString (value:Int):String {
		
		return switch (value) {
			
			case ClipboardFormats.HTML_FORMAT: "air:html";
			case ClipboardFormats.RICH_TEXT_FORMAT: "air:rtf";
			case ClipboardFormats.TEXT_FORMAT: "air:text";
			default: null;
			
		}
		
	}
	
}


#else
typedef ClipboardFormats = flash.desktop.ClipboardFormats;
#end