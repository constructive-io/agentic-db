-- Revert: schemas/agentic_db_profiles_public/tables/org_profile_permissions/columns/updated_at/column


ALTER TABLE "agentic_db_profiles_public".org_profile_permissions 
  DROP COLUMN updated_at RESTRICT;


