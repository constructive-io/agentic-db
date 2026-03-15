-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/id/alterations/alt0000000949
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/id/column
-- requires: schemas/agent_db_app_public/tables/attachments/columns/attachable_id/column



ALTER TABLE agent_db_app_public.contact_links 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

