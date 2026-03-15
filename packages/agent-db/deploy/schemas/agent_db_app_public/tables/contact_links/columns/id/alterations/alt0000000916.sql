-- Deploy: schemas/agent_db_app_public/tables/contact_links/columns/id/alterations/alt0000000916
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/contact_links/columns/id/column



ALTER TABLE agent_db_app_public.contact_links 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

