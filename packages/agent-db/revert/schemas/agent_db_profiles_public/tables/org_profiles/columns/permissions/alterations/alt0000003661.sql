-- Revert: schemas/agent_db_profiles_public/tables/org_profiles/columns/permissions/alterations/alt0000003661


ALTER TABLE "agent_db_profiles_public".org_profiles 
  ALTER COLUMN permissions DROP NOT NULL;


