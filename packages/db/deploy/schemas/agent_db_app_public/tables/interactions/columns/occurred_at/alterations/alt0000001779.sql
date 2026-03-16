-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/occurred_at/alterations/alt0000001779
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/occurred_at/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/type/alterations/alt0000001778


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN occurred_at SET NOT NULL;

