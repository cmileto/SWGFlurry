/*
 * LuaObjectMenuComponent.cpp
 *
 *  Created on: 29/01/2012
 *      Author: Elvaron
 */

#include "LuaObjectMenuComponent.h"

#include "server/zone/managers/director/DirectorManager.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"

LuaObjectMenuComponent::LuaObjectMenuComponent(const String& className) : luaClassName(className) {
}

LuaObjectMenuComponent::~LuaObjectMenuComponent(){
}

void LuaObjectMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	if (sceneObject == nullptr)
		return;

	Lua* lua = DirectorManager::instance()->getLuaInstance();

	LuaFunction runMethod(lua->getLuaState(), luaClassName, "fillObjectMenuResponse", 0);
	runMethod << sceneObject;
	runMethod << menuResponse;
	runMethod << player;

	runMethod.callFunction();
}


int LuaObjectMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (sceneObject == nullptr)
		return 0;

	Lua* lua = DirectorManager::instance()->getLuaInstance();

	LuaFunction runMethod(lua->getLuaState(), luaClassName, "handleObjectMenuSelect", 1);
	runMethod << sceneObject;
	runMethod << player;
	runMethod << selectedID;

	runMethod.callFunction();

	int result = lua_tonumber(lua->getLuaState(), -1);

	lua_pop(lua->getLuaState(), 1);

	return result;
}
