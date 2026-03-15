-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/entity_id/alterations/alt0000004090
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/entity_id/column


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN entity_id SET NOT NULL;

