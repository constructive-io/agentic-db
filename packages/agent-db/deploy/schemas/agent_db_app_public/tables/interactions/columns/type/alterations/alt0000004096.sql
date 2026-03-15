-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/type/alterations/alt0000004096
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/type/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000004095


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN type SET NOT NULL;

