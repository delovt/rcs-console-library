/**
 * This is a generated sub-class of _Collector.as and is intended for behavior
 * customization.  This class is only generated when there is no file already present
 * at its target location.  Thus custom behavior that you add here will survive regeneration
 * of the super-class. 
 *
 * NOTE: Do not manually modify the RemoteClass mapping unless
 * your server representation of this class has changed and you've 
 * updated your ActionScriptGeneration,RemoteClass annotation on the
 * corresponding entity 
 **/ 
 
package it.ht.rcs.console.network.model
{

import com.adobe.fiber.core.model_internal;

import it.ht.rcs.console.DB;

public class Collector extends _Super_Collector
{
  
  public static function defaultCollector():Object
  {
    return {
      _id: '',
      address: '',
      desc: '',
      name: DB.i18n.getString('NEW_COLLECTOR'),
        poll: false,
        port: 4444,
        type: 'remote',
        version: '',
        configured: true
    };
  }
  
  public function Collector(data:Object = null)
  {
    if (data) {
      _id = data._id;
      address = data.address;
      desc = data.desc;
      name = data.name;
      poll = data.poll;
      port = data.port;
      type = data.type;
      version = data.version;
      next = data.next;
      prev = data.prev;
    }
  }
  
  /** 
   * DO NOT MODIFY THIS STATIC INITIALIZER - IT IS NECESSARY
   * FOR PROPERLY SETTING UP THE REMOTE CLASS ALIAS FOR THIS CLASS
   **/
  
  /**
   * Calling this static function will initialize RemoteClass aliases
   * for this value object as well as all of the value objects corresponding
   * to entities associated to this value object's entity.  
   */     
  public static function _initRemoteClassAlias() : void
  {
    _Super_Collector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Collector);
    _Super_Collector.model_internal::initRemoteClassAliasAllRelated();
  }
  
  model_internal static function initRemoteClassAliasSingleChild() : void
  {
    _Super_Collector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Collector);
  }
  
  {
    _Super_Collector.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.network.model.Collector);
  }
  /** 
   * END OF DO NOT MODIFY SECTION
   **/
  
  private var _nextHop:Collector;
  private var _prevHop:Collector;
  
  public function get nextHop():Collector
  {
    return _nextHop;
  }
  
  public function set nextHop(newNextHop:Collector):void
  {
    _nextHop = newNextHop;
  }
  
  public function get prevHop():Collector
  {
    return _prevHop;
  }
  
  public function set prevHop(newPrevHop:Collector):void
  {
    _prevHop = newPrevHop;
  }
  
  public function moveAfter(destination:Collector):void
  {
    if (_prevHop === destination)
      return;
    
    _prevHop._nextHop = _nextHop;
    if (_nextHop != null)
      _nextHop._prevHop = _prevHop;
    
    if (destination._nextHop != null)
      destination._nextHop._prevHop = this;
    _nextHop = destination._nextHop;
    _prevHop = destination;
    destination._nextHop = this;
  }
  
  public function detach():void
  {
    if (_nextHop != null)
      _nextHop._prevHop = _prevHop;
    _prevHop._nextHop = _nextHop;
  }
    
}

}