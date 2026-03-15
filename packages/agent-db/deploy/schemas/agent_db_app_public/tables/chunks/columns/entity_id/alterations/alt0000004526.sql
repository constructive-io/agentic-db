-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/entity_id/alterations/alt0000004526
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column
-- requires: schemas/agent_db_app_public/tables/chunks/columns/entity_id/column


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN entity_id SET NOT NULL;

