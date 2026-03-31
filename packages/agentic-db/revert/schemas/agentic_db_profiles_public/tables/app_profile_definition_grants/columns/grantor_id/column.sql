-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/grantor_id/column


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  DROP COLUMN grantor_id RESTRICT;


