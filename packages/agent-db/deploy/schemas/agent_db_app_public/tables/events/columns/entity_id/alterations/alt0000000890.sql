-- Deploy: schemas/agent_db_app_public/tables/events/columns/entity_id/alterations/alt0000000890
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/events/columns/entity_id/column


ALTER TABLE agent_db_app_public.events 
  ALTER COLUMN entity_id SET NOT NULL;

