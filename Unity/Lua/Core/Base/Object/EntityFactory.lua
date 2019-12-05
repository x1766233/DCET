-- Generated by CSharp.lua Compiler
local System = System
local DCETModel = DCET.Model
local DCETHotfix
System.import(function (out)
  DCETHotfix = DCET.Hotfix
end)
System.namespace("DCET.Hotfix", function (namespace)
  namespace.class("EntityFactory", function (namespace)
    local CreateWithParent, CreateWithParent1, CreateWithParent2, CreateWithParent3, CreateWithParent4, CreateWithParent5, Create, Create1, 
    Create2, Create3, Create4, CreateWithId, CreateWithId1, CreateWithId2, CreateWithId3, CreateScene
    CreateWithParent = function (type, parent)
      local component = DCETHotfix.Game.getObjectPool():Fetch(type)
      component:setDomain(parent:getDomain())
      component.Id = component.InstanceId
      component:setParent(parent)

      DCETHotfix.Game.getEventSystem():Awake(component)
      return component
    end
    CreateWithParent1 = function (parent, T)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(parent:getDomain())
      component.Id = component.InstanceId
      component:setParent(parent)

      DCETHotfix.Game.getEventSystem():Awake(component)
      return component
    end
    CreateWithParent2 = function (parent, a, T, A)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(parent:getDomain())
      component.Id = component.InstanceId
      component:setParent(parent)

      DCETHotfix.Game.getEventSystem():Awake1(component, a, A)
      return component
    end
    CreateWithParent3 = function (parent, a, b, T, A, B)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(parent:getDomain())
      component.Id = component.InstanceId
      component:setParent(parent)

      DCETHotfix.Game.getEventSystem():Awake2(component, a, b, A, B)
      return component
    end
    CreateWithParent4 = function (parent, a, b, c, fromPool, T, A, B, C)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(parent:getDomain())
      component.Id = component.InstanceId
      component:setParent(parent)

      DCETHotfix.Game.getEventSystem():Awake3(component, a, b, c, A, B, C)
      return component
    end
    CreateWithParent5 = function (parent, a, b, c, d, fromPool, T, A, B, C, D)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(parent:getDomain())
      component.Id = component.InstanceId
      component:setParent(parent)

      DCETHotfix.Game.getEventSystem():Awake4(component, a, b, c, d, A, B, C, D)
      return component
    end
    Create = function (domain, type)
      local component = DCETHotfix.Game.getObjectPool():Fetch(type)
      component:setDomain(domain or component)
      component.Id = component.InstanceId

      DCETHotfix.Game.getEventSystem():Awake(component)
      return component
    end
    Create1 = function (domain, T)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = component.InstanceId
      DCETHotfix.Game.getEventSystem():Awake(component)
      return component
    end
    Create2 = function (domain, a, T, A)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = component.InstanceId
      DCETHotfix.Game.getEventSystem():Awake1(component, a, A)
      return component
    end
    Create3 = function (domain, a, b, T, A, B)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = component.InstanceId
      DCETHotfix.Game.getEventSystem():Awake2(component, a, b, A, B)
      return component
    end
    Create4 = function (domain, a, b, c, T, A, B, C)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = component.InstanceId
      DCETHotfix.Game.getEventSystem():Awake3(component, a, b, c, A, B, C)
      return component
    end
    CreateWithId = function (domain, id, T)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = id
      DCETHotfix.Game.getEventSystem():Awake(component)
      return component
    end
    CreateWithId1 = function (domain, id, a, T, A)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = id
      DCETHotfix.Game.getEventSystem():Awake1(component, a, A)
      return component
    end
    CreateWithId2 = function (domain, id, a, b, T, A, B)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = id
      DCETHotfix.Game.getEventSystem():Awake2(component, a, b, A, B)
      return component
    end
    CreateWithId3 = function (domain, id, a, b, c, T, A, B, C)
      local type = System.typeof(T)

      local component = System.cast(T, DCETHotfix.Game.getObjectPool():Fetch(type))
      component:setDomain(domain or component)
      component.Id = id
      DCETHotfix.Game.getEventSystem():Awake3(component, a, b, c, A, B, C)
      return component
    end
    CreateScene = function (sceneType, name, parent, id)
      local scene = System.cast(DCETHotfix.Scene, DCETHotfix.Game.getObjectPool():Fetch(System.typeof(DCETHotfix.Scene)))
      scene.Id = (id ~= 0) and id or DCETModel.IdGenerater.GenerateId()
      scene.Name = name
      scene.SceneType = sceneType
      if parent ~= nil then
        scene:setParent1(parent)
      end
      scene:setDomain1(scene)
      return scene
    end
    return {
      CreateWithParent = CreateWithParent,
      CreateWithParent1 = CreateWithParent1,
      CreateWithParent2 = CreateWithParent2,
      CreateWithParent3 = CreateWithParent3,
      CreateWithParent4 = CreateWithParent4,
      CreateWithParent5 = CreateWithParent5,
      Create = Create,
      Create1 = Create1,
      Create2 = Create2,
      Create3 = Create3,
      Create4 = Create4,
      CreateWithId = CreateWithId,
      CreateWithId1 = CreateWithId1,
      CreateWithId2 = CreateWithId2,
      CreateWithId3 = CreateWithId3,
      CreateScene = CreateScene
    }
  end)
end)