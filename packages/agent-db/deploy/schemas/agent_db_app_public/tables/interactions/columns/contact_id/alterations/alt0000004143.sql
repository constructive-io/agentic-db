-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000004143
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/contact_id/column
-- requires: schemas/agent_db_app_public/tables/interactions/columns/updated_at/alterations/alt0000004142


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN contact_id SET NOT NULL;

