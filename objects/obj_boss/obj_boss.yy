{
  "$GMObject":"",
  "%Name":"obj_boss",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_lingering_light","path":"objects/obj_lingering_light/obj_lingering_light.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":true,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":73,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_boss",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"kb_multiplier","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"enemy_health","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"move_speed","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"2",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"sanity_damage_per_frame","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0.5",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"item_drop_chance","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
  ],
  "parent":{
    "name":"Enemies",
    "path":"folders/Objects/Enemies.yy",
  },
  "parentObjectId":{
    "name":"obj_enemy",
    "path":"objects/obj_enemy/obj_enemy.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"boss_max_health","filters":[],"listItems":[],"multiselect":false,"name":"boss_max_health","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"288","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"in_phase_2","filters":[],"listItems":[],"multiselect":false,"name":"in_phase_2","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_boss",
    "path":"sprites/spr_boss/spr_boss.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}