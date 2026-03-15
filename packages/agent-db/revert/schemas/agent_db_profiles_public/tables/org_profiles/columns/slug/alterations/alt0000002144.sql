-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/slug/alterations/alt0000002144


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN slug DROP NOT NULL;


