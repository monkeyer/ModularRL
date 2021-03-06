package com.dotdotcommadot.modularrl.modules.moduletwo.view.main
{
	import com.dotdotcommadot.modularrl.shared.controller.signals.AddLogSignal;
	
	import flash.events.MouseEvent;
	
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * @author Hans Van den Keybus
	 * @copyright (c) 2013, dotdotcommadot
	 */
	public class ModuleTwoMainViewMediator extends Mediator
	{
		//--------------------------------------------------------------------------
		//
		// Public Properties
		// 
		//--------------------------------------------------------------------------
		
		[Inject] public var view : ModuleTwoMainView;
		
		[Inject] public var addLogSignal : AddLogSignal;
		
		//--------------------------------------------------------------------------
		//
		// Constructor
		// 
		//--------------------------------------------------------------------------
		
		public function ModuleTwoMainViewMediator()
		{
		}
		
		//--------------------------------------------------------------------------
		//
		// Initialize
		// 
		//--------------------------------------------------------------------------
		
		override public function initialize():void
		{
			// View
			view.addLogButton.addEventListener( MouseEvent.CLICK, onClick_addLogButton );
		}
		
		//--------------------------------------------------------------------------
		//
		// Private Methods
		// 
		//--------------------------------------------------------------------------
		
		private function onClick_addLogButton( event : MouseEvent ) : void
		{
			addLogSignal.dispatch( view.logTextInput.text );
		}
	}
}