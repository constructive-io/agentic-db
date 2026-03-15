-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_system/alterations/alt0000003616


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN is_system DROP NOT NULL;


