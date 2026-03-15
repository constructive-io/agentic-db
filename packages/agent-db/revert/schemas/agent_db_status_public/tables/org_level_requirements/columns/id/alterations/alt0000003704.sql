-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/id/alterations/alt0000003704


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN id DROP NOT NULL;


