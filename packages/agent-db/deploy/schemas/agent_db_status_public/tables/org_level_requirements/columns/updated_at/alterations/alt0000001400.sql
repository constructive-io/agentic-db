-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/updated_at/alterations/alt0000001400
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/updated_at/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN updated_at SET DEFAULT now();

