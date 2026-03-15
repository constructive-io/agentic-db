-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/entity_id/alterations/alt0000001403
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


ALTER TABLE agent_db_app_public.expenses 
  ALTER COLUMN entity_id SET NOT NULL;

