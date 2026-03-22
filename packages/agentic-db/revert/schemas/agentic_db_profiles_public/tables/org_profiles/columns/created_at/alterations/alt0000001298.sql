-- Revert: schemas/agentic_db_profiles_public/tables/org_profiles/columns/created_at/alterations/alt0000001298


ALTER TABLE "agentic_db_profiles_public".org_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


