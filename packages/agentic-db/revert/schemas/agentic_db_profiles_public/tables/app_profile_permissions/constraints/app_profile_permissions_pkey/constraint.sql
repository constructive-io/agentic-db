-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_permissions/constraints/app_profile_permissions_pkey/constraint


ALTER TABLE "agentic_db_profiles_public".app_profile_permissions 
  DROP CONSTRAINT app_profile_permissions_pkey;


