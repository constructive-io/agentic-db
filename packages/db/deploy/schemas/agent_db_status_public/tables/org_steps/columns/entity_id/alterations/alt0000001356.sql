-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/entity_id/alterations/alt0000001356
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/entity_id/column


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN entity_id SET NOT NULL;

