-- Deploy: schemas/agent_db_app_public/tables/events/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/embedding/column


ALTER TABLE agent_db_app_public.events 
  ADD COLUMN entity_id uuid;

