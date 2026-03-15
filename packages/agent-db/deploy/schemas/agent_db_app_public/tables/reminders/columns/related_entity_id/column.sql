-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/related_entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/status/alterations/alt0000004662


ALTER TABLE "agent_db_app_public".reminders 
  ADD COLUMN related_entity_id uuid;

