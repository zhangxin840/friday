package test
{
	import com.baidu.app.as3api.APP;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.system.Security;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	[SWF(width="500", height="350", backgroundColor="#ffffff", frameRate="30")]
	public class BaiduAPITest_as3 extends Sprite
	{
		/**
		 * 显示广告 
		 */		
		private var showAdBtn:Sprite;
		
		/**
		 * 提交积分 
		 */		
		private var submitScoreBtn:Sprite;
		
		/**
		 * log显示文本 
		 */		
		private var logText:TextField;
		
		public function BaiduAPITest_as3()
		{
			super();
			
			APP.init(root, "BAIDU_APP_DO_NOT_OPERATE");
			
			initUI(stage.stageWidth, stage.stageHeight);
		}
		
		
		/**
		 *  
		 * 
		 */		
		private function initUI(w:Number, h:Number):void {
			showAdBtn = createBtn("显示广告");
			showAdBtn.x = 5;
			showAdBtn.y = 5;
			addChild(showAdBtn);
			
			submitScoreBtn = createBtn("提交积分");
			submitScoreBtn.x = 5;
			submitScoreBtn.y = showAdBtn.y + showAdBtn.height + 5;
			addChild(submitScoreBtn);
			
			logText = new TextField();
			logText.width = w - showAdBtn.width - 15;
			logText.height = h - 10;
//			logText.width = loaderInfo.content.width - showAdBtn.width - 15;
//			logText.height = loaderInfo.content.height - 10;
			logText.x = showAdBtn.x + showAdBtn.width + 5;
			logText.y = showAdBtn.y;
			logText.border = true;
			logText.borderColor = 0xff9900;
			addChild(logText);
			
			
			showAdBtn.addEventListener(MouseEvent.CLICK, btnClickHandler);
			submitScoreBtn.addEventListener(MouseEvent.CLICK, btnClickHandler);
		}
		
		/**
		 *  
		 * @param event
		 * 
		 */		
		private function btnClickHandler(event:Event):void {
			switch (event.currentTarget) {
				case showAdBtn:
					//展现广告
					APP.Ad.showAd(adCompleteHandler);
					break;
				case submitScoreBtn:
					//提交积分
					APP.Game.submitScore(Math.random() * 1000, submitScoreHandler);
					break;
			}
		}
		
		/**
		 *  
		 * @param label
		 * @return 
		 * 
		 */		
		private function createBtn(value:String):Sprite {
			var btn:Sprite = new Sprite();
			btn.graphics.beginFill(0xff9900, 0.7);
			btn.graphics.drawRoundRect(0, 0, 60, 25, 4, 4);
			btn.graphics.endFill();
			
			var label:TextField = new TextField();
			label.defaultTextFormat = new TextFormat("Arial", 12, 0, false, null, null, null, null, "center");
			label.text = value;
			label.width = btn.width;
			label.height = 22;
			label.x = 0;
			label.y = 3;
			label.mouseEnabled = false;
			btn.addChild(label);
			
			btn.buttonMode = true;
			return btn;
		}
		
		/**
		 * 广告展现完毕后回调
		 *  
		 * @param data
		 * 
		 */		
		private function adCompleteHandler(data:Object = null):void {
			log("广告展现完毕");
		}
		
		/**
		 * 提交积分回调
		 *  
		 * @param data
		 * 
		 */		
		private function submitScoreHandler(data:Object = null):void {
			log("提交积分回调");
		}
		
		
		/**
		 * 输出信息
		 *  
		 * @param values
		 * 
		 */		
		private function log(...values):void {
			if (!values) return;
			
			logText.appendText(values.join(",") + "\r\n");
		}
	}
}