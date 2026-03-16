-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/entity_id/alterations/alt0000002200
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/entity_id/column


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ALTER COLUMN entity_id SET NOT NULL;

