{
  "$GMObject":"",
  "%Name":"obj_fireball",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":true,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_fireball",
  "overriddenProperties":[],
  "parent":{
    "name":"Item",
    "path":"folders/Objects/Item.yy",
  },
  "parentObjectId":{
    "name":"obj_shadow_clearer",
    "path":"objects/obj_shadow_clearer/obj_shadow_clearer.yy",
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
    {"$GMObjectProperty":"v1","%Name":"duration_frames","filters":[],"listItems":[],"multiselect":false,"name":"duration_frames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"explosion_damage","filters":[],"listItems":[],"multiselect":false,"name":"explosion_damage","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"9","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"diameter_pixels","filters":[],"listItems":[],"multiselect":false,"name":"diameter_pixels","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"64","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"is_damaging","filters":[],"listItems":[],"multiselect":false,"name":"is_damaging","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_fireball",
    "path":"sprites/spr_fireball/spr_fireball.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}