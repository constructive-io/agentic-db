-- Deploy: schemas/agent_db_app_public/tables/files/columns/entity_id/alterations/alt0000002165
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN entity_id SET NOT NULL;

