-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/attachable_id/column


ALTER TABLE agent_db_app_public.contact_links 
  ADD COLUMN entity_id uuid;

