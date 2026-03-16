-- Deploy: schemas/agent_db_app_public/tables/tags/columns/entity_id/alterations/alt0000001783
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE "agent_db_app_public".tags 
  ALTER COLUMN entity_id SET NOT NULL;

