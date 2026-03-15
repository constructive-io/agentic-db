-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/updated_at/alterations/alt0000003623


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


