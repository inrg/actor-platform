//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/SearchModule.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/SearchModule.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/engine/ListEngine.h"
#include "im/actor/model/droidkit/engine/ListStorage.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/SearchModule.h"
#include "im/actor/model/modules/search/SearchActor.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"

@interface ImActorModelModulesSearchModule () {
 @public
  id<DKListEngine> searchList_;
  DKActorRef *actorRef_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesSearchModule, searchList_, id<DKListEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesSearchModule, actorRef_, DKActorRef *)

@interface ImActorModelModulesSearchModule_$1 : NSObject < DKActorCreator > {
 @public
  ImActorModelModulesSearchModule *this$0_;
}

- (ImActorModelModulesSearchSearchActor *)create;

- (instancetype)initWithImActorModelModulesSearchModule:(ImActorModelModulesSearchModule *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSearchModule_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSearchModule_$1, this$0_, ImActorModelModulesSearchModule *)

__attribute__((unused)) static void ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(ImActorModelModulesSearchModule_$1 *self, ImActorModelModulesSearchModule *outer$);

__attribute__((unused)) static ImActorModelModulesSearchModule_$1 *new_ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(ImActorModelModulesSearchModule *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSearchModule_$1)


#line 19
@implementation ImActorModelModulesSearchModule


#line 24
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 30
- (void)run {
  actorRef_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesSearchSearchActor_class_(), new_ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(self)) withNSString:
#line 36
  @"actor/search"];
}


#line 39
- (id<DKListEngine>)getSearchList {
  return searchList_;
}

- (void)onDialogsChangedWithJavaUtilList:(id<JavaUtilList>)dialogs {
  [((DKActorRef *) nil_chk(actorRef_)) sendWithId:new_ImActorModelModulesSearchSearchActor_OnDialogsUpdated_initWithJavaUtilList_(dialogs)];
}

- (void)onContactsChangedWithJavaLangIntegerArray:(IOSObjectArray *)contacts {
  IOSIntArray *res = [IOSIntArray newArrayWithLength:((IOSObjectArray *) nil_chk(contacts))->size_];
  for (jint i = 0; i < res->size_; i++) {
    *IOSIntArray_GetRef(res, i) = [((JavaLangInteger *) nil_chk(IOSObjectArray_Get(contacts, i))) intValue];
  }
  [((DKActorRef *) nil_chk(actorRef_)) sendWithId:new_ImActorModelModulesSearchSearchActor_OnContactsUpdated_initWithIntArray_(res)];
}

@end


#line 24
void ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(ImActorModelModulesSearchModule *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  
#line 27
  self->searchList_ = [((id<AMStorageProvider>) nil_chk([self storage])) createSearchListWithDKListStorage:[((id<AMStorageProvider>) nil_chk([self storage])) createListWithName:ImActorModelModulesBaseModule_get_STORAGE_SEARCH_()]];
}


#line 24
ImActorModelModulesSearchModule *new_ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesSearchModule *self = [ImActorModelModulesSearchModule alloc];
  ImActorModelModulesSearchModule_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSearchModule)

@implementation ImActorModelModulesSearchModule_$1


#line 33
- (ImActorModelModulesSearchSearchActor *)create {
  return new_ImActorModelModulesSearchSearchActor_initWithImActorModelModulesModules_([this$0_ modules]);
}

- (instancetype)initWithImActorModelModulesSearchModule:(ImActorModelModulesSearchModule *)outer$ {
  ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(self, outer$);
  return self;
}

@end

void ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(ImActorModelModulesSearchModule_$1 *self, ImActorModelModulesSearchModule *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesSearchModule_$1 *new_ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(ImActorModelModulesSearchModule *outer$) {
  ImActorModelModulesSearchModule_$1 *self = [ImActorModelModulesSearchModule_$1 alloc];
  ImActorModelModulesSearchModule_$1_initWithImActorModelModulesSearchModule_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSearchModule_$1)
