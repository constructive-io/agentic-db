-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/event_type/alterations/alt0000004611
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/event_type/column
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/url/alterations/alt0000004610


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN event_type SET NOT NULL;

