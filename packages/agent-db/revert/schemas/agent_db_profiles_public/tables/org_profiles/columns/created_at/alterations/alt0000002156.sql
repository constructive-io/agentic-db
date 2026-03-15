-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/created_at/alterations/alt0000002156


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN created_at DROP DEFAULT;


