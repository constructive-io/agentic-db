-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_default/alterations/alt0000001301


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN is_default DROP NOT NULL;


