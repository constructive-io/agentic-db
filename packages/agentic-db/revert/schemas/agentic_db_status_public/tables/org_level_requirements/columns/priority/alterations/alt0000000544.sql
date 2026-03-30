-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/priority/alterations/alt0000000544


ALTER TABLE "agentic_db_status_public".org_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


