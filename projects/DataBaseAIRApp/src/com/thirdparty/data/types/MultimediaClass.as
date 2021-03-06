package com.thirdparty.data.types
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class MultimediaClass
	{
		public var name:String;
		public var TextsArray:ArrayCollection;
		public var ImagesArray:ArrayCollection;
		public var VideosArray:ArrayCollection;
		public var SongsArray:ArrayCollection;
		public function MultimediaClass()
		{
			TextsArray= new ArrayCollection;
			ImagesArray= new ArrayCollection;
			VideosArray= new ArrayCollection;
			SongsArray= new ArrayCollection;
		}
		public function DeriveMediaFromObject(MyObtainedObject:Object):void
		{
			name=MyObtainedObject.name;
			TextsArray=MyObtainedObject.TextsArray as ArrayCollection;
			ImagesArray=MyObtainedObject.ImagesArray as ArrayCollection;
			VideosArray=MyObtainedObject.VideosArray as ArrayCollection;
			SongsArray=MyObtainedObject.SongsArray as ArrayCollection;
		}
		public function clear():void
		{
			TextsArray.removeAll();
			ImagesArray.removeAll();
			VideosArray.removeAll();
			SongsArray.removeAll();
		}
	}
}