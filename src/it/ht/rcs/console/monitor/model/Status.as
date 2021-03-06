package it.ht.rcs.console.monitor.model
{
  import com.adobe.fiber.core.model_internal;
  
  public class Status extends _Super_Status
  {
    
    public function Status(data:Object=null)
    {
      if (data) {
        _id = data._id;
        address = data.address;
        cpu = data.cpu;
        disk = data.disk;
        info = data.info;
        name = data.name;
        pcpu = data.pcpu;
        status = data.status;
        time = data.time;
        type = data.type;
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
    public static function _initRemoteClassAlias():void
    {
      _Super_Status.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.monitor.model.Status);
      _Super_Status.model_internal::initRemoteClassAliasAllRelated();
    }
    
    model_internal static function initRemoteClassAliasSingleChild():void
    {
      _Super_Status.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.monitor.model.Status);
    }
    {
      _Super_Status.model_internal::initRemoteClassAliasSingle(it.ht.rcs.console.monitor.model.Status);
    }
    /**
     * END OF DO NOT MODIFY SECTION
     **/
  }

}