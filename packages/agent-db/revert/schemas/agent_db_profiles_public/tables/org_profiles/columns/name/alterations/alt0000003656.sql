-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000003656


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN name DROP NOT NULL;


