-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/entity_id/column


ALTER TABLE "agentic_db_profiles_public".org_profile_grants 
  DROP COLUMN entity_id RESTRICT;


