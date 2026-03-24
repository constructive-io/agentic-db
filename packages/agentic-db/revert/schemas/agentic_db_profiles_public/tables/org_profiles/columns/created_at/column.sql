-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/created_at/column


ALTER TABLE "agentic_db_profiles_public".org_profiles 
  DROP COLUMN created_at RESTRICT;


