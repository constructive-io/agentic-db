-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/id/alterations/alt0000003606


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN id DROP NOT NULL;


