-- Deploy: schemas/agent_db_app_public/tables/interactions/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/updated_at/alterations/alt0000000924


ALTER TABLE agent_db_app_public.interactions 
  ADD COLUMN contact_id uuid;

