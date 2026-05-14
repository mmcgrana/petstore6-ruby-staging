# frozen_string_literal: true

module Petstore6
  [Petstore6::Internal::Type::BaseModel, *Petstore6::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Petstore6::Internal::AnyHash) } }
  end

  Petstore6::Internal::Util.walk_namespaces(Petstore6::Models).each do |mod|
    case mod
    in Petstore6::Internal::Type::Enum | Petstore6::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Petstore6::Internal::Util.walk_namespaces(Petstore6::Models)
                           .lazy
                           .grep(Petstore6::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Category = Petstore6::Models::Category

  Order = Petstore6::Models::Order

  Pet = Petstore6::Models::Pet

  PetCreateParams = Petstore6::Models::PetCreateParams

  PetDeleteParams = Petstore6::Models::PetDeleteParams

  PetFindByStatusParams = Petstore6::Models::PetFindByStatusParams

  PetFindByTagsParams = Petstore6::Models::PetFindByTagsParams

  PetRetrieveParams = Petstore6::Models::PetRetrieveParams

  PetUpdateByIDParams = Petstore6::Models::PetUpdateByIDParams

  PetUpdateParams = Petstore6::Models::PetUpdateParams

  PetUploadImageParams = Petstore6::Models::PetUploadImageParams

  Store = Petstore6::Models::Store

  StoreListInventoryParams = Petstore6::Models::StoreListInventoryParams

  Tag = Petstore6::Models::Tag

  User = Petstore6::Models::User

  UserCreateParams = Petstore6::Models::UserCreateParams

  UserCreateWithListParams = Petstore6::Models::UserCreateWithListParams

  UserDeleteParams = Petstore6::Models::UserDeleteParams

  UserLoginParams = Petstore6::Models::UserLoginParams

  UserLogoutParams = Petstore6::Models::UserLogoutParams

  UserRetrieveParams = Petstore6::Models::UserRetrieveParams

  UserUpdateParams = Petstore6::Models::UserUpdateParams
end
