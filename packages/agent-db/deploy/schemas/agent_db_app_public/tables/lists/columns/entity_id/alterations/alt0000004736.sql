-- Deploy: schemas/agent_db_app_public/tables/lists/columns/entity_id/alterations/alt0000004736
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/lists/columns/entity_id/column


ALTER TABLE "agent_db_app_public".lists 
  ALTER COLUMN entity_id SET NOT NULL;

