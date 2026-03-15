-- Deploy: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/search_tsv/column


ALTER TABLE agent_db_app_public.contacts 
  ADD COLUMN main_image_id uuid;

